package cn.ganin.web.servlet;

import cn.ganin.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();

        String bas_name = req.getParameter("bas_name");
        String bas_pwd = req.getParameter("bas_pwd");

        try {
            if(UserDAO.checkLogin(bas_name,bas_pwd)){
                req.setAttribute("bas_name",bas_name);
                req.getRequestDispatcher("/myself.jsp").forward(req,resp);
            }else {
//                req.setAttribute("inf","您的账户或密码错误，请重新登录！");
//                req.getRequestDispatcher("/login.jsp").forward(req,resp);

                out.print("<script language='javascript'>alert('您的账户或密码错误，请重新登录！！');window.location.href='/login.jsp';</script>");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
