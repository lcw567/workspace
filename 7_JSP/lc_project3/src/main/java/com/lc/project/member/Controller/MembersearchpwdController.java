package com.lc.project.member.Controller;

import java.io.IOException;

import com.lc.project.member.Service.MemberService;
import com.lc.project.member.Service.MemberServiceImpl;
import com.lc.project.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MembersearchpwdController
 */
public class MembersearchpwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MembersearchpwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

        Member m = new Member();
        m.setUserName(request.getParameter("userName"));
        m.setUserId(request.getParameter("userId"));

        MemberService memberService = new MemberServiceImpl();
        Member searchpwd = memberService.searchpwdMember(m);

        if (searchpwd != null) {
            String foundPwd = searchpwd.getUserPwd();

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>비밀번호 찾기 결과</title></head><body>");
            response.getWriter().write("<script>alert('찾은 비밀번호 : " + foundPwd+ "');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
        } else {
            // ���̵� ã�� ���� ���
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