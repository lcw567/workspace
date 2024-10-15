package com.lc.project.map.service;

import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;

public interface TravelhotelService {
	 // 찜한 여행지 목록을 가져오는 메서드
    ArrayList<Travel> getWishList(String userId);
}
