package com.lc.project.hotel.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.lc.project.common.template.JDBCTemplate;
import com.lc.project.hotel.model.dao.HotelDao;
import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.vo.Member;

public class HotelService {
	private	HotelDao hDao = new HotelDao();
	public Hotel selectHotel(String hName) {
		Connection conn = JDBCTemplate.getConnection();
		Hotel h = hDao.selectHotel(conn,hName);
		JDBCTemplate.close(conn);
		return h;
	}
	public ArrayList<Hotel> selectHotelList(String hAddress,String hName){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Hotel> list = hDao.selectHotelList(conn,hAddress,hName);
		JDBCTemplate.close(conn);
		return list;
	}
	public ArrayList<Room> selectRoomList(String bsId){
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Room> list = hDao.selectRoomList(conn,bsId);
		JDBCTemplate.close(conn);
		return list;
	}
	public int insertBooking(Member loginUser,Room room) {
		Connection conn = JDBCTemplate.getConnection();
		int result = hDao.insertBooking(conn,loginUser,room);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	public Room selectRoom(int rnum) {
		Connection conn = JDBCTemplate.getConnection();
		Room r= hDao.selectRoom(conn,rnum);
		JDBCTemplate.close(conn);
		return r;
	}
}
