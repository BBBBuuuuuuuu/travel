package org.zerock.controller;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;
import org.zerock.service.BookingService;
import org.zerock.service.CardRequest;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class BookingController {

	@Autowired
	private BookingService bookService;
	
	@GetMapping("/book.do")
	public String showBooking(HttpServletRequest request, BookingVO booking, String boardName, Model model) {
		String userId = (String) request.getSession(false).getAttribute("userId"); 
		if (userId != null); // 로그인 여부 확인 
		else
			return "redirect:/login.do"; 

		log.info("===============book.do " + booking.getStart_date()); 
		Long daysBetween = checkDaysBetween(booking.getStart_date(), booking.getEnd_date());// 날짜 수 계산
		if(daysBetween <= 0) {
			return "redirect:/book.do"; // 날짜 입력 오류
		}
		booking.setPrice(10000L);
        booking.setTotal_price(daysBetween * booking.getPrice()); // 총 가격

        model.addAttribute("userId", userId);
        model.addAttribute("booking", booking);
        model.addAttribute("boardName", boardName);
        
		return "booking/booking";
	}
	
	@PostMapping("/book.do")
	public String BookStay(HttpServletRequest request, @RequestParam BookingVO booking, CardRequest cardRequest) {
		String userId = (String) request.getSession(false).getAttribute("userId");
		CardVO card = bookService.getUserCard(userId); // 카드정보 불러오기
		
		
		log.info("=====================" + booking.getTotal_price());
		if(!checkCardRequest(cardRequest, card)) {
			log.info("입력 값 오류");
			return "redirect:/book.do"; // 입력 값 오류
		}
		if(card.getBalance() < booking.getTotal_price()) {
			log.info("잔고 부족");
			return "redirect:/book.do"; // 잔고 부족
		}
		bookService.payTotalPrice(card, booking.getTotal_price()); // 잔고 수정
		bookService.bookStay(booking); // 숙소 예약
		bookService.addPayment(card); // 결제 내역 추가
		
		return "redirect:/bookinglist.do";
	}
	
	private Long checkDaysBetween(String date1, String date2) {
		Long daysBetween = 0L;
		LocalDate localDate1 =  LocalDate.parse(date1);
        LocalDate localDate2 = LocalDate.parse(date2);
        daysBetween = ChronoUnit.DAYS.between(localDate1, localDate2);
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
	
    @GetMapping("/bookinglist.do")
    public String getListByUser(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login.do";
        }

        List<BookingVO> bookings = bookService.getListByUser(userId);
        model.addAttribute("bookings", bookings);
        return "booking/list";
    }

    @GetMapping("/search")
    public String get(@RequestParam("booking_no") Long booking_no, Model model) {
        BookingVO booking = bookService.get(booking_no);
        model.addAttribute("booking", booking);
        return "booking/search :: modalContents";
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResponseEntity<String> cancel(@RequestParam("booking_no") Long booking_no) {
        boolean isDeleted = bookService.cancel(booking_no);
        if (isDeleted) {
            return ResponseEntity.ok("{\"message\": \"Booking cancelled successfully\"}");
        } else {
            return ResponseEntity.status(500).body("{\"message\": \"Error cancelling booking\"}");
        }
    }

}
