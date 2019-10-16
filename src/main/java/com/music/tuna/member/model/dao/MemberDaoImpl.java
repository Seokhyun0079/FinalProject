package com.music.tuna.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class MemberDaoImpl implements MemberDao{
	SqlSession sqlSession;
	
	public MemberDaoImpl() {
		this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	@Override
	public int insertMember(Member m) {
		return sqlSession.insert("member.insertMember", m);
	}
	@Override
	public boolean duplicateCheck(String userId) {
		boolean result;
		if((int)sqlSession.selectOne("member.duplicateCheck", userId) > 0) {
			result = true;
		}else {
			result = false;
		}

		return result;
	}
	
	@Override
	public Member selectMember(Member m) {
		
		return sqlSession.selectOne("member.selectLoginUser", m);
	}

	@Override
	public String selectEncPassword(Member m) {
		return sqlSession.selectOne("member.selectPwd",m);
	}

	public void commit(){
		sqlSession.commit();
	}

	@Override
	public Member findId(String name, String email) {
		Member m = new Member();
		m.setUserName(name);
		m.setEmail(email);
		return sqlSession.selectOne("member.findId",m);
	}
	@Override
	public Member findPW(Member findPW) {
		return sqlSession.selectOne("member.findPW", findPW);
	}
	@Override
	public int updatePW(Member findPW) {
		return sqlSession.update("member.updatePW", findPW);
	}

}
