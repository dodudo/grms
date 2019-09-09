package cn.ganin.web.servlet;

import cn.ganin.dao.EnterpriseDao;
import cn.ganin.entity.Enterprise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EnterpriseRegister")
public class EnterpriseRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String enterprise_username = request.getParameter("enterprise_username");
        String enterprise_password = request.getParameter("enterprise_password");
        Enterprise enterprise = new Enterprise();
        enterprise.setEnterprise_username(enterprise_username);
        enterprise.setEnterprise_password(enterprise_password);
        EnterpriseDao dao = new EnterpriseDao();
        dao.addEnterprise(enterprise);
        response.getWriter().print("<script>alert('注册成功!');window.location='"+request.getContextPath()+"/login.jsp';</script>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
