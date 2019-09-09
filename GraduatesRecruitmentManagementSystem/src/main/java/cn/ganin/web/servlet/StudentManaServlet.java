package cn.ganin.web.servlet;

import cn.ganin.entity.Student;
import cn.ganin.util.DBHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/StudentManaServlet")
public class StudentManaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if("equery".equals(action)){
            this.equery(request,response);
        }

    }
    public  void equery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Student> list = new ArrayList<>();
        Connection conn= null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Statement stat = null;
//        DButil db = new DButil();

        try{
            String sql = "select * from student";
//            DButil myDB=new DButil();
//            ResultSet rs = myDB.query(sql);

            conn = DBHelper.getConnection();
//            stmt = conn.prepareStatement(sql);
            stat = conn.createStatement();
            rs = stat.executeQuery(sql);

            while (rs.next()){
                Student student = new Student();
                student.setStu_id(rs.getInt("stu_id"));
                student.setStu_name(rs.getString("stu_name"));
                student.setStu_sex(rs.getString("stu_sex"));
                student.setStu_age(rs.getString("stu_age"));
                student.setStu_email(rs.getString("stu_email"));
                student.setStu_phone(rs.getString("stu_phone"));
                student.setStu_college_name(rs.getString("stu_college_name"));
                student.setStu_major_name(rs.getString("stu_major_name"));
//                student.setSum(rs.getString("sum"));
                list.add(student);
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        for(Student student :list){
            String sql2="select COUNT(*) as 'sum' from student s join resume r on s.stu_id=r.resume_stu_id where s.stu_id ="+student.getStu_id();

            try{
                stat = conn.createStatement();
                ResultSet rs2=stat.executeQuery(sql2);
                if(rs2.next()){
                    student.setSum(rs2.getString(1));
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        System.out.println(list);
        request.setAttribute("list",list);

//        db.close(stmt,conn);
        request.getRequestDispatcher("/Student_Management.jsp").forward(request,response);
    }

}
