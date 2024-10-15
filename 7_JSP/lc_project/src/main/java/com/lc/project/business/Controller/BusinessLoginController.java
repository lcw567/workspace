package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessService;
import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessLoginController
 */
public class BusinessLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessLoginController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        Business b = new Business();
        b.setBsId(request.getParameter("bsId"));
        b.setBsPwd(request.getParameter("bsPwd"));
        b.setBslocation(request.getParameter("bslocation"));
        
        BusinessService businessService = new BusinessServiceImpl(); 
        Business loginbs = businessService.loginBusiness(b);
        
        
        if (loginbs != null) {
        	
        	 String bsName = loginbs.getBsName();
        	 
            request.getSession().setAttribute("loginbs", loginbs);
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>로그인 성공</title></head><body>");
            response.getWriter().write("<script>alert('환영합니다, " + bsName + "님!');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
        } else {
        	System.out.println("로그인실패");
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>로그인 실패</title></head><body>");
            response.getWriter().write("<script>alert('아이디, 비밀번호를 확인해주세요');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/views/member/loginviewbusiness.jsp';</script>");
            response.getWriter().write("</body></html>");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}