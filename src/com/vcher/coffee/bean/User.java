package com.vcher.coffee.bean;


import javax.persistence.*;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 10:28 PM
 */
@Entity
@Table(name="t_user_info")
public class User{
    private int id;
    private String userName;
    private String passWord;
    private String userRole;

    public User(String userName, String passWord) {
        this.userName = userName;
        this.passWord = passWord;
    }

    public User() {
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }


    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
}
