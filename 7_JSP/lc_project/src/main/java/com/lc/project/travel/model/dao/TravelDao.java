package com.lc.project.travel.model.dao;

import static com.lc.project.common.template.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;

public class TravelDao {
	private Properties prop = new Properties();
	public TravelDao() {
		String filePath = TravelDao.class.getResource("/db/sql/JDBCmappers.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	public Travel selectTravel(Connection conn, String trName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Travel t = new Travel();
		String sql = "SELECT AC_NAME, AC_ADDRESS, TR_INFO, ACT_PERSONNEL, ACT_LOCATION, ACT_THEME, TR_MAP_LATITUDE, TR_MAP_LONGITUDE, LOCATION FROM TB_TOUR WHERE AC_NAME = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				t.setTrName(rset.getString("AC_NAME"));
				t.setTrAddress(rset.getString("AC_ADDRESS"));
				t.setTrInfo(rset.getString("TR_INFO"));
				t.setTr_personnel(rset.getString("ACT_PERSONNEL"));
				t.setTr_location(rset.getString("ACT_LOCATION"));
				t.setTr_theme(rset.getString("ACT_THEME"));
				t.setTr_map_lat(rset.getString("TR_MAP_LATITUDE"));
				t.setTr_map_long(rset.getString("TR_MAP_LONGITUDE"));
				t.setPicInfo(rset.getString("LOCATION"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return t;
	}
	public ArrayList<Travel> selectNearbyTravel(Connection conn, String trAddress, String trName){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Travel> list = new ArrayList<>();
		String sql = "SELECT AC_NAME, AC_ADDRESS, LOCATION "
				+ "FROM (SELECT AC_NAME, AC_ADDRESS, LOCATION, ROWNUM "
				+ "      FROM (SELECT AC_NAME, AC_ADDRESS, LOCATION"
				+ "            FROM TB_TOUR "
				+ "            WHERE AC_ADDRESS LIKE ? AND AC_NAME != ?)"
				+ "      ORDER BY DBMS_RANDOM.VALUE)"
				+ "WHERE ROWNUM <= 4";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trAddress+"%");
			pstmt.setString(2, trName);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Travel t = new Travel();
				t.setTrName(rset.getString("AC_NAME"));
				t.setTrAddress(rset.getString("AC_ADDRESS"));
				t.setPicInfo(rset.getString("LOCATION"));
				list.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Travel> selectWishList(Connection conn,String userId){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Travel> list = new ArrayList<>();
		String sql = "SELECT AC_NAME, AC_ADDRESS, LOCATION "
				+"FROM TB_TOUR "
				+"LEFT JOIN TB_WISHLIST USING(AC_NAME) "
				+"WHERE WISH_USER = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Travel t = new Travel();
				t.setTrName(rset.getString("AC_NAME"));
				t.setTrAddress(rset.getString("AC_ADDRESS"));
				t.setPicInfo(rset.getString("LOCATION"));
				list.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<tReview> selectTReview(Connection conn, String trName){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<tReview> list = new ArrayList<>();
		String sql = "SELECT REV_USER, CONTENT, REVIEW_DATE FROM TB_REVIEW WHERE AC_NAME = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, trName);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				tReview tr = new tReview();
				tr.setWriter(rset.getString("REV_USER"));
				tr.setContent(rset.getString("CONTENT"));
				tr.setReviewDate(rset.getDate("REVIEW_DATE"));
				list.add(tr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Travel> selectMainList(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Travel> list = new ArrayList<>();
		String sql = "SELECT AC_NAME ,LOCATION "
					+"FROM(SELECT AC_NAME,LOCATION,ROWNUM "
					 	  +"FROM(SELECT AC_NAME,LOCATION,COUNT(AC_NAME) "
					           +"FROM TB_TOUR "
					           +"LEFT JOIN TB_WISHLIST USING(AC_NAME) "
					           +"GROUP BY AC_NAME,LOCATION "
					           +"ORDER BY COUNT(AC_NAME)DESC)) "
					+"WHERE ROWNUM <= 11";
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Travel t = new Travel();
				t.setTrName(rset.getString("AC_NAME"));
				t.setPicInfo(rset.getString("LOCATION"));
				list.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public int insertReview(Connection conn,String review,String userId,String travel){
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO TB_REVIEW(REV_USER, AC_NAME, CONTENT, REVIEW_DATE,SCORE) "
				+ "VALUES(?,?,?,SYSDATE,7)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, travel);
			pstmt.setString(3, review);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int insertWish(Connection conn,String userId,String travel){
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO TB_WISHLIST(AC_NAME, WISH_USER) "
				+ "VALUES(?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, travel);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int countWish(Connection conn,String userName){
		int result = 0;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = "SELECT WISH_USER,COUNT(WISH_USER) "
					+"FROM TB_WISHLIST "
					+"WHERE WISH_USER = ? "
					+"GROUP BY WISH_USER";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("COUNT(WISH_USER)");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int deleteWish(Connection conn,String userName,String travel){
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM TB_WISHLIST WHERE AC_NAME=? AND WISH_USER=? ";
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, travel);
			pstmt.setString(2, userName);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Travel> selectList(SqlSession sqlSession, String location) {
		return (ArrayList)sqlSession.selectList("travelMapper.locationList",location);
	}

	public ArrayList<Travel> foodSelectList(SqlSession sqlSession, String location) {
		return (ArrayList)sqlSession.selectList("travelMapper.foodList",location);
		}

	public ArrayList<Travel> festivalList(SqlSession sqlSession, String location) {
		return (ArrayList)sqlSession.selectList("travelMapper.festivalList",location);
	}
   	public ArrayList<Travel> searchTour(SqlSession sqlSession, String browser) {
   		System.out.println("dao : " + browser);
	return (ArrayList)sqlSession.selectList("travelMapper.searchTour", browser);
   	}
}