package cn.ganin.web.servlet;

import cn.ganin.dao.EnterpriseDao;
import cn.ganin.entity.Enterprise;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/UpdateEnterpriseServlet")
public class UpdateEnterpriseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Map<String, String[]> map = request.getParameterMap();
        Enterprise enterprise = new Enterprise();
        try {
            BeanUtils.populate(enterprise,map);
            System.out.println(enterprise);
            EnterpriseDao dao = new EnterpriseDao();
            dao.updateEnterprise(enterprise);
            request.getRequestDispatcher("/FindEnterpriseDataServlet").forward(request,response);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
