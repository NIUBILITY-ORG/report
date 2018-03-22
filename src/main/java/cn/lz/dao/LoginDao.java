package cn.lz.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * Created by lz on 2018/3/22.
 */
@Repository
public class LoginDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void queryUser(){

    }
}
