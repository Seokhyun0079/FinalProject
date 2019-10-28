package com.music.tuna.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.music.tuna.member.model.dao.MemberDao;
import com.music.tuna.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	

	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public int insertMember(Member m) {
		int result = memberDao.insertMember(m);
		memberDao.commit();
		return result;
	}

	@Override
	public boolean duplicateCheck(String userId) {
		return memberDao.duplicateCheck(userId);
	}

	@Override
	public boolean duplicateCheckEmail(String email) {
		return memberDao.duplicateCheckEmail(email);
	}
	
	@Override
	public String mailCheck(String userId) {
		return memberDao.mailCheck(userId);
	}
	
	@Override
	public Member loginMember(Member m) {
		Member loginUser = null;
		
		String encPassword = memberDao.selectEncPassword(m);
		if(passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			loginUser = memberDao.selectMember(m);
		}
		
		return loginUser;
	}


	@Override
	public Member findId(String name, String email) {
		return memberDao.findId(name, email);
	}

	@Override
	public Member findPW(Member findPW) {
		return memberDao.findPW(findPW);
	}

	@Override
	public int updatePW(Member findPW) {
		int result = memberDao.updatePW(findPW);
		if(result > 0) {
			memberDao.commit();
		}

		return result;
	}

	@Override
	public int updateMember(Member m) {
		int result = memberDao.updateMember(m);
		if(result > 0) {
			memberDao.commit();
		}
		return result;
	}

	@Override
	public int deleteMember(String userId) {
		int result = memberDao.deleteMember(userId);
		if(result > 0) {
			memberDao.commit();
		}
		return result;
	}






}
