package com.music.tuna.member.model.service;

import com.music.tuna.member.model.vo.Member;


public interface MemberService {

	int insertMember(Member m);

	boolean duplicateCheck(String userId);

}
