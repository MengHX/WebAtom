package com.vcher.coffee.action.support;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Component;

/**
 * User: menghx
 * Date: 4/8/12
 * Time: 11:39 AM
 */

public abstract class PageAndSearchAbleAction extends ActionSupport {

    public String keywords;
    public int pageIndex;
    public int pageSize;
    public int itemCount;
    public int pageCount;
    public String oprMessage;


    public abstract String search();

    public abstract String del();

    public abstract String show();

    public abstract String add();

    public abstract String mdy();

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getItemCount() {
        return itemCount;
    }

    public void setItemCount(int itemCount) {
        this.itemCount = itemCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public String getOprMessage() {
        return oprMessage;
    }

    public void setOprMessage(String oprMessage) {
        this.oprMessage = oprMessage;
    }
}
