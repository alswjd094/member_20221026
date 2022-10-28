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

    @GetMapping("/delete")
    public String delete(@RequestParam("memberId") Long memberId, Model model){
        memberService.delete(memberId);
        // 1. 삭제 후 목록을 DB에서 가져오고 memberList.jsp로 간다.
//           List<MemberDTO> members = memberService.members();
//           model.addAttribute("findAll",members);
//           return "memberList";
        //2. redirect 방식을 이용하여 /members 주소 요청
        return "redirect:/members";
    }

    @GetMapping ("/update")
    public String updateForm(HttpSession session, Model model){
        String memberEmail = (String) session.getAttribute("loginEmail");
        //memberEmail로 DB에서 해당 회원의 전체정보 조회
        MemberDTO updateForm = memberService.findByEmail(memberEmail);
        model.addAttribute("member",updateForm);
        return "memberUpdate";
    }
    @PostMapping ("/update")
    public String update(@ModelAttribute MemberDTO memberDTO){
       boolean result = memberService.update(memberDTO);
       if(result) {
           return "redirect:/member?memberId="+memberDTO.getMemberId();
       } else {
           return "index";
       }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return"index";
    }

}
