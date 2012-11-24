package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_product_info")
public class Product {

    private int id;

    private ProductGroup productGroup;

    private String title;

    private String synopsis;

    private String url;

    private int viewCount;

    private Date createTime;

    private Date updateTime;

    private String createUser;

    public Product() {
    }

    public Product(String title, String url, String synopsis, String createUser) {
        this.title = title;
        this.url = url;
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

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "group_id", insertable = true, updatable = false)
    public ProductGroup getProductGroup() {
        return productGroup;
    }

    public void setProductGroup(ProductGroup productGroup) {
        this.productGroup = productGroup;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Column(columnDefinition = "int default 0")
    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }


}
