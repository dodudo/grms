package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import cn.ganin.entity.Position;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/FindPositionByName")
public class FindPositionByName extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        PositionDao positionDao = new PositionDao();
        List<Position> positionList = positionDao.findPositionByName(name,id);
        HttpSession session = request.getSession();
        session.setAttribute("positionList",positionList);

        request.getRequestDispatcher("/enterpriseResult.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
