package com.lc.project.member.Controller;

import java.io.IOException;

import com.lc.project.hotel.model.vo.Room;
import com.lc.project.member.Service.MemberService;
import com.lc.project.member.Service.MemberServiceImpl;
import com.lc.project.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberupdateController
 */
public class MemberupdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberupdateController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

        // Member ��ü ����
        Member m = new Member(
            request.getParameter("userName"),
            request.getParameter("userId"),
            request.getParameter("userPwd"),
            request.getParameter("tel"),
            request.getParameter("address")
        );

        // MemberService �ν��Ͻ� ����
        MemberService memberService = new MemberServiceImpl();
        boolean updateSuccess = memberService.updateMember(m);

        
        if (updateSuccess) {
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", m);
            Room room = new MemberServiceImpl().selectRoom(m);
    		request.setAttribute("room", room);
    		request.getRequestDispatcher("views/common/myPage.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/views/common/myPage.jsp?modalMessage=failure");
        }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
