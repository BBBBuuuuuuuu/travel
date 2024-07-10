package org.zerock.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.BoardVO;
import org.zerock.domain.ReviewVO;
import org.zerock.mapper.ReviewMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;

	@Override
	public List<ReviewVO> selectReview(BoardVO vo) {
		List<ReviewVO> reviewList = mapper.selectReview(vo);
		for(ReviewVO review : reviewList) {
			review.setImageName(mapper.selectReviewImage(review));
		}
		return reviewList;
	}

	@Override
	public Double getReviewAverage(BoardVO vo) {
		Double reviewSum = 0D;
		List<ReviewVO> reviewList = mapper.selectReview(vo);
		for (ReviewVO review : reviewList) {
			reviewSum += review.getLike();
		}
		double average = reviewSum / mapper.selectCountOfReview(vo);

		return (average != 0.0) ? changePoint(average) : 0.0;
	}

	@Override
	public List<Integer> getCountsOfLikes(BoardVO board) {
		List<Integer> counts = new ArrayList<Integer>();
		int sum = 0;
		for (int i = 1; i <= 5; i++) {
			int count = mapper.selectCountOfLikes(board, i);
			counts.add(count);
			sum += count; 
		}
		counts.add(sum);
		
		return counts;
	}

	@Override
	public void writeReview(ReviewVO vo) {
		mapper.insertReview(vo);
	}

	private Double changePoint(Double dNum) {
		return Math.round(dNum * 10) / 10.0;
	}

	@Override
	public void uploadImages(MultipartFile[] files) {
		for (MultipartFile file : files) {
			if (!file.isEmpty()) {
				String renamedFile = "";
				try {
					String fileName = file.getOriginalFilename();
					String uploadPath = "\\travel1\\src\\main\\webapp\\resources\\images";
					renamedFile = renameImage(fileName);

					File dest = new File(uploadPath + "/" + renamedFile);
					file.transferTo(dest);
					try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
				mapper.insertImage(renamedFile);
			}
		}
	}

	private String renameImage(String fileName) {
		String ext = fileName.substring(fileName.lastIndexOf("."));
		return System.currentTimeMillis() + ext;
	}

}
