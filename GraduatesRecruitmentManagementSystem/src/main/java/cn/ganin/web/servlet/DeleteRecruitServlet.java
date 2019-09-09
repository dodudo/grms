package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import cn.ganin.dao.RecruitDao;
import cn.ganin.entity.Recruit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteRecruitServlet")
public class DeleteRecruitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        RecruitDao dao = new RecruitDao();
        dao.deleteRecruit(Integer.parseInt(id));
        response.sendRedirect(request.getContextPath()+"/FindEnterpriseDataServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
