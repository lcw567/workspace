package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessService;
import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BusinessupdateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BusinessupdateController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Business 객체 생성
        Business b = new Business(
            request.getParameter("bsName"),
            request.getParameter("bsId"),
            request.getParameter("bsPwd"),
            request.getParameter("bsEmail"),
            request.getParameter("bsTel"),
            request.getParameter("bsAddress"),
            request.getParameter("bslocation"),
            request.getParameter("bsTitle")
        );

        // BusinessService 인스턴스 생성
        BusinessService businessService = new BusinessServiceImpl();
        boolean updateSuccess = businessService.updateBusiness(b);

        // 수정 성공 시 마이페이지로 리다이렉트
        if (updateSuccess) {
            // 비즈니스 정보 업데이트 후 세션에 저장
            HttpSession session = request.getSession();
            session.setAttribute("loginbs", b); // 수정된 비즈니스 객체 저장

            response.sendRedirect(request.getContextPath() + "/views/common/myPage2.jsp?modalMessage=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/views/common/myPage2.jsp?modalMessage=fail");
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
