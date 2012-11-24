package com.vcher.coffee.dao;

import com.vcher.coffee.bean.News;
import com.vcher.coffee.bean.NewsGroup;
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
public class NewsDao extends HibernateTemplateSupportDao {

    public News findNewsById(String Id) {
        return (News) hibernateTemplate.find("from News where id=" + Integer.parseInt(Id)).get(0);
    }

    public void saveOrUpadteNews(News news) {
        hibernateTemplate.saveOrUpdate(news);
    }

    public void delNews(String newsId) {
        hibernateTemplate.bulkUpdate("delete from News where id=" + Integer.parseInt(newsId));
    }

    public List<News> listNews() {
        return hibernateTemplate.find("from News");
    }


    public List<News> listNews(int groupId) {
        return hibernateTemplate.find("from News where newsGroup.id=" + groupId);
    }

    public List<News> listNews(String keywords) {
        String hql = "select id from News where 1=1";
        if (keywords != null && !keywords.equals("")) {
            hql += " and title like '%" + keywords + "%'";
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

    public void addNewsType(NewsGroup newsGroup) {
        hibernateTemplate.save(newsGroup);
    }

    public List<NewsGroup> listNewsGroup() {
        return hibernateTemplate.find("from NewsGroup");
    }

    public void delNewsType(String groupId) {
        hibernateTemplate.bulkUpdate("delete from NewsGroup where id=" + Integer.parseInt(groupId));
    }

    public List listNews(String keywords, final int startIndex, final int pageSize) {
        String hql = "from News where 1=1";
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

}
