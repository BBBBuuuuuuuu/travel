package org.zerock.service;

import java.util.List;

import org.zerock.domain.ActivityVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.StayVO;

public interface BoardService {

	public List<BoardVO> getBoardList(String category);

	public BoardVO getBoard(int no);

	public ActivityVO getActivityBoard(int no);

	public StayVO getStayBoard(int no);

	public List<BoardVO> searchBoard(String category, String word);
}
