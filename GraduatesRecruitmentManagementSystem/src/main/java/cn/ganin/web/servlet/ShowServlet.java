package cn.ganin.web.servlet;

import cn.ganin.dao.*;
import cn.ganin.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String stu_num = req.getParameter("stu_id");
        StudentDAO studentDAO = new StudentDAO();
        Student student = studentDAO.findOne(Integer.parseInt(stu_num));
//        Student student = (Student) req.getAttribute("student");
        System.out.println(student);
        StudentDataBean studentDataBean = new StudentDataBean();
        studentDataBean.setStudent(student);

        ResumeDAO resumeDAO = new ResumeDAO();
        List<Resume> resumeList = resumeDAO.findResume(student.getStu_id());
        studentDataBean.setResumeIdList(resumeList);
        RecruitDao recruitDao = new RecruitDao();
        PositionDao positionDao = new PositionDao();
        EnterpriseDao enterpriseDao = new EnterpriseDao();
        List<Recruit> recruitList = recruitDao.findRecruitResume(student.getStu_id());
        ArrayList<StudentPositionBean> studentPostionList = new ArrayList<StudentPositionBean>();

        for(Recruit recruit : recruitList){
            StudentPositionBean studentPositionBean = new StudentPositionBean();
            int recruit_resume_id = recruit.getRecruit_resum_id();

            Resume resume = resumeDAO.getResumeById(recruit_resume_id);
            studentPositionBean.setStu_id(student.getStu_id());
            studentPositionBean.setResume_id(resume.getResume_id());
            studentPositionBean.setResume_name(resume.getResume_name());
            studentPositionBean.setResume_time(resume.getResume_time());

            int recruit_position_id = recruit.getRecruit_position_id();
            Position position = positionDao.findOne(recruit_position_id);
            studentPositionBean.setPosition_id(position.getPosition_id());
            studentPositionBean.setPosition_name(position.getPosition_name());

            int recruit_enterprise_id = recruit.getRecruit_enterprise_id();
            System.out.println(recruit_enterprise_id);
            Enterprise enterprise = enterpriseDao.findOne(recruit_enterprise_id);
            System.out.println(enterprise);
            studentPositionBean.setEnterprise_name(enterprise.getEnterprise_name());//企业名字
//            System.out.println(enterprise);

            String recruit_state = recruit.getRecruit_state();
            studentPositionBean.setRecruit_state(recruit_state);
            int recruit_id = recruit.getRecruit_id();
            System.out.println("rec_id"+recruit_id);
            studentPositionBean.setRecruit_id(recruit_id);
            studentPostionList.add(studentPositionBean);
        }

        studentDataBean.setStudentPostionList(studentPostionList);
        HttpSession session = req.getSession();
        session.setAttribute("StudentData",studentDataBean);
        System.out.println(studentDataBean);
        resp.sendRedirect(req.getContextPath()+"/myself.jsp");


//        int resume_stu_id = Integer.parseInt(req.getParameter("resume_stu_id"));
//        System.out.println(resume_stu_id);
//        try {
//            Resume resume = resumeDAO.Findid(resume_stu_id);
//            HttpSession resumeSession = req.getSession();
//            resumeSession.setAttribute("resume", resume);
//            req.getRequestDispatcher("/myself.jsp").forward(req, resp);
//
////                Resume resume = resumeDAO.getResumeById(resume_id);
//        }catch (Exception e) {
//            e.printStackTrace();
//        }


        }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
