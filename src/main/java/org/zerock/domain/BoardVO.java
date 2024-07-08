package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class BoardVO {

	private int boardNo;
	private int monthNo;
	private String name;
	private String content;
	private String country;
	private String area;
	private String address;
	private String category;
	private Double like;
	private List<String> imageName; 
}
