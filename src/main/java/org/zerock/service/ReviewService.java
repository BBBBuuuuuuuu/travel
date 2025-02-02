package org.zerock.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.BoardVO;
import org.zerock.domain.ReviewVO;

public interface ReviewService {

	public List<ReviewVO> selectReview(BoardVO vo);

	public Double getReviewAverage(BoardVO vo);

	public List<Integer> getCountsOfLikes(BoardVO board);

	void writeReview(ReviewVO vo, MultipartFile[] files);

	public void uploadImages(MultipartFile[] files);

	boolean checkIfUserHasBooking(String userId, Long boardNo);
	


}
