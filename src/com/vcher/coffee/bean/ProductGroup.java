package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: menghx
 * Date: 4/5/12
 * Time: 9:16 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "t_product_group")
public class ProductGroup {


    private int id;
    private String groupName;
    private String synopsis;
    private Date createDate;
    private Date updateDate;
    private String createUser;
    private List<Product> productList;

    public ProductGroup() {
    }

    public ProductGroup(String groupName, String synopsis, String createUser) {
        this.groupName = groupName;
        this.synopsis = synopsis;
        this.createUser = createUser;
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    @OneToMany(mappedBy = "productGroup")
    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
}
