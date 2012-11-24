package com.vcher.coffee.tags;

import com.vcher.coffee.bean.WebImage;
import com.vcher.coffee.dao.WebImageDao;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * User: menghx
 * Date: 4/16/12
 * Time: 10:12 PM
 */
public class WebImageTag extends TagSupport {

    private String type;
    private String id;
    private String ifnull;

    @Override
    public int doEndTag() throws JspException {
        JspWriter jw = pageContext.getOut();
        StringBuffer pg = new StringBuffer();
        WebImageDao webImageDao = (WebImageDao) WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext()).getBean("webImageDao");
        pg.append("<img");
        if (id!=null&&!id.equals("")){
            pg.append(" id='").append(id).append("' name='").append(id).append("'");
        }
        WebImage webImage = webImageDao.getImageByType(type);
        if (webImage != null) {
            pg.append(" src='upload/").append(webImage.getUrl()).append("' title='").append(webImage.getTitle()).append("' alt='").append(webImage.getTitle()).append("'");
        } else {
            pg.append(" src='").append(ifnull).append("'");
        }
        pg.append("/>");
        try {
            jw.write(pg.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 1;
    }


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIfnull() {
        return ifnull;
    }

    public void setIfnull(String ifnull) {
        this.ifnull = ifnull;
    }
}
