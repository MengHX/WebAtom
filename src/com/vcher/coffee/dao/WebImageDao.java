package com.vcher.coffee.dao;

import com.vcher.coffee.bean.WebImage;
import com.vcher.coffee.dao.support.HibernateTemplateSupportDao;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.List;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 9:31 PM
 */
@Component
public class WebImageDao extends HibernateTemplateSupportDao {

    public WebImage findWebImageById(String Id) {
        return (WebImage) hibernateTemplate.find("from WebImage where id=" + Integer.parseInt(Id)).get(0);
    }

    public List<WebImage> listWebImage() {
        return hibernateTemplate.find("from WebImage");
    }

    public void saveOrUpadteWebImage(WebImage webImage) {
        hibernateTemplate.saveOrUpdate(webImage);
    }

    public void delWebImage(String webImageId) {
        hibernateTemplate.bulkUpdate("delete from WebImage where id=" + Integer.parseInt(webImageId));
    }

    public List<WebImage> listFrontImage(String keywords, final int startIndex, final int pageSize) {
        String hql = "from WebImage where 1=1";
        if (keywords != null && !keywords.equals("")) {
            hql += " and title like '%" + keywords + "%'";
        }
        final String finalHql = hql;
        List list = hibernateTemplate.executeFind(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                Query query = session.createQuery(finalHql);
                query.setFirstResult(startIndex);
                query.setMaxResults(pageSize);
                List list = query.list();
                return list;
            }
        });
        return list;
    }

    public List<WebImage> listFrontImage(String keywords) {
        String hql = "select id from WebImage where 1=1";
        if (keywords != null && !keywords.equals("")) {
            hql += " and title  like '%" + keywords + "%'";
        }
        final String finalHql = hql;
        List list = hibernateTemplate.executeFind(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                Query query = session.createQuery(finalHql);
                List list = query.list();
                return list;
            }
        });
        return list;
    }


    public WebImage getImageByType(String type) {
        String hql = "from WebImage where type=?";
        return hibernateTemplate.find(hql,type).size()==1?(WebImage) hibernateTemplate.find(hql,type).get(0):null;
    }

    
}
