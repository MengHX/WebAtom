package com.vcher.coffee.tags;

import com.vcher.coffee.bean.NewsGroup;
import com.vcher.coffee.dao.NewsDao;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.List;

/**
 * User: menghx
 * Date: 4/7/12
 * Time: 1:22 PM
 */
public class NewsGroupTag extends TagSupport {

    private String name;

    private String id;

    private String value;

    @Override
    public int doEndTag() throws JspException {
        JspWriter jw = pageContext.getOut();
        StringBuffer pg=new StringBuffer("<select name='"+name+"' id='"+id+"'>");
        NewsDao newsDao = (NewsDao) WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext()).getBean("newsDao");
        List<NewsGroup> lp = newsDao.listNewsGroup();
        for(NewsGroup newsGroup:lp){
            pg.append("<option value='"+newsGroup.getId()+"'");
            if(value!=null&&!value.equals("")&&value.equals(newsGroup.getId())){
               pg.append(" selected='selected'");
            }
            pg.append(">"+newsGroup.getGroupName()+"</option>");
        }
        pg.append("</select>");
        try {
            jw.write(pg.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
