package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
        public String save(){

        return "memberSave";
    }

    @PostMapping("/save")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        boolean saveResult = memberService.memberSave(memberDTO);
        if(saveResult) {
            return "memberLogin";
        }else {
            return "saveFalse";
        }
    }

    @GetMapping("/login")
    public String login(){
        return "memberLogin";
    }

    @PostMapping("/login")
    public String loginResult(@ModelAttribute MemberDTO memberDTO, HttpSession session,Model model){
        boolean login = memberService.loginResult(memberDTO);
        if(login) {
            // 세션에 로그인한 사용자의 이메일을 저장
            session.setAttribute("loginEmail",memberDTO.getMemberEmail());
                                    //"담을 이름", 담을 값
            model.addAttribute("modelEmail",memberDTO.getMemberEmail());
            return "memberMain";
        }else {
            return "memberLogin";
        }
    }

    @GetMapping("/members")
    public String members(Model model){
        List<MemberDTO> memberDTO = memberService.members();
        model.addAttribute("findAll",memberDTO);
        return "memberList";
    }

    @GetMapping("/member")
    public String member(@RequestParam("memberId") Long memberId, Model model){
        MemberDTO findById = memberService.member(memberId);
        model.addAttribute("findById",findById);
        return "memberDetail";
    }






}
