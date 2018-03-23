package cn.lz.service;

import cn.lz.dao.LoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by lz on 2018/3/22.
 */
@Service
@Transactional
public class LoginService {

    @Autowired
    private LoginDao loginDao;

    public List<Map<String, Object>> queryUser(String username){

        return loginDao.queryUser(username);
    }
}
