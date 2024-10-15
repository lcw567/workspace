package com.lc.project.rentcar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class RentCarBookingController
 */
public class RentCarBookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RentCarBookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		int day = 1;
		day = Integer.parseInt(endDate.substring(8)) - Integer.parseInt(startDate.substring(8));
		String location = request.getParameter("rent-location");
		
		request.setAttribute("day", day);
		request.setAttribute("startDate", startDate);
		request.setAttribute("endDate", endDate);
		request.setAttribute("location", location);
		request.getRequestDispatcher("list.rc").forward(request, response);
		
		System.err.println(startDate);
		System.out.println(endDate);
		System.out.println(location);
		
		
		
		System.out.println(Integer.parseInt(startDate.substring(8)));
		String carNum = request.getParameter("carNum");
		System.out.println(carNum);
		String loginUser = request.getParameter("loginUser");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
