package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * User: menghx
 * Date: 4/7/12
 * Time: 11:24 PM
 */
@Entity
@Table(name = "t_news_group")
public class NewsGroup {

    private int id;
    private String groupName;
    private String synopsis;
    private Date createDate;
    private Date updateDate;
    private String createUser;
    private List<News> newsList;

    public NewsGroup() {
    }

    public NewsGroup(String groupName, String synopsis, String createUser) {
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

    @OneToMany(mappedBy = "newsGroup")
    public List<News> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }
}
