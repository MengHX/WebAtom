package com.vcher.coffee.dao.support;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 9:37 PM
 */

@Component
public class HibernateTemplateSupportDao {

    protected HibernateTemplate hibernateTemplate;

    @Resource
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
