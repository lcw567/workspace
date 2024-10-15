package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class travelInfoController
 */
public class travelInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String trName = request.getParameter("travel");
		System.out.println(trName);
		TravelService tServ = new TravelService();
		Travel t = tServ.selectTravel(trName);
		char[] charArray = t.getTr_personnel().toCharArray();
		ArrayList<String> category = new ArrayList();
		for(int i = 0 ; i <charArray.length; i++) {
			int a = Integer.parseInt(charArray[i]+"");
			switch(a) {
			case 1:
				category.add("가족여행");
				break;
			case 2:
				category.add("친구들과");
				break;
			case 3:
				category.add("1인여행");
				break;
			case 4:
				category.add("커플여행");
				break;
			case 5:
				category.add("반려동물");
				break;
			case 6:
				category.add("친목모임");
				break;
			case 7:
				category.add("워크숍");
				break;
			case 8:
				category.add("아이들과");
				break;
			}
		}
		
		String[] strArr = t.getTrAddress().split(" ");
		String tAdd = strArr[0]+" "+strArr[1];
		ArrayList<Travel> tlist = tServ.selectNearbyTravel(tAdd,trName);
		for(Travel tra : tlist) {
			tra.setTrAddress(tAdd);
		}
		ArrayList<tReview> rlist = tServ.selectTReview(trName);
		HttpSession session = request.getSession();
		request.setAttribute("t", t);
		request.setAttribute("category",category);
		request.setAttribute("tlist", tlist);
		request.setAttribute("rlist", rlist);
		
		request.getRequestDispatcher("views/detail/tr_infoPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
