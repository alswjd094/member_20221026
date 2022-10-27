package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
import java.util.List;

@Service
public class MemberService {

@Autowired
private MemberRepository memberRepository;
    public boolean memberSave(MemberDTO memberDTO) {
        int saveResult = memberRepository.memberSave(memberDTO);
        if(saveResult > 0){
            return true;
        }else {
            return false;
        }
    }


    public boolean loginResult(MemberDTO memberDTO) {
        MemberDTO login = memberRepository.loginResult(memberDTO);
        if(login != null){
            return true;
        }else {
            return false;
        }
    }

    public List<MemberDTO> members(){
        return memberRepository.members();
    }

    public MemberDTO member(Long memberId) {
        return memberRepository.member(memberId);

    }


}
