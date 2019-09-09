package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdatePositionPublisState")
public class UpdatePositionPublisState extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String position_id = request.getParameter("position_id");
        String enterprise_id = request.getParameter("enterprise_id");
        PositionDao positionDao = new PositionDao();
        positionDao.updatePositionPublish(position_id);
        response.sendRedirect(request.getContextPath()+"/FindEnterpriseDataServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
