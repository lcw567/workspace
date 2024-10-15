package com.lc.project.travel.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.URLEncoder;

import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.service.TravelService;

/**
 * Servlet implementation class wishDeleteController
 */
public class wishDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wishDeleteController() {
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
		int result = new TravelService().deleteWish(loginUser.getUserId(),travel);	
		if(result >0) {
			response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
		}else {
			session.setAttribute("alertMsg", "실패");
			response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
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
