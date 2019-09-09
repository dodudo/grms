package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import cn.ganin.entity.Position;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/FindAllPositionServlet")
public class FindAllPositionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PositionDao dao = new PositionDao();
        List<Position> allPosition = dao.findAll();
        request.setAttribute("allPosition",allPosition);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
