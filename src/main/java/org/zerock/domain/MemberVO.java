package org.zerock.domain;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class MemberVO {
	private String id;
	private String password;
	private String phone;
	private String name;
	private String email;

}
