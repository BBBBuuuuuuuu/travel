package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.standard.Media;
import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.ReviewVO;
import org.zerock.domain.StayVO;
import org.zerock.service.BoardService;
import org.zerock.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("/getList.do")
	public String getBoaxrdList(@RequestParam("category") String category, Model model) {
		List<BoardVO> boardList = boardService.getBoardList(category);
		for(BoardVO board : boardList) {
			board.setLike(reviewService.getReviewAverage(board));
		}
		
		model.addAttribute("boardList", boardList);
		return "board/list";
	}
	
	@GetMapping("/getBoard.do") // 상세 페이지
	public String getBoard(@RequestParam("no") int no,  Model model) {
		BoardVO board = boardService.getBoard(no);
		board.setLike(reviewService.getReviewAverage(board));
		model.addAttribute("average", board.getLike());
		
		List<ReviewVO> reviewList = reviewService.selectReview(board); // 리뷰 불러오기
		model.addAttribute("reviewList", reviewList); 
		List<Integer> counts = reviewService.getCountsOfLikes(board);
		model.addAttribute("counts", counts);
		
		
		if(board.getCategory() == null || board.getCategory().equals("")) { // 카테고리 분류
			return "error";
		}
		else if(board.getCategory().equals("activity")) {
			ActivityVO activityBoard = boardService.getActivityBoard(no); // 액티비티 게시판에 대한 정보 불러오기
			model.addAttribute("board", activityBoard);
			return "board/placePage";
		} else {
			StayVO stayBoard = boardService.getStayBoard(no); // 숙소 게시판에 대한 정보 불러오기
			model.addAttribute("board", stayBoard);
			log.info(board);
			return "board/hotelPage";
		}
		
	}
	
	@PostMapping(value="/writeReview.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public Map<String, Object> writeReview(HttpServletRequest request, @RequestParam("rating") String scoreStr, 
			@RequestParam("reviewText") String content,
			 @RequestParam("boardNo") String boardNoStr,
			 @RequestParam("files") MultipartFile[] files, ReviewVO vo) {
	    log.info("과연 들어올까요??");

	    log.info(content);
	    Map<String, Object> response = new HashMap<>();

	    String id = (String) request.getSession(false).getAttribute("userId");
	    log.info("User ID: " + id);
	    if (id == null) {
	        response.put("status", "error");
	        response.put("message", "로그인이 필요합니다.");
	        return response;
	    }

	    try {
	    	int score = Integer.parseInt(scoreStr);
	        int boardNo = Integer.parseInt(boardNoStr);
		    log.info(scoreStr);
	    	  BoardVO board = boardService.getBoard(boardNo); 
	        log.info("Board: " + board);
	        if (board == null) {
	            response.put("status", "error");
	            response.put("message", "존재하지 않는 게시판입니다.");
	            return response;
	        }

	        if (board.getCategory().equals("stay")) {
	        	log.info("보드넘 버 No: " + boardNo);
	            Boolean checking = boardService.checkPaymentById(id);
	            log.info("Payment check: " + checking);
	            if (!checking) {
	                response.put("status", "error");
	                response.put("message", "구매 내역이 없습니다.");
	                return response;
	            }
	        }

	        log.info("여기까지옴?");
	        vo.setMemberId(id); 
	        vo.setBoardNo(boardNo); 
	        vo.setContent(content);
	        vo.setLike(score);
	        reviewService.writeReview(vo, files);
	        log.info("writeReview 호출 완료");
	        reviewService.uploadImages(files);
	        log.info("uploadImages 호출 완료");

	        response.put("status", "success");
	        response.put("message", "리뷰가 성공적으로 제출되었습니다.");
	    } catch (Exception e) {
	        log.error("Error: ", e);
	        response.put("status", "error");
	        response.put("message", "리뷰 저장 중 오류가 발생했습니다.");
	    }

	    return response;
	}
	@GetMapping("/search.do")
	public String search(@RequestParam(value="word", required = false) String word, @RequestParam(value="category", defaultValue="stay" ) String category, Model model) {
		List<BoardVO> boardList = boardService.searchBoard(category, word);
		for(BoardVO board : boardList) {
			board.setLike(reviewService.getReviewAverage(board));
		}	
		
		model.addAttribute("boardList", boardList);
		return "board/list";
	}
	
}
