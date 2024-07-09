package org.zerock.service;

import lombok.Data;

@Data
public class CardRequest {

	private String confirmPass;
	private String bank;
	private int cardNum;
}
