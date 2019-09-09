package cn.ganin.web.servlet;

import cn.ganin.dao.EnterpriseDao;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/CheckEnterpriseUserNameServlet")
public class CheckEnterpriseUserNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        String name = request.getParameter("name");
        EnterpriseDao dao = new EnterpriseDao();
        Map<String,Object> map = new HashMap<String, Object>();
        if (dao.findUserName(name)){
            //将要向页面传递的信息放置到map集合中
            map.put("enterpriseUserExsit",true);
            map.put("enterpriseMsg","此用户名可用");
        }else {
            map.put("enterpriseUserExsit",false);
            map.put("enterpriseMsg","此用户名已存在，请更换一个！");
        }
        //使用jackson工具类将map集合转换为json格式
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getWriter(),map);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
