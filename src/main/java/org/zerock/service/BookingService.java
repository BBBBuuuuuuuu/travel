package org.zerock.service;

import java.util.List;

import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;

public interface BookingService {

	List<BookingVO> getListByUser(String memberId);
	
	public CardVO getUserCard(String userId);

	public void payTotalPrice(CardVO card, Long totalPrice);

	public void bookStay(BookingVO booking);

	public void addPayment(CardVO card);

	BookingVO get(Long booking_no);
	
	boolean cancel(Long booking_no);

}