package com.lc.project.travel.controller;

import java.io.IOException;
import java.net.URLEncoder;

import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class travelInsertWishController
 */
@WebServlet(name = "insertwish.tr", urlPatterns = { "/insertwish.tr" })
public class travelInsertWishController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelInsertWishController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		String travel = request.getParameter("travel");
		String encodedTravel = URLEncoder.encode(travel, "UTF-8");
		int count = new TravelService().countWish(loginUser.getUserId());
		if(count>=5) {
			session.setAttribute("alertMsg", "찜하기는 최대 5개까지만 가능합니다.");
			response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
		}else {
			int result = new TravelService().insertWish(loginUser.getUserId(),travel);	
			if(result >0) {
				response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
			}else {
				session.setAttribute("alertMsg", ".");
				response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
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
