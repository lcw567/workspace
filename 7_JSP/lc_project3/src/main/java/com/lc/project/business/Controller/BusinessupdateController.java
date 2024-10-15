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

        // Business ��ü ����
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

        // BusinessService �ν��Ͻ� ����
        BusinessService businessService = new BusinessServiceImpl();
        boolean updateSuccess = businessService.updateBusiness(b);

        // ���� ���� �� ������������ �����̷�Ʈ
        if (updateSuccess) {
            // ����Ͻ� ���� ������Ʈ �� ���ǿ� ����
            HttpSession session = request.getSession();
            session.setAttribute("loginbs", b); // ������ ����Ͻ� ��ü ����

            response.sendRedirect(request.getContextPath() + "/views/common/myPage2.jsp?modalMessage=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/views/common/myPage2.jsp?modalMessage=fail");
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
