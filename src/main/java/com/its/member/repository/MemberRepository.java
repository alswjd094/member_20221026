package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int memberSave(MemberDTO memberDTO) {

    return sql.insert("Member.memberSave",memberDTO);
    }

    public MemberDTO loginResult(MemberDTO memberDTO) {
        return sql.selectOne("Member.loginResult",memberDTO);

    }

    public List<MemberDTO> members() {
        return sql.selectList("Member.members");
    }

    public MemberDTO member(String memberEmail) {
        return sql.selectOne("Member.member",memberEmail);
    }

    public int delete(MemberDTO memberDTO) {
        return sql.delete("Member.delete", memberDTO);
    }
}