package com.vcher.coffee.action;

import com.vcher.coffee.action.support.PageAndSearchAbleAction;
import com.vcher.coffee.bean.BasicInfo;
import com.vcher.coffee.dao.BasicInfoDao;
import com.vcher.coffee.utils.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * User: menghx
 * Date: 4/8/12
 * Time: 11:46 AM
 */
@Component
public class BasicInfoAction{

    private BasicInfoDao basicInfoDao;
    private String basicInfoId;
    private String title;
    private String synopsis;
    private String keyWords;
    private String allview;
    private String todayView;
    private String aboutUs;
    private String tips;
    private String logo;
    private String oprMessage;

    public String show() {
        BasicInfo basicInfo = basicInfoDao.findBasicInfoById();
        ServletActionContext.getRequest().setAttribute("basicInfo", basicInfo);
        return "show";
    }

    public String update() {
        try {
            BasicInfo basicInfo = new BasicInfo(title,synopsis,keyWords);
            basicInfo.setId(1);
            basicInfoDao.saveOrUpadteBasicInfo(basicInfo);
        } catch (Exception e) {
            e.printStackTrace();
            oprMessage = "保存失败！";
            return "oprFailed";
        }
        return "show";
    }

    public String mdy() {
        BasicInfo basicInfo = basicInfoDao.findBasicInfoById();
        ServletActionContext.getRequest().setAttribute("basicInfo", basicInfo);
        return "mdy";
    }

    public BasicInfoDao getBasicInfoDao() {
        return basicInfoDao;
    }

    @Resource
    public void setBasicInfoDao(BasicInfoDao basicInfoDao) {
        this.basicInfoDao = basicInfoDao;
    }

    public String getBasicInfoId() {
        return basicInfoId;
    }

    public void setBasicInfoId(String basicInfoId) {
        this.basicInfoId = basicInfoId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSavePath() throws Exception {
        return ServletActionContext.getServletContext().getRealPath("/upload");
    }

    public String getOprMessage() {
        return oprMessage;
    }

    public void setOprMessage(String oprMessage) {
        this.oprMessage = oprMessage;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public String getAllview() {
        return allview;
    }

    public void setAllview(String allview) {
        this.allview = allview;
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

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
