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


    public MemberDTO loginResult(MemberDTO memberDTO) {
        return memberRepository.loginResult(memberDTO);
    }

    public List<MemberDTO> members(){
        return memberRepository.members();
    }

    public MemberDTO member(String memberEmail) {
        return memberRepository.member(memberEmail);

    }

    public boolean delete(MemberDTO memberDTO) {
        int deleteResult = memberRepository.delete(memberDTO);
        if(deleteResult > 0){
            return true;
        }else {
            return false;
        }
    }
}
