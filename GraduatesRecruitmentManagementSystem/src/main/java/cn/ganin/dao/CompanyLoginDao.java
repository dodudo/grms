package cn.ganin.dao;

import cn.ganin.util.DBHelper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class CompanyLoginDao {
    public boolean check(String user,String pwd){
        //创建JdbcTemplate对象
        JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
        String SQL = "select * from company_userinfo where c_username=? and c_password = ?";
        List<Map<String, Object>> maps = template.queryForList(SQL, user, pwd);
        if (maps.size()>0){
            return true;
        }else {
            return false;
        }
    }
}
