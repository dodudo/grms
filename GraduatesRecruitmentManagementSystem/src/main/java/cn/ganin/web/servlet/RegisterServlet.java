package cn.ganin.web.servlet;

import cn.ganin.dao.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String bas_name = req.getParameter("new_name");
        String bas_pwd = req.getParameter("new_pwd");
        String bas_sex = req.getParameter("new_sex");
        String bas_age = req.getParameter("new_age");
        String bas_city = req.getParameter("new_city");
        String bas_workexper = req.getParameter("new_workexper");
        String bas_call = req.getParameter("new_call");
        String bas_email = req.getParameter("new_email");
        String bas_icon = req.getParameter("new_icon");
        UserDAO userDAO = new UserDAO();
        try {
            userDAO.register(bas_name,bas_pwd,bas_sex,bas_age,bas_city,bas_workexper,bas_call,bas_email,bas_icon);
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
