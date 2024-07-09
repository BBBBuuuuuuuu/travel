package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BookingVO;
import org.zerock.domain.CardVO;

public interface BookingMapper {

	CardVO selectCard(String userId);

	void updateBalance(@Param("cardNum")int cardNum, @Param("balance") long balance);

	void insertBooking(BookingVO booking);

	Integer selectBookingNo(String memberId);

	void insertPayment(@Param("card") CardVO card, @Param("bookingNo") int bookingNo);

}
