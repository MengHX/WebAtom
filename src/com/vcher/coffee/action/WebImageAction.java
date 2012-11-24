package com.vcher.coffee.action;

import com.vcher.coffee.action.support.PageAndSearchAbleAction;
import com.vcher.coffee.bean.WebImage;
import com.vcher.coffee.dao.WebImageDao;
import com.vcher.coffee.utils.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

/**
 * User: menghx
 * Date: 4/8/12
 * Time: 11:46 AM
 */
@Component
public class WebImageAction extends PageAndSearchAbleAction {

    private WebImageDao webImageDao;
    private String webImageId;
    private String url;
    private String type;
    private String title;
    private File image;
    private String imageContentType;
    private String createUser;


    @Override
    public String search() {
//        int startIndex = pageIndex * pageSize;
//        frontImageList = webImageDao.listFrontImage(keywords, startIndex, pageSize);
//        itemCount = webImageDao.listFrontImage(keywords).size();
//        pageCount = (itemCount + pageSize - 1) / pageSize;
        return "list";
    }

    @Override
    public String del() {
        String webImageId = ServletActionContext.getRequest().getParameter("webImageId");
        try {
            WebImage webImage = webImageDao.findWebImageById(webImageId);
            FileUtils.delFileByName(getSavePath()+File.separator+webImage.getUrl());
            webImageDao.delWebImage(webImageId);
        } catch (Exception e) {
            PrintWriter pw = null;
            try {
                pw = ServletActionContext.getResponse().getWriter();
                pw.write(new String(("删除失败！").getBytes(), "utf-8"));
            } catch (UnsupportedEncodingException e1) {
                e1.printStackTrace();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            pw.flush();
            pw.close();
        }
        return null;
    }

    @Override
    public String show() {
        WebImage frontImage = webImageDao.findWebImageById(webImageId);
        ServletActionContext.getRequest().setAttribute("frontImage", frontImage);
        return "show";
    }

    @Override
    public String add() {
        return "oprSuccess";
    }

    @Override
    public String mdy() {
        try {
            url = FileUtils.uploadFile(image, imageContentType.toLowerCase(), getSavePath());
            WebImage webImage = webImageDao.getImageByType(type);
            if(webImage==null){
                webImage = new WebImage(url, title,type, ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
            }else{
               FileUtils.delFileByName(getSavePath()+File.separator+webImage.getUrl());
               webImage.setTitle(title);
               webImage.setUrl(url);
               webImage.setCreateUser(ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
               webImage.setCreateTime(new Date());
            }
            webImageDao.saveOrUpadteWebImage(webImage);
        } catch (Exception e) {
            e.printStackTrace();
            oprMessage = "修改失败！";
            return "oprFailed";
        }
        oprMessage = "修改成功！";
        return "oprSuccess";
    }

    public String list(){
        List<WebImage> webImageList = webImageDao.listWebImage();
        ServletActionContext.getRequest().setAttribute("webImageList",webImageList);
        return "success";
    }

    @Resource
    public void setFrontImageDao(WebImageDao webImageDao) {
        this.webImageDao = webImageDao;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public File getImage() {
        return image;
    }

    public void setImage(File image) {
        this.image = image;
    }

    public String getImageContentType() {
        return imageContentType;
    }

    public void setImageContentType(String imageContentType) {
        this.imageContentType = imageContentType;
    }

    public String getSavePath() throws Exception {
        return ServletActionContext.getServletContext().getRealPath("/upload");
    }

    public String getWebImageId() {
        return webImageId;
    }

    public void setWebImageId(String webImageId) {
        this.webImageId = webImageId;
    }
}
