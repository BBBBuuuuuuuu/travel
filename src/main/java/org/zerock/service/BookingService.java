package org.zerock.service;

import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;

public interface BookingService {

	public CardVO getUserCard(String userId);

	public void payTotalPrice(CardVO card, int totalPrice);

	public void bookStay(BookingVO booking);

	public void addPayment(CardVO card);

}
