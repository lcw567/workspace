package com.lc.project.map.service;

import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;

public interface MapService {
	public abstract ArrayList<Travel> selectTravelTag(String personnel, String location, String theme);

	public abstract ArrayList<Travel> selectWishList(String userId);
}
