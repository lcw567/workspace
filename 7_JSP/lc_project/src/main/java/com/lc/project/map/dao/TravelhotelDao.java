package com.lc.project.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.travel.model.vo.Travel;

public class TravelhotelDao {
	
	// 찜한 여행지 목록을 DB에서 가져오는 메서드
    public ArrayList<Travel> getWishList(SqlSession sqlSession, String userId) {
        return (ArrayList) sqlSession.selectList("travelMapper.getWishList", userId);
    }
}