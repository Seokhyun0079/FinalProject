package com.music.tuna.member.model.dao;

import com.music.tuna.member.model.vo.Member;

public interface MemberDao {
	
	
	void commit();
	int insertMember(Member m);
	boolean duplicateCheck(String userId);
	boolean duplicateCheckEmail(String email);
	String mailCheck(String userId);
	Member selectMember(Member m);
	String selectEncPassword(Member m);
	Member findId(String name, String email);
	Member findPW(Member findPW);
	int updatePW(Member findPW);
	int updateMember(Member m);
	int deleteMember(String userId);

}
