package com.vcher.coffee.action;

import com.vcher.coffee.action.support.EnTypeAbleAction;
import com.vcher.coffee.action.support.PageAndSearchAbleAction;
import com.vcher.coffee.bean.News;
import com.vcher.coffee.bean.NewsGroup;
import com.vcher.coffee.dao.NewsDao;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 10:21 PM
 */
@Component
public class NewsAction extends PageAndSearchAbleAction implements EnTypeAbleAction{

    private NewsDao newsDao;
    private String title;
    private String content;
    private String groupId;
    private List newsList;
    private String newsId;

    public String add() {
        try {
            News news = new News(title, content, ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
            news.setUpdateTime(new Date());
            NewsGroup newsGroup = new NewsGroup();
            newsGroup.setId(Integer.parseInt(groupId));
            news.setNewsGroup(newsGroup);
            if (newsId != null && !newsId.equals("")) {
                news.setId(Integer.parseInt(newsId));
            }
            newsDao.saveOrUpadteNews(news);
        } catch (Exception e) {
            e.printStackTrace();
            oprMessage = "添加失败！";
            return "oprFailed";
        }
        oprMessage = "添加成功！";
        return "oprSuccess";
    }

    public String addType() {
        String type = ServletActionContext.getRequest().getParameter("type");
        NewsGroup newsGroup = new NewsGroup(type, "新闻类型", ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
        newsGroup.setUpdateDate(new Date());
        newsDao.addNewsType(newsGroup);
        try {
            PrintWriter pw = ServletActionContext.getResponse().getWriter();
            pw.write(new String((newsGroup.getId() + "").getBytes(), "utf-8"));
            pw.flush();
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String delType() {
        PrintWriter pw = null;
        try {
            pw = ServletActionContext.getResponse().getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String typeId = ServletActionContext.getRequest().getParameter("typeId");
        NewsGroup newsGroup = new NewsGroup();
        newsGroup.setId(Integer.parseInt(typeId));
        if (newsDao.listNews(typeId).size() <= 0) {
            newsDao.delNewsType(typeId);
        } else {
            try {
                pw.write(new String(("删除失败！此类型中包含其他记录！").getBytes(), "utf-8"));
                pw.flush();
                pw.close();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

    public String search(){
        int startIndex = pageIndex * pageSize;
        newsList = newsDao.listNews(keywords, startIndex, pageSize);
        itemCount = newsDao.listNews(keywords).size();
        pageCount = (itemCount + pageSize - 1) / pageSize;
        return "list";
    }

    public String list() {
        HttpServletRequest request = ServletActionContext.getRequest();
        return "list";
    }

    public String del() {
        String newsId = ServletActionContext.getRequest().getParameter("newsId");
        try {
            newsDao.delNews(newsId);
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

    public String show() {
        News news = newsDao.findNewsById(newsId);
        ServletActionContext.getRequest().setAttribute("news", news);
        return "show";
    }


    public String mdy() {
        News news = newsDao.findNewsById(newsId);
        ServletActionContext.getRequest().setAttribute("news", news);
        return "add";
    }

    @Resource
    public void setNewsDao(NewsDao newsDao) {
        this.newsDao = newsDao;
    }

    public String getSavePath() throws Exception {
        return ServletActionContext.getServletContext().getRealPath("/upload");
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public List getNewsList() {
        return newsList;
    }

    public void setNewsList(List newsList) {
        this.newsList = newsList;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId;
    }


}
