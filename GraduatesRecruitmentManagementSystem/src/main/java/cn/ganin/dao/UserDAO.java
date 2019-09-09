package cn.ganin.dao;

import cn.ganin.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    public static Connection con = null;
    public static PreparedStatement ps = null;
    public static ResultSet rs = null;

    public  static boolean checkLogin(String bas_name,String bas_pwd) throws Exception {
        con = DBHelper.getConnection();
        String sql ="select * from user_basic where bas_name = ?";
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1,bas_name);
            rs = ps.executeQuery();
            if(rs.next()) {
                String pwd = rs.getString("bas_pwd");
                if (pwd.equals(bas_pwd)) {
                    return true;
                } else {
                    return false;
                }
            }
            }catch(SQLException e){
                e.printStackTrace();
            }finally{
                if(rs != null){
                    try{
                        rs.close();
                    }catch (SQLException e){
                        e.printStackTrace();
                    }
                    rs = null;
                }
                if(ps != null){
                    try{
                        ps.close();
                    }catch (SQLException e){
                        e.printStackTrace();
                    }
                    ps = null;
                }
            }
            return false;
        }
        public void register(String bas_name, String bas_pwd, String bas_sex,String bas_age,String bas_city,String bas_workexper,String bas_call,String bas_email,String bas_icon) throws Exception {
        con = DBHelper.getConnection();
        String sql = "insert into user_basic(bas_name,bas_pwd,bas_sex,bas_age,bas_city,bas_workexper,bas_call,bas_email,bas_icon)values(?,?,?,?,?,?,?,?,?)";
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1,bas_name);
            ps.setString(2,bas_pwd);
            ps.setString(3,bas_sex);
            ps.setString(4,bas_age);
            ps.setString(5,bas_city);
            ps.setString(6,bas_workexper);
            ps.setString(7,bas_call);
            ps.setString(8,bas_email);
            ps.setString(9,bas_icon);
            int b = ps.executeUpdate();
//            System.out.println(b);
//            System.out.println(username);
//            System.out.println(password);
            if(b > 0){
                System.out.println("数据添加成功！");
            }else {
                System.out.println("数据添加失败！");
            }
        }catch (SQLException e){
            e.printStackTrace();
//        }finally {
//            if (rs != null){
//                try{
//                    rs.close();
//                }catch (SQLException e){
//                    e.printStackTrace();
//                }
//                rs = null;
//            }
//            if(ps != null){
//                try{
//                    ps.close();
//                }catch (SQLException e){
//                    e.printStackTrace();
//                }
//                ps = null;
//            }
        }
        }

}


//    public void register(User user) throws Exception {
//        DBHelper db = new DBHelper();
//        Connection c = db.getConnection();
//        String sql = "insert into user_info(u_num,username,password)values(?,?,?)";
//        try{
//            ps = con.prepareStatement(sql);
//            ps.setString(1,user.getU_num());
//            ps.setString(2,user.getUsername());
//            ps.setString(3,user.getPassword());
//            int b = ps.executeUpdate();
//            if(b > 0){
//                System.out.println("数据添加成功！");
//            }else {
//                System.out.println("数据添加失败！");
//            }
//        }catch (SQLException e){
//            e.printStackTrace();
////        }finally {
////            if (rs != null){
////                try{
////                    rs.close();
////                }catch (SQLException e){
////                    e.printStackTrace();
////                }
////                rs = null;
////            }
////            if(ps != null){
////                try{
////                    ps.close();
////                }catch (SQLException e){
////                    e.printStackTrace();
////                }
////                ps = null;
////            }
//        }
//    }

