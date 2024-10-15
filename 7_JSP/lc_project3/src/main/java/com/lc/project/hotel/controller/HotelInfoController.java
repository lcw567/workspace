package com.lc.project.hotel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.hotel.model.vo.Hotel;
import com.lc.project.hotel.model.vo.Room;
import com.lc.project.hotel.service.HotelService;
import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HotelInfoController
 */
public class HotelInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String HotelName = request.getParameter("hotel");
		System.out.println(HotelName);
		HotelService hServ = new HotelService(); 
		Hotel h = hServ.selectHotel(HotelName);
		ArrayList<Room> rlist = hServ.selectRoomList(h.getBsId());
		String[] strArr = h.gethAddress().split(" ");
		String hAdd = strArr[0]+" "+strArr[1];
		ArrayList<Travel> tlist = new TravelService().selectNearbyTravel(hAdd," ");
		for(Travel tra : tlist) {
			tra.setTrAddress(hAdd);
		}
		ArrayList<Hotel> hlist = hServ.selectHotelList(hAdd,h.gethName());
		for(Hotel ht : hlist) {
			ht.sethAddress(hAdd);
		}
		request.setAttribute("h", h);
		request.setAttribute("hlist", hlist);
		request.setAttribute("tlist", tlist);
		request.setAttribute("rlist", rlist);
		request.getRequestDispatcher("views/detail/ht_infoPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
