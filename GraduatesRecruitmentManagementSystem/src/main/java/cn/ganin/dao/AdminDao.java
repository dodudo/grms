package cn.ganin.dao;

import cn.ganin.entity.Admin;
import cn.ganin.util.DBHelper;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.SQLException;

public class AdminDao {
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
    public Admin loginFind(String username, String password) {
        String sql = "select * from admin where admin_name = ? and admin_password = ? ";
        try {
            Admin admin = template.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), username, password);
            return admin;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }

    }
}
