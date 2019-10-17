package com.music.tuna.member.model.service;

import com.music.tuna.member.model.vo.Member;


public interface MemberService {

	int insertMember(Member m);

	boolean duplicateCheck(String userId);

	Member loginMember(Member m);

	Member findId(String name, String email);

	Member findPW(Member findPW);

	int updatePW(Member findPW);

}
