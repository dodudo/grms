package cn.ganin.dao;

import cn.ganin.entity.Position;
import cn.ganin.entity.Recruit;
import cn.ganin.entity.Resume;

import cn.ganin.util.DBHelper;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResumeDAO {

    public static Connection con = null;
    public static PreparedStatement ps = null;
    public static ResultSet rs = null;

    // 获得所有的简历教育信息
    public ArrayList<Resume> getAllResume() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Resume> list = new ArrayList<Resume>(); /// 简历集合
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from resume"; // SQL语句
            stmt = conn.prepareStatement(sql);
//            stmt.setInt(1, resume_stu_id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Resume resume = new Resume();
                resume.setResume_id(rs.getInt("resume_id"));
                resume.setResume_name(rs.getString("resume_name"));
                resume.setResume_stu_id(rs.getInt("resume_stu_id"));
                resume.setResume_stu_name(rs.getString("resume_stu_name"));
                resume.setResume_stu_sex(rs.getString("resume_stu_sex"));
                resume.setResume_stu_phone(rs.getString("resume_stu_phone"));
                resume.setResume_stu_email(rs.getString("resume_stu_email"));
                resume.setResume_school(rs.getString("resume_school"));
                resume.setResume_major(rs.getString("resume_major"));
                resume.setResume_edu(rs.getString("resume_edu"));
                resume.setResume_start_school(rs.getString("resume_start_school"));
                resume.setResume_end_school(rs.getString("resume_end_school"));
                resume.setResume_desc(rs.getString("resume_desc"));
                resume.setResume_internship(rs.getString("resume_internship"));
                resume.setResume_practice(rs.getString("resume_practice"));
                resume.setResume_skill(rs.getString("resume_skill"));
                resume.setResume_hobby(rs.getString("resume_hobby"));
                resume.setResume_works(rs.getString("resume_works"));
//                resume.setResume_enclosure(rs.getString("resume_enclosure"));
                list.add(resume);// 把一个简历加入集合
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

    // 根据简历编号获取简历教育信息
    public Resume getResumeById(int resume_id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from resume where resume_id=?;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, resume_id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Resume resume = new Resume();
                resume.setResume_id(rs.getInt("resume_id"));
                resume.setResume_name(rs.getString("resume_name"));
                resume.setResume_stu_id(rs.getInt("resume_stu_id"));
                resume.setResume_stu_name(rs.getString("resume_stu_name"));
                resume.setResume_stu_sex(rs.getString("resume_stu_sex"));
                resume.setResume_stu_phone(rs.getString("resume_stu_phone"));
                resume.setResume_stu_email(rs.getString("resume_stu_email"));
                resume.setResume_school(rs.getString("resume_school"));
                resume.setResume_major(rs.getString("resume_major"));
                resume.setResume_edu(rs.getString("resume_edu"));
                resume.setResume_start_school(rs.getString("resume_start_school"));
                resume.setResume_end_school(rs.getString("resume_end_school"));
                resume.setResume_desc(rs.getString("resume_desc"));
                resume.setResume_internship(rs.getString("resume_internship"));
                resume.setResume_practice(rs.getString("resume_practice"));
                resume.setResume_skill(rs.getString("resume_skill"));
                resume.setResume_hobby(rs.getString("resume_hobby"));
                resume.setResume_works(rs.getString("resume_works"));
//                resume.setResume_enclosure(rs.getString("resume_enclosure"));
                return resume;
            } else {
                return null;
            }

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

    public void resumeAdd(String resume_name, int resume_stu_id, String resume_stu_name, String resume_stu_sex, String resume_stu_phone, String resume_stu_email, String resume_school, String resume_major, String resume_edu, String resume_start_school,
                          String resume_end_school, String resume_desc, String resume_internship, String resume_practice, String resume_skill,
                          String resume_hobby, String resume_works) throws Exception {
        con = DBHelper.getConnection();
        String sql = "insert into resume(resume_name,resume_stu_id,resume_stu_name,resume_stu_sex,resume_stu_phone,resume_stu_email,resume_school,resume_major,resume_edu,resume_start_school,\n" +
                "                  resume_end_school,resume_desc,resume_internship,resume_practice,resume_skill,\n" +
                "                  resume_hobby,resume_works)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, resume_name);
            ps.setInt(2, resume_stu_id);
            ps.setString(3, resume_stu_name);
            ps.setString(4, resume_stu_sex);
            ps.setString(5, resume_stu_phone);
            ps.setString(6, resume_stu_email);
            ps.setString(7, resume_school);
            ps.setString(8, resume_major);
            ps.setString(9, resume_edu);
            ps.setString(10, resume_start_school);
            ps.setString(11, resume_end_school);
            ps.setString(12, resume_desc);
            ps.setString(13, resume_internship);
            ps.setString(14, resume_practice);
            ps.setString(15, resume_skill);
            ps.setString(16, resume_hobby);
            ps.setString(17, resume_works);
//            ps.setString(18,resume_enclosure);

            int b = ps.executeUpdate();
//            System.out.println(b);
//            System.out.println(username);
//            System.out.println(password);
            if (b > 0) {
                System.out.println("数据添加成功！");
            } else {
                System.out.println("数据添加失败！");
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public void resumeUpdate(String resume_name, int resume_stu_id, String resume_stu_name, String resume_stu_sex, String resume_stu_phone, String resume_stu_email, String resume_school, String resume_major, String resume_edu, String resume_start_school, String resume_end_school, String resume_desc, String resume_internship, String resume_practice, String resume_skill, String resume_hobby, String resume_works, int resume_id) throws Exception {
        con = DBHelper.getConnection();
        String sql = "update resume set resume_name=?,resume_stu_id=?,resume_stu_name=?,resume_stu_sex=?,resume_stu_phone=?,resume_stu_email=?,resume_school=?,resume_major=?,resume_edu=?,resume_start_school=?,resume_end_school=?,resume_desc=?,resume_internship=?,resume_practice=?,resume_skill=?,resume_hobby=?,resume_works=? where resume_id=?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, resume_name);
            ps.setInt(2, resume_stu_id);
            ps.setString(3, resume_stu_name);
            ps.setString(4, resume_stu_sex);
            ps.setString(5, resume_stu_phone);
            ps.setString(6, resume_stu_email);
            ps.setString(7, resume_school);
            ps.setString(8, resume_major);
            ps.setString(9, resume_edu);
            ps.setString(10, resume_start_school);
            ps.setString(11, resume_end_school);
            ps.setString(12, resume_desc);
            ps.setString(13, resume_internship);
            ps.setString(14, resume_practice);
            ps.setString(15, resume_skill);
            ps.setString(16, resume_hobby);
            ps.setString(17, resume_works);
            ps.setInt(18, resume_id);
//            ps.setString(18,resume_enclosure);

            int b = ps.executeUpdate();
//            System.out.println(b);
//            System.out.println(username);
//            System.out.println(password);
            if (b > 0) {
                System.out.println("数据修改成功！");
            } else {
                System.out.println("数据修改失败！");
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }


    //获取最近浏览的职位情况信息
    public ArrayList<Position> getViewList(String list) {
        System.out.println("list:" + list);
        ArrayList<Position> resumelist = new ArrayList<Position>();
        int iCount = 10; //每次返回前10条记录
        if (list != null && list.length() > 0) {
            String[] arr = list.split("#");
            System.out.println("arr.length=" + arr.length);
            //如果记录大于等于10条
            if (arr.length >= 10) {
                for (int i = arr.length - 1; i >= arr.length - iCount; i--) {
                    resumelist.add(getPositionById(Integer.parseInt(arr[i])));
                }
            } else {
                for (int i = arr.length - 1; i >= 0; i--) {
                    resumelist.add(getPositionById(Integer.parseInt(arr[i])));
                }
            }
            return resumelist;
        } else {
            return null;
        }

    }

    //查找职位
    public Position getPositionById(int position_id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from position where position_id=?;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, position_id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Position position = new Position();
                position.setPosition_id(rs.getInt("position_id"));
                position.setPosition_name(rs.getString("position_name"));
                position.setPosition_address(rs.getString("position_address"));
                position.setPosition_edu(rs.getString("position_edu"));
                position.setPosition_salary(rs.getString("position_salary"));
                position.setPosition_enterprise_id(rs.getInt("position_enterprise_id"));
                return position;
            } else {
                return null;
            }

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

//    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());


    //简历反馈状态
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());
    public List<Recruit> findRecruit(int resume_id){
        String sql = "select * from recruit where recruit_resum_id = ?";
        return template.query(sql,new BeanPropertyRowMapper<Recruit>(Recruit.class),resume_id);
    }

    public void updateRecruitState(String id) {
        String sql = "update recruit set recruit_state = ? where recruit_id = ?";
        template.update(sql,"已查看",id);
    }

    //根据id查找简历集合
    public List<Resume> findResume(int stu_id){
        String sql = "select * from resume where resume_stu_id = ?";
        return template.query(sql,new BeanPropertyRowMapper<Resume>(Resume.class),stu_id);
    }

}
