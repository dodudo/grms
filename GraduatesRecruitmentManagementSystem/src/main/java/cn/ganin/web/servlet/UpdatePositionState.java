package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdatePositionState")
public class UpdatePositionState extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String positionState = request.getParameter("positionState");
        String positionID = request.getParameter("positionID");
        String id = request.getParameter("id");
        PositionDao positionDao = new PositionDao();
        if (positionState.equals("招聘中")){
            positionState = "招聘结束";
        }else if (positionState.equals("招聘结束")){
            positionState = "招聘中";
        }else {
            positionState = "招聘结束";
        }
        positionDao.updatePositionState(positionID,positionState);
        response.sendRedirect(request.getContextPath()+"/FindEnterpriseDataServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
