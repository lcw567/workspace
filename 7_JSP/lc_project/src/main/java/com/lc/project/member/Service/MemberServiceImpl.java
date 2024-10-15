package com.lc.project.member.Service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.dao.MemberDao;
import com.lc.project.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	private MemberDao mDao = new MemberDao();
	
	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member searchidMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchid = mDao.searchidMember(sqlSession, m);
		
		sqlSession.close();
		
		return searchid;
	}

	@Override
	public Member searchpwdMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchpwd = mDao.searchpwdMember(sqlSession, m);
		
		sqlSession.close();
		
		return searchpwd;
	}

	@Override
	public boolean updateMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.updateMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result > 0;
	}

	@Override
	public Room selectRoom(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		Room room = mDao.selectRoom(conn, m);
		JDBCTemplate.close(conn);		
		return room;
	}



}
