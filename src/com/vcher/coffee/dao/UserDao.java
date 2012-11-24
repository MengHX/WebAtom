package com.vcher.coffee.dao;

import com.vcher.coffee.bean.User;
import com.vcher.coffee.dao.support.HibernateTemplateSupportDao;
import org.springframework.stereotype.Component;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 10:32 PM
 */
@Component
public class UserDao extends HibernateTemplateSupportDao {

    public boolean isLogin(User user) {
        return hibernateTemplate.find("from User where userName=? and passWord=? and userRole=?", user.getUserName(), user.getPassWord(), user.getUserRole()).size() >= 1 ? true : false;
    }

    public void updateUser(User user2) {
        hibernateTemplate.update(user2);
    }
}
