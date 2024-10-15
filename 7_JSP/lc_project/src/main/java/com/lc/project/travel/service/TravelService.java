package com.lc.project.travel.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.common.template.Template;
import com.lc.project.travel.model.dao.TravelDao;
import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;

public class TravelService {
	private TravelDao tDao = new TravelDao();
	public Travel selectTravel(String trName) {
		Connection conn = JDBCTemplate.getConnection();
		Travel t = tDao.selectTravel(conn,trName);
		JDBCTemplate.close(conn);
		return t;
	}
	public ArrayList<Travel> selectNearbyTravel(String trAddress, String trName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectNearbyTravel(conn,trAddress,trName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Travel> selectWishList(String userName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectWishList(conn,userName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<tReview> selectTReview(String trName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<tReview> list = tDao.selectTReview(conn,trName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Travel> selectMainList(){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Travel> list = tDao.selectMainList(conn);
		JDBCTemplate.close(conn);
		return list;
	}
	public int insertReview(String review,String userName,String travel) {
		Connection conn = JDBCTemplate.getConnection();
		int result = tDao.insertReview(conn,review,userName, travel);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	public int insertWish(String userName,String travel) {
		Connection conn = JDBCTemplate.getConnection();
		int result = tDao.insertWish(conn,userName,travel);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	public int countWish(String userName){
		Connection conn = JDBCTemplate.getConnection();
		int result = tDao.countWish(conn, userName);
		JDBCTemplate.close(conn);
		return result;
	}
	public int deleteWish(String userName,String travel) {
		Connection conn = JDBCTemplate.getConnection();
		int result = tDao.deleteWish(conn,userName,travel);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	public ArrayList<Travel> travelList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.selectList(sqlSession, location);
		sqlSession.close();
		
		return list;
	}
	public ArrayList<Travel> foodList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.foodSelectList(sqlSession, location);
		sqlSession.close();
		return list;
	}
	
	public ArrayList<Travel> festivalList(String location) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Travel> list = tDao.festivalList(sqlSession, location);
		sqlSession.close();
		return list;
	}
	public ArrayList<Travel> searchTour(String browser) {
		SqlSession sqlSession = Template.getSqlSession();
		System.out.println("service : " + browser);
		ArrayList<Travel> list = tDao.searchTour(sqlSession, browser);
		sqlSession.close();
		return list;
	}
}