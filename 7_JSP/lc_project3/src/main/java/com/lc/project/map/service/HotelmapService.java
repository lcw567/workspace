package com.lc.project.map.service;

import java.util.ArrayList;

import com.lc.project.hotel.model.vo.Hotel;

public interface HotelmapService {
	ArrayList<Hotel> getHotelList(String add); // 호텔 목록 가져오기
}
