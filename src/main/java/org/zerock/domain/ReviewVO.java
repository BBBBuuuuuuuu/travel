package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class ReviewVO {

	private int reviewNo;
	private int boardNo;
	private String memberId;
	private String content;
	private int like;
	private List<String> imageName;
}
