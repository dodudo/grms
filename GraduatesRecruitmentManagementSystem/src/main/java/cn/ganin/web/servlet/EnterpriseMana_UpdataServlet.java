package cn.ganin.web.servlet;


import cn.ganin.dao.EnterpriseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EnterpriseMana_UpdataServlet")
public class EnterpriseMana_UpdataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("get"));
        new EnterpriseDao().updateEnterprise(id);
        response.sendRedirect("/EnterpriseManaServlet");

    }
}
