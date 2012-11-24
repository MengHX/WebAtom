package com.vcher.coffee.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * User: menghx
 * Date: 4/15/12
 * Time: 6:31 PM
 */
@Entity
@Table(name = "t_investiagte_info")
public class Investigate {

    private int id;

    private int whatsLike;

    private int howMang;

    private int isHave;

    private String serviceAdd;

    private int seviceTime;

    private String others;

    private String contract;

    private Date createTime;

    public Investigate() {
    }

    public Investigate(int howMang, int whatsLike, int have, String serviceAdd, int seviceTime, String others, String contract) {
        this.howMang = howMang;
        this.whatsLike = whatsLike;
        isHave = have;
        this.serviceAdd = serviceAdd;
        this.seviceTime = seviceTime;
        this.others = others;
        this.contract = contract;
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getWhatsLike() {
        return whatsLike;
    }

    public void setWhatsLike(int whatsLike) {
        this.whatsLike = whatsLike;
    }

    public int getHowMang() {
        return howMang;
    }

    public void setHowMang(int howMang) {
        this.howMang = howMang;
    }

    public int getHave() {
        return isHave;
    }

    public void setHave(int have) {
        isHave = have;
    }

    public String getServiceAdd() {
        return serviceAdd;
    }

    public void setServiceAdd(String serviceAdd) {
        this.serviceAdd = serviceAdd;
    }

    public int getSeviceTime() {
        return seviceTime;
    }

    public void setSeviceTime(int seviceTime) {
        this.seviceTime = seviceTime;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
