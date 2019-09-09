package cn.ganin.web.servlet;

import cn.ganin.dao.StudentDAO;
import cn.ganin.entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stu_phone = request.getParameter("stu_phone");
        String stu_password = request.getParameter("stu_password");
        Student student = new Student();
        student.setStu_phone(stu_phone);
        student.setStu_password(stu_password);
        StudentDAO dao = new StudentDAO();
        dao.addStudent(student);

        response.sendRedirect("login.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
