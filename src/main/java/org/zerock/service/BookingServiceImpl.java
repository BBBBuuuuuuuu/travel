package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;
import org.zerock.mapper.BookingMapper;

import lombok.Setter;

@Service
public class BookingServiceImpl implements BookingService{

	@Setter(onMethod_ = @Autowired)
	private BookingMapper mapper;
	
	
	@Override
	public CardVO getUserCard(String userId) {
		return mapper.selectCard(userId);
	}


	@Override
	public void payTotalPrice(CardVO card, int totalPrice) {
		mapper.updateBalance(card.getCardNum(), card.getBalance() - totalPrice);
		
	}


	@Override
	public void bookStay(BookingVO booking) {
		mapper.insertBooking(booking);
		
	}

	@Override
	public void addPayment(CardVO card) {
		int bookingNo = mapper.selectBookingNo(card.getMemberId());
		mapper.insertPayment(card, bookingNo);
	}
	
}
