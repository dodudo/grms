package cn.ganin.dao;

import cn.ganin.entity.Student;
import cn.ganin.util.DBHelper;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class StudentDAO {


    // 获得所有的学生基本信息
    public ArrayList<Student> getAllStudent() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Student> list = new ArrayList<Student>(); /// 学生集合
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from student;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Student st = new Student();
                st.setStu_id(rs.getInt("stu_id"));
                st.setStu_name(rs.getString("stu_name"));
                st.setStu_sex(rs.getString("stu_sex"));
                st.setStu_email(rs.getString("stu_email"));
                st.setStu_phone(rs.getString("stu_phone"));
                st.setStu_password(rs.getString("stu_password"));
                st.setStu_college_name(rs.getString("stu_college_name"));
                st.setStu_major_name(rs.getString("stu_major_name"));
                st.setStu_role_id(rs.getString("stu_role_id"));
                list.add(st);// 把一个学生加入集合
            }
            return list; // 返回集合。
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }

    }


    //du
    JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
    public boolean findUserName(String phone) {
        String sql = "select * from student where stu_phone = ?";
        List<Map<String, Object>> maps = template.queryForList(sql, phone);
        if (maps.size()>0){
            return false;
        }else {
            return true;
        }
    }

    public void addStudent(Student student) {
        String sql = "insert into student values(?,?,?,?,?,?,?,?,?,?,?)";
        template.update(sql, null, 1, student.getStu_name(), student.getStu_sex(),
                student.getStu_age(), student.getStu_email(), student.getStu_phone(), student.getStu_password(),
                student.getStu_college_name(), student.getStu_major_name(), 1);
    }

    public Student findUser(String username, String password) {
        String sql = "select * from student where stu_phone = ? and stu_password = ? ";
        //防止数据异常
        try {
            Student student = template.queryForObject(sql, new BeanPropertyRowMapper<Student>(Student.class), username, password);
            return student;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    //查找某位学生
    public Student findOne(int stu_id){
        String sql = "select * from student where stu_num = ?";
        Student student = template.queryForObject(sql, new BeanPropertyRowMapper<Student>(Student.class), stu_id);
        return student;
    }

//周
    //删除
public void delete(String id) {
    String sql = "delete from student where stu_id=?";
    template.update(sql, id);
}
}
