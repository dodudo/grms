package cn.ganin.web.servlet;

import cn.ganin.dao.EnterpriseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EnterpriseMana_DelServlet")
public class EnterpriseMana_DelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("get");
        new EnterpriseDao().delete(id);
        response.sendRedirect("/EnterpriseManaServlet");

    }
}
