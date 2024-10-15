package com.lc.project.map.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.Template;
import com.lc.project.map.dao.TravelhotelDao;
import com.lc.project.travel.model.vo.Travel;

public class TravelhotelImpl implements TravelhotelService{
	
	private TravelhotelDao tDao = new TravelhotelDao();

	@Override
	public ArrayList<Travel> getWishList(String userId) {
		 // MyBatis SqlSession을 열고 DAO를 호출
        SqlSession sqlSession = Template.getSqlSession();
        ArrayList<Travel> wishList = tDao.getWishList(sqlSession, userId);

        // SqlSession을 닫음
        sqlSession.close();

        return wishList;
    }
}