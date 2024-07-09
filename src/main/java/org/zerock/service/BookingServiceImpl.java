package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;
import org.zerock.mapper.BookingMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BookingServiceImpl implements BookingService{

	@Setter(onMethod_ = @Autowired)
	private BookingMapper mapper;
	
	
	@Override
	public CardVO getUserCard(String userId) {
		log.info(mapper.selectCard(userId));
		return mapper.selectCard(userId);
	}


	@Override
	public void payTotalPrice(CardVO card, Long totalPrice) {
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
	
    @Override
    public List<BookingVO> getListByUser(String memberId) {
        return mapper.getListByUser(memberId);
    }
    @Override
    public BookingVO get(Long booking_no) {
        return mapper.read(booking_no);
    }
    @Override
    public boolean cancel(Long booking_no) {
        return mapper.delete(booking_no) == 1;
    }




}
