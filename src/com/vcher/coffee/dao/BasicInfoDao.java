package com.vcher.coffee.dao;

import com.vcher.coffee.bean.BasicInfo;
import com.vcher.coffee.bean.Product;
import com.vcher.coffee.dao.support.HibernateTemplateSupportDao;
import org.springframework.stereotype.Component;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 9:31 PM
 */
@Component
public class BasicInfoDao extends HibernateTemplateSupportDao {

    public BasicInfo findBasicInfoById() {
        return (BasicInfo) (hibernateTemplate.find("from BasicInfo").size()==0?new BasicInfo():hibernateTemplate.find("from BasicInfo").get(0));
    }

    public BasicInfo getBasicInfo() {
        return (BasicInfo) (hibernateTemplate.find("from BasicInfo").size()==0?new BasicInfo():hibernateTemplate.find("from BasicInfo").get(0));
    }

    public void saveOrUpadteBasicInfo(BasicInfo basicInfo){
       hibernateTemplate.save(basicInfo);
    }

    public boolean isLogin(BasicInfo basicInfo){
        return hibernateTemplate.find("from BasicInfo").size()==0?false:true;
    }
}
