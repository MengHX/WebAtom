package com.vcher.coffee.dao;

import com.vcher.coffee.bean.Message;
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
public class MessageDao extends HibernateTemplateSupportDao {

    public Message findMessageById(String Id) {
        return (Message) hibernateTemplate.find("from Message where id=" + Integer.parseInt(Id)).get(0);
    }

    public List<Message> listMessage() {
        return hibernateTemplate.find("from Message");
    }

    public void saveOrUpadteMessage(Message message) {
        hibernateTemplate.save(message);
    }

    public void delMessage(String messageId) {
        hibernateTemplate.bulkUpdate("delete from Message where id=" + Integer.parseInt(messageId));
    }

    public List<Message> listMessage(String keywords, final int startIndex, final int pageSize) {
        String hql = "from Message where 1=1";
        if (keywords != null && !keywords.equals("")) {
            hql += " and content like '%" + keywords + "%'";
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

    public List<Message> listMessage(String keywords) {
        String hql = "select id from Message where 1=1";
        if (keywords != null && !keywords.equals("")) {
            hql += " and content  like '%" + keywords + "%'";
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
}
