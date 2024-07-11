package org.zerock.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;
import org.zerock.mapper.BookingMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BookingServiceImpl implements BookingService{

	@Autowired
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
    @Transactional
    public boolean cancelBooking(Long bookingNo) {
        BookingVO booking = mapper.read(bookingNo);
        log.info("Booking details: " + booking);
        if (booking == null) {
            log.error("Booking not found with bookingNo: " + bookingNo);
            return false;
        }

        try {
            Long totalPrice = booking.getTotal_price();
            String memberId = booking.getMember_id();
            log.info("Member ID: " + memberId);
            CardVO card = mapper.selectCard(memberId);
            if (card == null) {
                log.error("Card not found for userId: " + memberId);
                return false;
            }

            log.info("Updating card balance for cardNum: " + card.getCardNum());
            mapper.updateBalance(card.getCardNum(), card.getBalance() + totalPrice);

            log.info("Deleting payment for bookingNo: " + bookingNo);
            mapper.deletePayment(bookingNo);

            log.info("Deleting booking for bookingNo: " + bookingNo);
            mapper.deleteBooking(bookingNo);

        } catch (Exception e) {
            log.error("Error during cancelBooking: ", e);
            throw e;
        }

        return true;
    }
    
}


