package com.lc.project.business.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lc.project.business.Service.BusinessService;
import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

/**
 * Servlet implementation class BusinesssearchpwdController
 */
public class BusinesssearchpwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinesssearchpwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

        Business b = new Business();
        b.setBsName(request.getParameter("bsName"));
        b.setBsId(request.getParameter("bsId"));

        BusinessService businessService = new BusinessServiceImpl();
        Business searchpwd = businessService.searchpwdBusiness(b);

        if (searchpwd != null) {
            String foundPwd = searchpwd.getBsPwd();

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>비밀번호 찾기 결과</title></head><body>");
            response.getWriter().write("<script>alert('찾은 비밀번호 : " + foundPwd + "');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
        } else {
            // 아이디를 찾지 못한 경우
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>비밀번호 찾기 실패</title></head><body>");
            response.getWriter().write("<script>alert('비밀번호를 찾을 수 없습니다.');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
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