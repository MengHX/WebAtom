package com.vcher.coffee.action;

import com.vcher.coffee.dao.BasicInfoDao;
import com.vcher.coffee.dao.MessageDao;
import com.vcher.coffee.dao.NewsDao;
import com.vcher.coffee.dao.ProductDao;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * User: menghx
 * Date: 4/15/12
 * Time: 3:00 PM
 */
@Component
public class WebAction {

    private NewsDao newDao;
    private MessageDao messageDao;
    private BasicInfoDao basicInfoDao;
    private ProductDao productDao;


    public String index() throws Exception {
        return "success";
    }

    public String office() throws Exception {
        return "success";
    }

    public String dining() throws Exception {
        return "success";
    }

    public String convenience() throws Exception {
        return "success";
    }

    public String contract() throws Exception {
        return "success";
    }

    public String about() throws Exception {
        return "success";
    }

    public String contact() throws Exception {
        return "success";
    }

    @Resource
    public void setNewDao(NewsDao newDao) {
        this.newDao = newDao;
    }
    @Resource
    public void setMessageDao(MessageDao messageDao) {
        this.messageDao = messageDao;
    }
    @Resource
    public void setBasicInfoDao(BasicInfoDao basicInfoDao) {
        this.basicInfoDao = basicInfoDao;
    }
    @Resource
    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

    public String news() throws Exception {
        return "success";
    }
}
