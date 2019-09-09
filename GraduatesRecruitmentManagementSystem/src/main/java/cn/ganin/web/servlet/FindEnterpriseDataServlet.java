package cn.ganin.web.servlet;

import cn.ganin.dao.EnterpriseDao;
import cn.ganin.dao.PositionDao;
import cn.ganin.dao.RecruitDao;
import cn.ganin.dao.ResumeDAO;
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

@WebServlet("/FindEnterpriseDataServlet")
public class FindEnterpriseDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session1 = request.getSession();
        Enterprise enterprise1 = (Enterprise) session1.getAttribute("enterprise");
        int id = enterprise1.getEnterprise_id();
        EnterpriseDao dao = new EnterpriseDao();
        Enterprise enterprise = dao.findOne(id);
        EnterpriseDataBean enterpriseDataBean = new EnterpriseDataBean();
        enterpriseDataBean.setEnterprise(enterprise);

        PositionDao positionDao = new PositionDao();
        List<Position> positionPublishedList = positionDao.findPublishedPosition(id);
        enterpriseDataBean.setPositionPublishedList(positionPublishedList);


        List<Position> positionPublishingList = positionDao.findPublishingPosition(id);
        enterpriseDataBean.setPositionPublishingList(positionPublishingList);

        RecruitDao recruitDao = new RecruitDao();
        ResumeDAO resumeDAO = new ResumeDAO();
        List<Recruit> recruitList = recruitDao.findRecruit(enterprise.getEnterprise_id());
        ArrayList<EnterpriseResumeBean> enterpriseResumeList = new ArrayList<EnterpriseResumeBean>();
        for (Recruit recruit : recruitList) {
            EnterpriseResumeBean enterpriseResumeBean = new EnterpriseResumeBean();
            int recruit_position_id = recruit.getRecruit_position_id();
            Position position = positionDao.findOne(recruit_position_id);
            enterpriseResumeBean.setEnterprise_id(enterprise.getEnterprise_id());

            enterpriseResumeBean.setPosition_id(position.getPosition_id());
            enterpriseResumeBean.setPosition_name(position.getPosition_name());
            enterpriseResumeBean.setPosition_end_time(position.getPosition_end_time());

            int recruit_resum_id = recruit.getRecruit_resum_id();
            Resume resume = resumeDAO.getResumeById(recruit_resum_id);
            enterpriseResumeBean.setResume_id(resume.getResume_id());
            enterpriseResumeBean.setStu_name(resume.getResume_stu_name());

            String recruit_state = recruit.getRecruit_state();
            enterpriseResumeBean.setRecruit_state(recruit_state);
            int recruit_id = recruit.getRecruit_id();
            enterpriseResumeBean.setRecruit_id(recruit_id);

            enterpriseResumeList.add(enterpriseResumeBean);

        }
        enterpriseDataBean.setEnterpriseResumeList(enterpriseResumeList);

        HttpSession session = request.getSession();
        session.setAttribute("EnterpriseData", enterpriseDataBean);

        response.sendRedirect(request.getContextPath() + "/busine.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
