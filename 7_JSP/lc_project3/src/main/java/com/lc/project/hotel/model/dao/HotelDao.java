package com.lc.project.hotel.model.dao;

import static com.lc.project.common.template.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.model.dao.TravelDao;

public class HotelDao {
	private Properties prop = new Properties();
	public HotelDao() {
		String filePath = TravelDao.class.getResource("/db/sql/JDBCmappers.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public Hotel selectHotel(Connection conn, String hName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Hotel h = new Hotel();
		String sql = "SELECT BS_ID,BS_NAME ,BS_TEL, BS_TITLE, BS_ADDRESS, LOCATION, HT_MAP_LATITUDE, HT_MAP_LONGITUDE FROM TB_BUSINESS WHERE BS_TITLE = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				h.setBsId(rset.getString("BS_ID"));
				h.setBsName(rset.getString("BS_NAME"));
				h.setBsTel(rset.getString("BS_TEL"));
				h.sethName(rset.getString("BS_TITLE"));
				h.sethAddress(rset.getString("BS_ADDRESS"));
				h.setPicInfo(rset.getString("LOCATION"));
				h.setHt_map_lat(rset.getString("HT_MAP_LATITUDE"));
				h.setHt_map_long(rset.getString("HT_MAP_LONGITUDE"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return h;
	}
	public ArrayList<Hotel> selectHotelList(Connection conn, String hAddress,String hName){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Hotel> list = new ArrayList<>();
		String sql = "SELECT BS_TITLE, BS_ADDRESS, LOCATION "
				+ "FROM (SELECT BS_TITLE, BS_ADDRESS, LOCATION, ROWNUM "
				+ "      FROM (SELECT BS_TITLE, BS_ADDRESS, LOCATION"
				+ "            FROM TB_BUSINESS "
				+ "            WHERE BS_ADDRESS LIKE ? AND BS_TITLE != ?)"
				+ "      ORDER BY DBMS_RANDOM.VALUE)"
				+ "WHERE ROWNUM <= 4";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hAddress+'%');
			pstmt.setString(2, hName);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Hotel h = new Hotel();
				h.sethName(rset.getString("BS_TITLE"));
				h.sethAddress(rset.getString("BS_ADDRESS"));
				h.setPicInfo(rset.getString("LOCATION"));
				list.add(h);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Room> selectRoomList(Connection conn, String bsId){
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Room> list = new ArrayList<>();
		String sql = "SELECT ROOM_NUM,ROOM_NAME, CHECKIN,CHECKOUT,LOCATION,ROOM_INFO,ROOM_MAX,ROOM_PRICE "
					+"FROM TB_ROOM "
					+"WHERE BS_ID = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bsId);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Room r = new Room();
				r.setrNum(rset.getInt("ROOM_NUM"));
				r.setrName(rset.getString("ROOM_NAME"));
				r.setCheckin(rset.getString("CHECKIN"));
				r.setCheckout(rset.getString("CHECKOUT"));
				r.setPicInfo(rset.getString("LOCATION"));
				r.setrInfo(rset.getString("ROOM_INFO"));
				r.setrMax(rset.getInt("ROOM_MAX"));
				r.setPrice(rset.getInt("ROOM_PRICE"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public int insertBooking(Connection conn,Member loginUser,Room room){
	      int result = 0;
	      PreparedStatement pstmt = null;
	      String sql = "INSERT INTO TB_ROOM_BOOKING(ROOM_NUM, ROOM_USER, CHECKIN,CHECKOUT,PRICE) "
	            + "VALUES(?,?,?,?,?)";
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, room.getrNum());
	         pstmt.setString(2, loginUser.getUserId());
	         pstmt.setString(3, room.getCheckin());
	         pstmt.setString(4, room.getCheckout());
	         pstmt.setInt(5, room.getPrice());
	         result = pstmt.executeUpdate();
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      return result;
	   }
	public Room selectRoom(Connection conn, int rnum) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Room r = new Room();
		String sql = "SELECT ROOM_NUM, ROOM_PRICE,CHECKIN, CHECKOUT FROM TB_ROOM WHERE ROOM_NUM = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rnum);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				r.setrNum(rset.getInt("ROOM_NUM"));
				r.setPrice(rset.getInt("ROOM_PRICE"));
				r.setCheckin(rset.getString("CHECKIN"));
				r.setCheckout(rset.getString("CHECKOUT"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
}
