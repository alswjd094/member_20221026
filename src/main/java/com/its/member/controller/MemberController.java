package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String loginResult(@ModelAttribute MemberDTO memberDTO){
        MemberDTO login = memberService.loginResult(memberDTO);
            return "memberMain";

    }

    @GetMapping("/members")
    public String members(Model model){
        List<MemberDTO> memberDTO = memberService.members();
        model.addAttribute("findAll",memberDTO);
        return "memberList";
    }

    @GetMapping("/member")
    public String member(@RequestParam("memberEmail") String memberEmail, Model model){
        MemberDTO findByEmail = memberService.member(memberEmail);
        model.addAttribute("findByEmail",findByEmail);
        return "memberDetail";
    }


    @GetMapping ("/delete")
    public String delete(@ModelAttribute MemberDTO memberDTO){
        boolean deleteResult = memberService.delete(memberDTO);
        if(deleteResult) {
            return "memberList";
        }else {
            return "deleteFalse";
        }
    }


}
