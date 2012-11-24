package com.vcher.coffee.dao;

import com.vcher.coffee.bean.Product;
import com.vcher.coffee.bean.ProductGroup;
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
 * Time: 9:32 PM
 */
@Component
public class ProductDao extends HibernateTemplateSupportDao {

    public Product findProductById(String Id) {
        return (Product) hibernateTemplate.find("from Product where id=" + Integer.parseInt(Id)).get(0);
    }

    public void saveOrUpadteProduct(Product product) {
        hibernateTemplate.saveOrUpdate(product);
    }

    public void delProduct(String productId) {
        hibernateTemplate.bulkUpdate("delete from Product where id=" + Integer.parseInt(productId));
    }

    public List<Product> listProduct() {
        return hibernateTemplate.find("from Product");
    }


    public List<Product> listProduct(int groupId) {
        return hibernateTemplate.find("from Product where productGroup.id=" + groupId);
    }

    public List<Product> listProduct(String keywords) {
        String hql="select id from Product where 1=1";
        if(keywords!=null&&!keywords.equals("")){
            hql+=" and title like '%"+keywords+"%'";
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

    public void addProductType(ProductGroup productGroup) {
        hibernateTemplate.save(productGroup);
    }

    public List<ProductGroup> listProductGroup() {
        return hibernateTemplate.find("from ProductGroup");
    }

    public void delProductType(String groupId) {
        hibernateTemplate.bulkUpdate("delete from ProductGroup where id=" + Integer.parseInt(groupId));
    }

    public List listProduct(String keywords, final int startIndex, final int pageSize) {
        String hql="from Product where 1=1";
        if(keywords!=null&&!keywords.equals("")){
            hql+=" and title like '%"+keywords+"%'";
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


