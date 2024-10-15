package com.lc.project.member.model.dao;

import static com.lc.project.common.template.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.vo.Member;

public class MemberDao {

    public Member loginMember(SqlSession sqlSession, Member member) {
        return sqlSession.selectOne("memberMapper.loginMember", member);
    }

    public int insertMember(SqlSession sqlSession, Member member) {
        return sqlSession.insert("memberMapper.insertMember", member);
    }
    
    public Member searchidMember(SqlSession sqlSession, Member member) {
    	return sqlSession.selectOne("memberMapper.searchidMember", member);
    }
    
    public Member searchpwdMember(SqlSession sqlSession, Member member) {
    	return sqlSession.selectOne("memberMapper.searchpwdMember", member);
    }
    
    public int updateMember(SqlSession sqlSession, Member member) {
    	return sqlSession.update("memberMapper.updateMember", member);
    }
    
    public Room selectRoom(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Room r = new Room();
		String sql = "SELECT ROOM_NUM, PRICE,CHECKIN, CHECKOUT FROM TB_ROOM_BOOKING WHERE ROOM_USER = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				r.setrNum(rset.getInt("ROOM_NUM"));
				r.setPrice(rset.getInt("PRICE"));
				r.setCheckin(rset.getString("CHECKIN"));
				r.setCheckout(rset.getString("CHECKOUT"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
}
