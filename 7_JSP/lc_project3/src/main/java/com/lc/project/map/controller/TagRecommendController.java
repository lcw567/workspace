package com.lc.project.map.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.map.service.MapService;
import com.lc.project.map.service.MapServiceImpl;
import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.model.vo.Travel;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class TagRecommendController
 */
public class TagRecommendController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TagRecommendController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      MapService mService = new MapServiceImpl();
      
      String personnel = request.getParameter("personnel");
      String location = request.getParameter("location");
      String theme = request.getParameter("theme");
      
      request.setAttribute("personnel", personnel);
      
      if(personnel.equals("가족여행")) {
         personnel = "1";
      } else if(personnel.equals("친구들과")) {
         personnel = "2";
      } else if(personnel.equals("1인여행")) {
         personnel = "3";
      } else if(personnel.equals("커플여행")) {
         personnel = "4";
      } else if(personnel.equals("반려동물")) {
         personnel = "5";
      } else if(personnel.equals("친목모임")) {
         personnel = "6";
      } else if(personnel.equals("워크숍")) {
         personnel = "7";
      } else {
         personnel = "8";
      }
      
//      System.out.println(personnel);
//      System.out.println(location);
//      System.out.println(theme);
      
      //추천 여행지 select
       request.setAttribute("location", location);
       request.setAttribute("theme", theme);
       
       ArrayList<Travel> trList = mService.selectTravelTag(personnel, location, theme);
       request.setAttribute("len", trList.size());
       request.setAttribute("trList", trList);
       
       //찜한 여행지 select
       HttpSession session = request.getSession();
       Member loginUser = (Member)session.getAttribute("loginUser");
       System.out.println(loginUser);
       session.setAttribute("loginUser", loginUser);
       
//      System.out.println(loginUser.getUserId());
       if(loginUser != null) {
          ArrayList<Travel> wishList = mService.selectWishList(loginUser.getUserId());
          request.setAttribute("wishList", wishList);
          System.out.println(wishList);
       }
       
       request.getRequestDispatcher("views/map/tagRecommendPage.jsp").forward(request, response);
       
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}
