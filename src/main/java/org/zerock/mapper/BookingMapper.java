package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;

public interface BookingMapper {

	CardVO selectCard(String userId);

	void updateBalance(@Param("cardNum") int cardNum, @Param("balance") long balance);

	void insertBooking(BookingVO booking);

	Integer selectBookingNo(String memberId);

	void insertPayment(@Param("card") CardVO card, @Param("bookingNo") int bookingNo);

	List<BookingVO> getListByUser(String userId);

	BookingVO read(Long bookingNo);

	void deletePayment(Long bookingNo);

	void deleteBooking(Long bookingNo);
}
