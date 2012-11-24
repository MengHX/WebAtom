package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * User: menghx
 * Date: 4/8/12
 * Time: 12:39 PM
 */
@Entity
@Table(name = "t_web_image")
public class WebImage {

    private int id;

    private String type;

    private String url;

    private String title;

    private Date createTime;

    private String createUser;

    public WebImage() {
    }

    public WebImage(String url, String title, String type, String createUser) {
        this.url = url;
        this.title = title;
        this.type = type;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }
}
