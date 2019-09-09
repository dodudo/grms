package cn.ganin.web.servlet;


import cn.ganin.entity.Enterprise;
import cn.ganin.util.DBHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet( "/EnterpriseManaServlet")
public class EnterpriseManaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Enterprise> list = new ArrayList<>();
        try {
            String sql = "select * from enterprise ";
//        DButil myDB=new DButil();
//        ResultSet rs = myDB.query(sql);

            Connection conn= null;
            PreparedStatement stmt = null;
            conn = DBHelper.getConnection();
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){

                Enterprise en = new Enterprise();
                en.setEnterprise_id(rs.getInt("enterprise_id"));
                en.setEnterprise_name(rs.getString("enterprise_name"));
                en.setEnterprise_address(rs.getString("enterprise_address"));
                en.setEnterprise_contact(rs.getString("enterprise_contact"));
                en.setEnterprise_desc(rs.getString("enterprise_desc"));
                en.setEnterprise_email(rs.getString("enterprise_email"));
                en.setEnterprise_nature(rs.getString("enterprise_nature"));
                en.setEnterprise_phone(rs.getString("enterprise_phone"));
                en.setEnterprise_website(rs.getString("enterprise_website"));
                en.setEnterprise_scale(rs.getString("enterprise_scale"));
                en.setEnterprise_state(rs.getString("enterprise_state"));
                list.add(en);


            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("list",list);

        request.getRequestDispatcher("/Enterprise_Management.jsp").forward(request,response);

    }
}
