package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.StayVO;

public interface BoardMapper {

	public List<BoardVO> selectBoardList(String category);
	
	public List<String> selectImageList(int no);

	public BoardVO selectBoard(int no);

	public ActivityVO selectActivityBoard(int no);

	public StayVO selectStayBoard(int no);

	public String selectContent(int no);

	public List<BoardVO> selectWord(@Param("category") String category, @Param("word") String word);

	public List<Integer> selectPaymentById(String id);

	public List<ActivityVO> selectActivityRecommend(BoardVO board);
}
