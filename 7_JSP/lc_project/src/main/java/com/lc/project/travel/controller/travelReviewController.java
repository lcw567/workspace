package com.lc.project.travel.controller;

import java.io.IOException;
import java.net.URLEncoder;

import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class travelReviewController
 */
@WebServlet(name = "review.tra", urlPatterns = { "/review.tra" })
public class travelReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String review = request.getParameter("review");
		String userId = request.getParameter("userId");
		String travel = request.getParameter("travel");
		int result = new TravelService().insertReview(review,userId,travel);
		String encodedTravel = URLEncoder.encode(travel, "UTF-8");
		if(result >0) {
			response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg","로그인 후 이용가능합니다.");
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
