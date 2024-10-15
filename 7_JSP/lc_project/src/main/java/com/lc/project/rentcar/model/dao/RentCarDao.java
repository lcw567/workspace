package com.lc.project.rentcar.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.rentcar.model.vo.RentCar;

public class RentCarDao {
	public ArrayList<RentCar> carList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("rentcarMapper.carList");
	}
}
