package com.lc.project.member.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lc.project.member.Service.MemberService;
import com.lc.project.member.Service.MemberServiceImpl;
import com.lc.project.member.model.vo.Member;

/**
 * Servlet implementation class MemberloginController
 */
public class MemberloginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MemberloginController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        Member m = new Member();
        m.setUserId(request.getParameter("userId"));
        m.setUserPwd(request.getParameter("userPwd"));
        MemberService memberService = new MemberServiceImpl(); 
        Member loginUser = memberService.loginMember(m);
        
        if (loginUser != null) {
            request.getSession().setAttribute("loginUser", loginUser);
            
            String userName = loginUser.getUserName();
            
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>로그인 성공</title></head><body>");
            response.getWriter().write("<script>alert('환영합니다, " + userName + "님!');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
        } else {
            System.out.println("로그인실패");
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>로그인실패</title></head><body>");
            response.getWriter().write("<script>alert('아이디, 비밀번호를 확인해주세요');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/views/member/loginviewmember.jsp';</script>");
            response.getWriter().write("</body></html>");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}