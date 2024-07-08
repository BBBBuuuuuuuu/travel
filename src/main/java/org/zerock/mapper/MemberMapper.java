package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	void insertMember(MemberVO vo);

	void updateMember(MemberVO vo);

	void deleteMember(String id);

	MemberVO getMember(String id);

	List<MemberVO> getMemberList();

	MemberVO login(MemberVO vo);

}
