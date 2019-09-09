package cn.ganin.web.servlet;

import cn.ganin.entity.Position;
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

@WebServlet("/PositionManaServlet")
public class PositionManaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "select * from position ";
//
        Connection conn= null;
        PreparedStatement stmt = null;


        List<Position> list = new ArrayList<>();
        try{
            conn = DBHelper.getConnection();
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){

                Position po = new Position();
                po.setPosition_id(rs.getInt("position_id"));
                po.setPosition_name(rs.getString("position_name"));
                po.setPosition_address(rs.getString("position_address"));
                po.setPosition_desc(rs.getString("position_desc"));
                po.setPosition_duty(rs.getString("position_duty"));
                po.setPosition_edit_time(rs.getDate("position_edit_time"));
                po.setPosition_edu(rs.getString("position_edu"));
                po.setPosition_enterprise_id(rs.getInt("position_enterprise_id"));
                po.setPosition_experience(rs.getString("position_experience"));
//                po.setPosition_publish_state(rs.getString("position_publish_state"));
                po.setPosition_salary(rs.getString("position_salary"));
                po.setPosition_start_time(rs.getDate("position_start_time"));
                po.setPosition_end_time(rs.getDate("position_end_time"));
                po.setPosition_time(rs.getString("position_time"));
                po.setPosition_num(rs.getString("position_num"));


                list.add(po);

            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("list",list);

        request.getRequestDispatcher("/Position_Management.jsp").forward(request,response);

    }
}
