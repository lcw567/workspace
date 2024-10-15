package com.lc.project.map.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.common.template.Template;
import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.map.dao.HotelmapDao;

public class HotelmapImpl implements HotelmapService{
	
	private HotelmapDao hotelmapDao = new HotelmapDao();

	@Override
	public ArrayList<Hotel> getHotelList(String add) {
		// MyBatis SqlSession을 열고 DAO 호출
        SqlSession sqlSession = Template.getSqlSession();
        ArrayList<Hotel> hotelList = hotelmapDao.getHotelList(sqlSession,add);

        // SqlSession 닫기
        sqlSession.close();

        return hotelList;
	}
}
