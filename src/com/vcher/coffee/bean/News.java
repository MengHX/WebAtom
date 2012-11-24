package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_news_info")
public class News {


    private int id;

    private int groupId;

    private String title;

    private String content;

    private int viewCount;

    private Date createTime;

    private Date updateTime;

    private String createUser;

    private NewsGroup newsGroup;

    public News() {
    }

    public News(String title, String content, String createUser) {
        this.title = title;
        this.content = content;
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

    public int getGroupId() {
        return groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

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

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "group_id", insertable = true, updatable = false)
    public NewsGroup getNewsGroup() {
        return newsGroup;
    }

    public void setNewsGroup(NewsGroup newsGroup) {
        this.newsGroup = newsGroup;
    }
}
