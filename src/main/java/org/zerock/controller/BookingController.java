package org.zerock.controller;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;
import org.zerock.service.BookingService;
import org.zerock.service.CardRequest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BookingController {

	@Autowired
	private BookingService bookService;
	
	@GetMapping("/book.do")
	public String showBooking(HttpServletRequest request, BookingVO booking, Model model) {
		String userId = (String) request.getSession(false).getAttribute("userId"); 
		if (userId != null); // 로그인 여부 확인 
		else
			return "redirect:/login.do"; 

		int daysBetween = checkDaysBetween(booking.getCheckinDate(), booking.getCheckoutDate());// 날짜 수 계산
		if(daysBetween <= 0) {
			return "redirect:/book.do"; // 날짜 입력 오류
		}
        booking.setTotalPrice(daysBetween * booking.getPrice()); // 총 가격

        model.addAttribute("userId", userId);
        model.addAttribute("booking", booking);
		return "booking";
	}
	
	@PostMapping("/book.do")
	public String BookStay(HttpServletRequest request, BookingVO booking, CardRequest cardRequest) {
		String userId = (String) request.getSession(false).getAttribute("userId");
		CardVO card = bookService.getUserCard(userId); // 카드정보 불러오기
		
		if(!checkCardRequest(cardRequest, card))
			return "redirect:/book.do"; // 입력 값 오류
		if(card.getBalance() < booking.getTotalPrice()) {
			return "redirect:/book.do"; // 잔고 부족
		}
		bookService.payTotalPrice(card, booking.getTotalPrice()); // 잔고 수정
		bookService.bookStay(booking); // 숙소 예약
		bookService.addPayment(card); // 결제 내역 추가
		
		return "예약현황";
	}
	
	private Integer checkDaysBetween(String date1, String date2) {
		int daysBetween = 0;
		LocalDate localDate1 =  LocalDate.parse(date1);
        LocalDate localDate2 = LocalDate.parse(date2);
        daysBetween = (int) ChronoUnit.DAYS.between(localDate1, localDate2);
		return daysBetween;
	}
	
	private Boolean checkCardRequest(CardRequest cardRequest, CardVO card) {
		if(cardRequest.getConfirmPass() == null || !cardRequest.getConfirmPass().equals(card.getCardPass())) 
			return false; // 비밀번호가 올바르지 않음
		if(cardRequest.getBank() == null || !cardRequest.getBank().equals(card.getBank()))
			return false; // 은행사가 일치하지 않음
		if(cardRequest.getCardNum() == 0 || !(cardRequest.getCardNum() == (card.getCardNum())))
			return false;
		
		return true;
	}
}
