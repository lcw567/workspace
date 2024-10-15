package com.lc.project.business.Controller;

import java.io.IOException;
import com.lc.project.business.Service.BusinessService;
import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinesssearchidController
 */
public class BusinesssearchidController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinesssearchidController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Business b = new Business();
        b.setBsName(request.getParameter("bsName"));
        b.setBsPwd(request.getParameter("bsPwd"));

        BusinessService businessService = new BusinessServiceImpl();
        Business searchid = businessService.searchidBusiness(b);

        if (searchid != null) {
            // ���̵� ã�� ���
            String foundId = searchid.getBsId();

            // JSP �������� �����̷�Ʈ�Ͽ� alert�� ���̵� ǥ��
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>���̵� ã�� ���</title></head><body>");
            response.getWriter().write("<script>alert('ã�� ���̵� : " + foundId + "');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
            response.getWriter().write("</body></html>");
        } else {
            // ���̵� ã�� ���� ���
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write("<html><head><title>���̵� ã�� ����</title></head><body>");
            response.getWriter().write("<script>alert('���̵� ã�� �� �����ϴ�.');</script>");
            response.getWriter().write("<script>window.location.href = '" + request.getContextPath() + "/index.jsp';</script>");
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