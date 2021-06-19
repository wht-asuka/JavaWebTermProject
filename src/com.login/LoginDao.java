package com.login;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.mail.Flags.Flag;

import com.jdbc.JdbcUtils;

/**
 * @author tao
 */
public class LoginDao implements LoginService {

    private JdbcUtils jdbcUtils;
    public LoginDao() {

        jdbcUtils = new JdbcUtils();
    }

    @Override
    public boolean login(List<Object> params) {

        boolean flag = false;

        try {
            jdbcUtils.getConnection();
            String sql = "select * from userinfo where username = ? and pswd = ?";
            Map<String, Object> map = jdbcUtils.findSimpleResult(sql, params);
            flag = !map.isEmpty();

        } catch (Exception e) {
            e.printStackTrace();
        }finally{

            //关闭数据库
            jdbcUtils.releaseConn();

        }

        return flag;
    }

}