package com.lc.project.travel.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.service.TravelService;

/**
 * Servlet implementation class locationList
 */
@WebServlet(name = "location.tr", urlPatterns = { "/location.tr" })
public class travelListController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelListController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String location = request.getParameter("location");
      ArrayList<Travel> list1 = new TravelService().travelList(location);
      ArrayList<Travel> list2 = new TravelService().foodList(location);
      ArrayList<Travel> list3 = new TravelService().festivalList(location);
      
      request.setAttribute("list1", list1);
      request.setAttribute("list2", list2);
      request.setAttribute("list3", list3);
      request.setAttribute("location", location);
      
      request.getRequestDispatcher("views/list/tr_listPage.jsp").forward(request, response);
      }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}