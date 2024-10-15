package com.lc.project.hotel.controller;

import java.io.IOException;
import java.net.URLEncoder;

import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.hotel.service.HotelService;
import com.lc.project.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class HotelBookingController
 */
@WebServlet(name = "hotel.booking", urlPatterns = { "/hotel.booking" })
public class HotelBookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelBookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		int rnum = Integer.parseInt(request.getParameter("rnum"));
		System.out.println(rnum);
		String hName = (String)request.getParameter("hName");
		System.out.println(hName);
		Room room = new HotelService().selectRoom(rnum);
		System.out.println(room);
		Hotel hotel = new HotelService().selectHotel(hName);
		System.out.println(hotel);
		Member loginUser = (Member)session.getAttribute("loginUser");
		String encodedHotel = URLEncoder.encode(hotel.gethName(), "UTF-8");
		if(loginUser == null) {
			session.setAttribute("alertMsg","로그인이 필요한 기능입니다.");
			response.sendRedirect(request.getContextPath()+"/hotel.info?hotel="+encodedHotel);
		}else {
			int result = new HotelService().insertBooking(loginUser,room);
			if(result>0) {
				response.sendRedirect(request.getContextPath()+"/views/common/paysuc.jsp");
			}else {
				session.setAttribute("alertMsg","예약 실패 이미 예약된 방 입니다.");
				response.sendRedirect(request.getContextPath()+"/hotel.info?hotel="+encodedHotel);
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
