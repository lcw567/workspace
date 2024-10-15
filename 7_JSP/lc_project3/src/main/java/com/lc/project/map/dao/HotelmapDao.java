package com.lc.project.map.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.hotel.model.vo.Hotel;

public class HotelmapDao {
	  public ArrayList<Hotel> getHotelList(SqlSession sqlSession,String add) {
		  System.out.println((ArrayList) sqlSession.selectList("hotelMapper.getHotelList"));
	        return (ArrayList) sqlSession.selectList("hotelMapper.getHotelList",add);
	    }
}
