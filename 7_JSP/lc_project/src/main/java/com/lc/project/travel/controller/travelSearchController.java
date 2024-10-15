package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class travelSearchController
 */
@WebServlet(name = "search.tr", urlPatterns = { "/search.tr" })
public class travelSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TravelService tService = new TravelService();
		
		String browser = request.getParameter("browser");
		System.out.println(browser);
		
		request.setAttribute("browser", browser);
		
		ArrayList<Travel> slist = tService.searchTour(browser);
		request.setAttribute("slist", slist);
	    
		System.out.println(slist);
		
	    request.getRequestDispatcher("views/list/ht_listPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
