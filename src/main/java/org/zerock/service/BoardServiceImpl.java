package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.StayVO;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getBoardList(String category) {
		List<BoardVO> boardList = boardMapper.selectBoardList(category);
		for (BoardVO board : boardList) {
			setImage(board);
		}
		return boardList;
	}

	@Override
	public void setImage(BoardVO board){
			board.setImageName(boardMapper.selectImageList(board.getBoardNo()));
	}
	
	@Override
	public BoardVO getBoard(int no) {
		BoardVO board = boardMapper.selectBoard(no);
		board.setContent(boardMapper.selectContent(no));
		return board;
	}

	@Override
	public ActivityVO getActivityBoard(int no) {
		ActivityVO activityBoard = boardMapper.selectActivityBoard(no);
		if (activityBoard != null) {
			activityBoard.setImageName(boardMapper.selectImageList(no));
			return activityBoard;
		} else
			return null;
	}

	@Override
	public StayVO getStayBoard(int no) {
		StayVO stayBoard = boardMapper.selectStayBoard(no);
		if (stayBoard != null) {
			stayBoard.setImageName(boardMapper.selectImageList(no));
			return stayBoard;
		} else
			return null;
	}

	@Override
	public List<BoardVO> searchBoard(String category, String word) {
		List<BoardVO> boardList = boardMapper.selectWord(category, word);
		
		for (BoardVO board : boardList) {
			board.setImageName(boardMapper.selectImageList(board.getBoardNo()));
		}
		
		return boardList;
	}

	@Override
	public Boolean checkPaymentById(String id) {
		List<Integer> paymentNo = boardMapper.selectPaymentById(id);
		return paymentNo.isEmpty() ? true : false;
	}

	

}
