package org.zerock.domain;

import lombok.Data;

@Data
public class StayVO extends BoardVO{

	private String owner;
	private String phone;
	private int max;
	private String stayType;
}
