package cn.lz.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by lz on 2018/3/22.
 * 登录和用户Dao
 */
@Repository
public class LoginDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 通过用户名查询用户
     * @param username
     * @return
     */
    public List<Map<String, Object>> queryUser(String username){
        String sql = "select * from 用户表 where 用户名 = ?";
        return jdbcTemplate.queryForList(sql, username);
    }
}
