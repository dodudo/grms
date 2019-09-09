package cn.ganin.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String p_num = req.getParameter("p_num");
//        String c_name = req.getParameter("c_name");
//        String p_name = req.getParameter("p_name");
//        String p_salary = req.getParameter("p_salary");
//        String p_state = req.getParameter("p_state");
//        String p_number = req.getParameter("p_number");
//        String p_address = req.getParameter("p_address");
//        String p_general_add = req.getParameter("p_general_add");
//        String p_experience = req.getParameter("p_experience");
//        String p_Bright_spot = req.getParameter("p_Bright_spot");
//        String p_type = req.getParameter("p_type");
//        String p_msg = req.getParameter("p_msg");
//        DBHelper db = new DBHelper();
//        String sql = "select * from position";
//        if (p_num != null && !p_num.equals("")) {
//            sql += "where p_num like '%"+p_num + "%'";
//        }
//        if (c_name != null && !c_name.equals("")) {
//            sql += "where c_name like '%"+c_name + "%'";
//        }
//        if (p_name != null && !p_name.equals("")) {
//            sql += "where p_name like '%"+p_name + "%'";
//        }
//        if (p_salary != null && !p_salary.equals("")) {
//            sql += "where p_salary like '%"+p_salary + "%'";
//        }
//        if (p_state != null && !p_state.equals("")) {
//            sql += "where p_state like '%"+p_state + "%'";
//        }
//        if (p_number != null && !p_number.equals("")) {
//            sql += "where p_number like '%"+p_number + "%'";
//        }
//        if (p_address != null && !p_address.equals("")) {
//            sql += "where p_address like '%"+p_address + "%'";
//        }
//        if (p_general_add != null && !p_general_add.equals("")) {
//            sql += "where p_general_add like '%"+p_general_add + "%'";
//        }
//        if (p_experience != null && !p_experience.equals("")) {
//            sql += "where p_experience like '%"+p_experience + "%'";
//        }
//        if (p_Bright_spot != null && !p_Bright_spot.equals("")) {
//            sql += "where p_Bright_spot like '%"+p_Bright_spot + "%'";
//        }
//        if (p_type != null && !p_type.equals("")) {
//            sql += "where p_type like '%"+p_type + "%'";
//        }
//        if (p_msg != null && !p_msg.equals("")) {
//            sql += "where p_msg like '%"+p_msg + "%'";
//        }
//        try {
//            req.setAttribute("search", db.queryReturnList(sql));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
       req.getRequestDispatcher("/result.jsp").forward(req,resp);
    }
}
