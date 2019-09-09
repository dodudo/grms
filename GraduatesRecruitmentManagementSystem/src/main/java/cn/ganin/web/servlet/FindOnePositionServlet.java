package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import cn.ganin.entity.Position;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/FindOnePositionServlet")
public class FindOnePositionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        String id = request.getParameter("id");
        PositionDao dao = new PositionDao();
        Position position = dao.findOne(Integer.parseInt(id));
        System.out.println(position);
        HttpSession session = request.getSession();
        session.setAttribute("position",position);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getWriter(),position);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
