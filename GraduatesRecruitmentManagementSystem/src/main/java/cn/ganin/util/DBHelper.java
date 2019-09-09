package cn.ganin.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBHelper {
    //定义对象
    private static DataSource ds = null;
    //使用静态代码块读取资源文件jdbc.properties
    static {
        try {
            //创建Properties集合类
            Properties properties = new Properties();
            //使用ClassLoader类加载器获取资源文件jdbc.properties路径
            InputStream is = DBHelper.class.getClassLoader().getResourceAsStream("/druid.properties");
            //加载配置文件
            properties.load(is);
            //使用druid连接池获取DataBase
            ds = DruidDataSourceFactory.createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取链接
     *
     * @return 连接对象
     * @throws SQLException
     */
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }

    /**
     * 释放连接
     *
     * @param sta
     * @param conn
     */
    public static void close(Statement sta, Connection conn) {
        //防止空指针异常
        if (sta != null) {
            try {
                //归还连接
                sta.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(ResultSet rs, Statement sta, Connection conn) {
        //防止空指针异常
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (sta != null) {
            try {
                sta.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public static DataSource getDataSource(){
        return ds;
    }

}
