package cn.ganin.web.servlet;

import cn.ganin.dao.PositionDao;
import cn.ganin.entity.Position;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@WebServlet("/AddPositionServlet")
public class AddPositionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Map<String, String[]> map = request.getParameterMap();
        ConvertUtils.register(new Converter() {//注册一个日期转换器
            public Object convert(Class type, Object value) {
                Date date1 =null;
                if(value instanceof String){
                    String date = (String) value;
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    try {
                        date1 = sdf.parse(date);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
                return date1;
            }
        }, Date.class);
        Position position = new Position();
        try {
            BeanUtils.populate(position,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println(position.getPosition_enterprise_id());
        PositionDao dao = new PositionDao();
        dao.addPosition(position);
        response.sendRedirect(request.getContextPath()+"/FindEnterpriseDataServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
