package com.lc.project.rentcar.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectDateController
 */
public class SelectDateController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectDateController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String startDate = request.getParameter("startDate");
      String endDate = request.getParameter("endDate");
      
      if(endDate.length()<1) {
         HttpSession session = request.getSession();
         session.setAttribute("alertMsg", "반납일 설정 해주세요.");
         request.getRequestDispatcher("list.rc").forward(request, response);
      } else {
         int day = Integer.parseInt(endDate.substring(8)) + 1 - Integer.parseInt(startDate.substring(8));
         String location = request.getParameter("rent-location");
         
         request.setAttribute("day", day);
         request.setAttribute("startDate", startDate);
         request.setAttribute("endDate", endDate);
         request.setAttribute("location", location);
         request.getRequestDispatcher("list.rc").forward(request, response);
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