package org.zerock.domain;

import lombok.Data;

@Data
public class CardVO {

	private int cardNum;
	private String memberId;
	private String bank;
	private String cardPass;
	private Long balance;
}
