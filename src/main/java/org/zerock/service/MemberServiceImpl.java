package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public void insertMember(MemberVO vo) {
        memberMapper.insertMember(vo);
    }

    @Override
    public void updateMember(MemberVO vo) {
        memberMapper.updateMember(vo);
    }

    @Override
    public void deleteMember(String id) {
        memberMapper.deleteMember(id);
    }

    @Override
    public MemberVO getMember(String id) {
        return memberMapper.getMember(id);
    }

    @Override
    public List<MemberVO> getMemberList() {
        return memberMapper.getMemberList();
    }

    @Override
    public MemberVO login(MemberVO vo) {
        return memberMapper.login(vo);
    }
}
