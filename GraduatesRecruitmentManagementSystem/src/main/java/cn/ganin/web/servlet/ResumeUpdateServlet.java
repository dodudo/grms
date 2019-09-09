package cn.ganin.web.servlet;

import cn.ganin.dao.ResumeDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/servlet/ResumeUpdateServlet")
public class ResumeUpdateServlet extends HttpServlet {
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
        int resume_id = Integer.parseInt(req.getParameter("resume_id"));
//        String resume_enclosure = req.getParameter("resume_enclosure");
        ResumeDAO resumeDAO = new ResumeDAO();
        try {
//            Connection con = DBHelper.getConnection();
//            String sql = "update 'resume' set 'resume_name'=?,'resume_stu_id'=?,'resume_stu_name'=?,'resume_stu_sex'=?,'resume_stu_phone'=?,'resume_stu_email'=?,'resume_school'=?,'resume_major'=?,'resume_edu'=?,'resume_start_school'=?,'resume_end_school'=?,'resume_desc'=?,'resume_internship'=?,'resume_practice'=?,'resume_skill'=?,'resume_hobby'=?,'resume_works'=? where 'resume_id'=?";
            resumeDAO.resumeUpdate(resume_name,resume_stu_id,resume_stu_name,resume_stu_sex,resume_stu_phone,resume_stu_email,resume_school,
                    resume_major,resume_edu,resume_start_school,resume_end_school,resume_desc,resume_internship,
                    resume_practice,resume_skill,resume_hobby,resume_works,resume_id);
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1,resume_name);
//            ps.setInt(2,resume_stu_id);
//            ps.setString(3,resume_stu_name);
//            ps.setString(4,resume_stu_sex);
//            ps.setString(5,resume_stu_phone);
//            ps.setString(6,resume_stu_email);
//            ps.setString(7,resume_school);
//            ps.setString(8,resume_major);
//            ps.setString(9,resume_edu);
//            ps.setString(10,resume_start_school);
//            ps.setString(11,resume_end_school);
//            ps.setString(12,resume_desc);
//            ps.setString(13,resume_internship);
//            ps.setString(14,resume_practice);
//            ps.setString(15,resume_skill);
//            ps.setString(16,resume_hobby);
//            ps.setString(17,resume_works);
//            con.close();

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
