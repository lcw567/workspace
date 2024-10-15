package com.lc.project.map.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.map.service.HotelmapImpl;
import com.lc.project.map.service.HotelmapService;
import com.lc.project.map.service.TravelhotelImpl;
import com.lc.project.map.service.TravelhotelService;
import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.model.vo.Travel;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Travelhotelcontroller
 */
public class Travelhotelcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Travelhotelcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member loginUser = (Member) session.getAttribute("loginUser");

        if (loginUser == null) {
            session.setAttribute("alertMsg", "로그인이 필요합니다.");
            response.sendRedirect(request.getContextPath() + "/loginPage");
            return;
        }
        System.out.println(loginUser);
        // 찜한 여행지 목록을 서비스에서 가져옴
        TravelhotelService travelService = new TravelhotelImpl();
        ArrayList<Travel> wishList = travelService.getWishList(loginUser.getUserId());
        
        // 호텔 정보 가져오기
        HotelmapService hotelService = new HotelmapImpl();
        String[] strArr = wishList.get(0).getTrAddress().split(" ");
		String add = strArr[0]+" "+strArr[1];
        ArrayList<Hotel> hotelList = hotelService.getHotelList(add);
        System.out.println(hotelList);
//        System.out.println(wishList);
        // 가져온 찜한 여행지 목록을 request 객체에 저장
        request.setAttribute("wishList", wishList);
        request.setAttribute("hotelList", hotelList); // 호텔 목록

        // map.jsp로 포워딩
        request.getRequestDispatcher("/views/map/map.jsp").forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
