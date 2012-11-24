package com.vcher.coffee.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_basic_info")
public class BasicInfo {


    private int id;
    private String title;
    private String synopsis;
    private String keyWords;
    private String allview;
    private String todayView;
    private String updateTime;
    private String aboutUs;
    private String tips;
    private String logo;

    public BasicInfo() {
    }

    public BasicInfo(String title, String synopsis, String keyWords) {
        this.title = title;
        this.synopsis = synopsis;
        this.keyWords = keyWords;
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public String getTodayView() {
        return todayView;
    }

    public void setTodayView(String todayView) {
        this.todayView = todayView;
    }

    public String getAboutUs() {
        return aboutUs;
    }

    public void setAboutUs(String aboutUs) {
        this.aboutUs = aboutUs;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
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

    public String getAllview() {
        return allview;
    }

    public void setAllview(String allview) {
        this.allview = allview;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
