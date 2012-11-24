package com.vcher.coffee.bean;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_message_info")
public class Message {

    private int id;

    private String phone;

    private String email;

    private String content;

    private Date createTime;

    private String createUser;

    public Message() {
    }

    public Message(String phone, String email, String content, String createUser) {
        this.phone = phone;
        this.email = email;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
