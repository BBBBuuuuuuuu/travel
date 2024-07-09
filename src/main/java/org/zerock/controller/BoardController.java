package org.zerock.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
			return "board/hotelPage";
		}
		
	}
	
	@PostMapping("/writeReview.do")
	public String writeReview(HttpServletRequest request, @RequestParam("files") MultipartFile[] files, ReviewVO vo) { // 주소값의 BoardNo을 매개변수로 
		if(request.getSession(false).getAttribute("login") == null) { // 로그인 여부 확인
			return "redirect:/getBoard.do?no="+vo.getBoardNo();
		}
		
		if(boardService.getBoard(vo.getBoardNo()).getCategory().equals("stay")) { // 숙소 구매 내역 확인
			// 구매 내역 확인
			// 구매 내역이 없을 경우 페이지로 바로 리턴
		}
		reviewService.writeReview(vo); // 
		reviewService.uploadImages(files); // 

		return "redirect:/getBoard.do?no="+vo.getBoardNo();
	}
	
	@GetMapping("/search.do")
	public String search(@RequestParam(value="word", required = false) String word, @RequestParam("category") String category, Model model) {
		List<BoardVO> boardList = boardService.searchBoard(category, word);
		for(BoardVO board : boardList) {
			board.setLike(reviewService.getReviewAverage(board));
		}	
		
		model.addAttribute("boardList", boardList);
		return "getBoardList";
	}
	
}
