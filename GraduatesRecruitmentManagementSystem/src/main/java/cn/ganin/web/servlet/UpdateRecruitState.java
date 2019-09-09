package cn.ganin.web.servlet;

import cn.ganin.dao.RecruitDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateRecruitState")
public class UpdateRecruitState extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String recruit_id = request.getParameter("recruit_id");
        RecruitDao recruitDao = new RecruitDao();
        recruitDao.updateRecruitState(recruit_id);
        response.sendRedirect(request.getContextPath()+"/FindEnterpriseDataServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
