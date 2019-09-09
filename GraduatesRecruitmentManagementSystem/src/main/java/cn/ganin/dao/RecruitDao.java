package cn.ganin.dao;

import cn.ganin.entity.Recruit;
import cn.ganin.util.DBHelper;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class RecruitDao {
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
    public List<Recruit> findRecruit(int enterprise_id){
        String sql = "select * from recruit where recruit_enterprise_id = ?";
        return template.query(sql,new BeanPropertyRowMapper<Recruit>(Recruit.class),enterprise_id);
    }

    public void updateRecruitState(String id) {
        String sql = "update recruit set recruit_state = ? where recruit_id = ?";
        template.update(sql,"已查看",id);
    }

    public List<Recruit> findRecruitResume(int stu_id){
        String sql = "select * from recruit where recruit_stu_id = ?";
        return template.query(sql,new BeanPropertyRowMapper<Recruit>(Recruit.class),stu_id);
    }

    public void updateRecruitStateResume(String id) {
        String sql = "update recruit set recruit_state = ? where recruit_id = ?";
        template.update(sql,"已查看",id);
    }

    public void deleteRecruit(int id) {
        String sql = "delete from recruit where recruit_id = ?";
        template.update(sql,id);
    }
}
