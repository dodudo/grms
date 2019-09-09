package cn.ganin.web.servlet;

import cn.ganin.dao.StudentDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentMana_DelServlet")
public class StudentMana_DelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
    protected  void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{

//        int id = Integer.parseInt(req.getParameter("get"));
        String id = request.getParameter("get");
        new StudentDAO().delete(id);
        response.sendRedirect("/dologin.jsp");

    }
}
