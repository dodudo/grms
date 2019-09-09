package cn.ganin.dao;

import cn.ganin.entity.Enterprise;
import cn.ganin.util.DBHelper;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class EnterpriseDao {
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());

    public void addEnterprise(Enterprise enterprise){
        String sql = "insert into enterprise values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
       template.update(sql, null, enterprise.getEnterprise_name(), enterprise.getEnterprise_password(),
               enterprise.getEnterprise_username(), enterprise.getEnterprise_address(), enterprise.getEnterprise_contact(),
                enterprise.getEnterprise_phone(), enterprise.getEnterprise_email(), enterprise.getEnterprise_website(),
                enterprise.getEnterprise_scale(), enterprise.getEnterprise_nature(), enterprise.getEnterprise_desc(),
                2, enterprise.getEnterprise_industry_name(),"待审核");
    }
    public void updateEnterprise(Enterprise enterprise){
        String sql = "update enterprise set enterprise_name=?, enterprise_address=?, enterprise_contact=?," +
                "enterprise_phone=?, enterprise_email=?,enterprise_website=?," +
                "enterprise_scale=?, enterprise_nature=?,enterprise_desc=?," +
                "enterprise_industry_name=? where enterprise_id = ?";
        template.update(sql, enterprise.getEnterprise_name(),  enterprise.getEnterprise_address(), enterprise.getEnterprise_contact(),
                enterprise.getEnterprise_phone(), enterprise.getEnterprise_email(), enterprise.getEnterprise_website(),
                enterprise.getEnterprise_scale(), enterprise.getEnterprise_nature(), enterprise.getEnterprise_desc()
                , enterprise.getEnterprise_industry_name(),enterprise.getEnterprise_id());
    }
    public void deleteEnterprise(int id){
        String sql = "delete from enterprise where enterprise_id = ?";
        template.update(sql, id);
    }
    public Enterprise findOne(int id){
        String sql = "select * from enterprise where enterprise_id = ?";
        Enterprise enterprise = template.queryForObject(sql, new BeanPropertyRowMapper<Enterprise>(Enterprise.class), id);
        return enterprise;
    }
    public boolean findUserName(String name){
        String sql = "select * from enterprise where enterprise_username = ?";
        List<Map<String, Object>> maps = template.queryForList(sql, name);
        if (maps.size()>0){
            return false;
        }else {
            return true;
        }
    }

    public Enterprise loginFind(String username, String password) {
        String sql = "select * from enterprise where enterprise_username = ? and  enterprise_password =  ? ";
        try {
            Enterprise enterprise = template.queryForObject(sql, new BeanPropertyRowMapper<Enterprise>(Enterprise.class), username, password);
            return enterprise;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    //周
    public void delete(String id) {
        String sql = "delete from enterprise where enterprise_id=?";
        template.update(sql, id);
    }
    public void updateEnterprise(int id) {
        String sql = "update enterprise set enterprise_state='通过'where enterprise_id = ?";
        template.update(sql, id);
    }

}
