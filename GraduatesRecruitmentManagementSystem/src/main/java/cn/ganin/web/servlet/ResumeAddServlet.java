package cn.ganin.web.servlet;

import cn.ganin.dao.ResumeDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//import dao.StudentDAO;

@WebServlet("/servlet/ResumeAddServlet")
public class ResumeAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String resume_name = req.getParameter("resume_name");
        int resume_stu_id = Integer.parseInt(req.getParameter("resume_stu_id"));
        String resume_stu_name = req.getParameter("resume_stu_name");
        String resume_stu_sex = req.getParameter("resume_stu_sex");
        String resume_stu_phone = req.getParameter("resume_stu_phone");
        String resume_stu_email = req.getParameter("resume_stu_email");
        String resume_school = req.getParameter("resume_school");
        String resume_major = req.getParameter("resume_major");
        String resume_edu = req.getParameter("resume_edu");
        String resume_start_school = req.getParameter("resume_start_school");
        String resume_end_school = req.getParameter("resume_end_school");
        String resume_desc = req.getParameter("resume_desc");
        String resume_internship = req.getParameter("resume_internship");
        String resume_practice = req.getParameter("resume_practice");
        String resume_skill = req.getParameter("resume_skill");
        String resume_hobby = req.getParameter("resume_hobby");
        String resume_works = req.getParameter("resume_works");
//        String resume_enclosure = req.getParameter("resume_enclosure");
        ResumeDAO resumeDAO = new ResumeDAO();
        try {
            resumeDAO.resumeAdd(resume_name,resume_stu_id,resume_stu_name,resume_stu_sex,resume_stu_phone,resume_stu_email,resume_school,
                    resume_major,resume_edu,resume_start_school,resume_end_school,resume_desc,resume_internship,
                    resume_practice,resume_skill,resume_hobby,resume_works);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        req.getRequestDispatcher("/myself.jsp").forward(req,resp);

        resp.sendRedirect(req.getContextPath()+"/ShowServlet?stu_id="+resume_stu_id);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
