package org.zerock.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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


	 @Transactional
	    public void writeReview(ReviewVO vo, MultipartFile[] files) {
	        log.info("리뷰 저장 시작");
	        try {
	            mapper.insertReview(vo);
	            log.info("리뷰 저장 완료");

	            for (MultipartFile file : files) {
	                if (!file.isEmpty()) {
	                    String fileName = renameImage(file.getOriginalFilename());
	                    log.info("Inserting image: " + fileName);
	                    try {
	                        mapper.insertImage(fileName);
	                    } catch (Exception e) {
	                        log.error("Error while inserting image: " + fileName, e);
	                        throw e; // 트랜잭션 롤백을 위해 예외를 다시 던짐
	                    }
	                }
	            }
	        } catch (Exception e) {
	            log.error("Error while writing review transaction: ", e);
	            throw e;
	        }
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
                    // 절대 경로 설정
                    String uploadPath = "C:/Users/SJ02/git/travel/src/main/webapp/resources/images";
                    File uploadDir = new File(uploadPath);

                    if (!uploadDir.exists()) {
                        uploadDir.mkdirs(); // 디렉토리가 존재하지 않으면 생성
                    }

                    renamedFile = renameImage(fileName);

                    File dest = new File(uploadPath, renamedFile);
                    file.transferTo(dest);
                    log.info("Image uploaded: " + renamedFile);
                    mapper.insertImage(renamedFile);
                } catch (IOException e) {
                    log.error("Error while uploading image: " + renamedFile, e);
                    throw new RuntimeException("Image upload failed", e);
                }
            }
        }
    }

	private String renameImage(String fileName) {
        String ext = fileName.substring(fileName.lastIndexOf("."));
        String baseName = fileName.substring(0, fileName.lastIndexOf("."));
        return baseName + "_" + System.currentTimeMillis() + ext;
    }

}
