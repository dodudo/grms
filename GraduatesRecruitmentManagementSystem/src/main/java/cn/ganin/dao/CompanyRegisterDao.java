package cn.ganin.dao;

import cn.ganin.util.DBHelper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class CompanyRegisterDao {
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
    public void register(String cName,String cAddress,String cContact,String cPhone,String cEmail,String cUserName,String cPassword){
        //创建spring JDBCTemplate对象，依赖于数据源DataSource

        String sql2 = "insert into company_userinfo(c_name,c_address,c_contact,c_phone,c_email,c_username,c_password)" +
                " values(?,?,?,?,?,?,?)";
        //通过JdbcTemplate对象里的update方法对数据库进行插入操作
        int count = template.update(sql2, cName, cAddress, cContact, cPhone, cEmail, cUserName, cPassword);
        if (count>0){
            System.out.println("注册成功");
        }else {
            System.out.println("注册失败");
        }
    }
    public boolean checkName(String name){
        String sql = "select * from company_userinfo where c_username = ?";
        List<Map<String, Object>> maps = template.queryForList(sql, name);
        if (maps.size()>0){
            return false;
        }else {
            return true;
        }
    }
}
