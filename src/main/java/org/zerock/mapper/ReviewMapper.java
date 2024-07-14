package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.BookingVO;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> selectReview(BoardVO vo);

	public int selectCountOfReview(BoardVO vo);

	public Integer selectCountOfLikes(@Param("board") BoardVO board, @Param("score") int i);

	public void insertReview(ReviewVO vo);

	public void insertImage(String name);

	public List<String> selectReviewImage(ReviewVO review);
	
    int checkIfUserHasBooking(@Param("userId") String userId, @Param("boardNo") Long boardNo);
	}

