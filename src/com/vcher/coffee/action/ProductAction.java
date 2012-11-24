package com.vcher.coffee.action;

import com.opensymphony.xwork2.ActionSupport;
import com.vcher.coffee.action.support.EnTypeAbleAction;
import com.vcher.coffee.action.support.PageAndSearchAbleAction;
import com.vcher.coffee.bean.Product;
import com.vcher.coffee.bean.ProductGroup;
import com.vcher.coffee.dao.ProductDao;
import com.vcher.coffee.utils.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
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
public class ProductAction extends PageAndSearchAbleAction implements EnTypeAbleAction{

    private ProductDao productDao;
    private File image;
    private String imageContentType;
    private String title;
    private String synopsis;
    private String groupId;
    private List productList;
    private String productId;
    private String showImage;

    public String add() {
        String url = "";
        try {
            url = FileUtils.uploadFile(image, imageContentType.toLowerCase(), getSavePath());
            Product product = new Product(title, url, synopsis, ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
            product.setUpdateTime(new Date());
            ProductGroup productGroup = new ProductGroup();
            productGroup.setId(Integer.parseInt(groupId));
            product.setProductGroup(productGroup);
            if(productId!=null && !productId.equals("")){
                product.setId(Integer.parseInt(productId));
            }
            productDao.saveOrUpadteProduct(product);
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
        ProductGroup productGroup = new ProductGroup(type, "产品类型", ServletActionContext.getRequest().getSession().getAttribute("userName").toString());
        productGroup.setUpdateDate(new Date());
        productDao.addProductType(productGroup);
        try {
            PrintWriter pw = ServletActionContext.getResponse().getWriter();
            pw.write(new String((productGroup.getId() + "").getBytes(), "utf-8"));
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
        ProductGroup productGroup = new ProductGroup();
        productGroup.setId(Integer.parseInt(typeId));
        if (productDao.listProduct(typeId).size() <= 0) {
            productDao.delProductType(typeId);
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
        int startIndex = pageIndex*pageSize;
        productList = productDao.listProduct(keywords,startIndex,pageSize);
        itemCount=productDao.listProduct(keywords).size();
        pageCount=(itemCount+pageSize-1)/pageSize;
        return "list";
    }

    public String list() {
        System.out.println("list");
        HttpServletRequest request = ServletActionContext.getRequest();
        return "list";
    }

    public String del() {
        String productId = ServletActionContext.getRequest().getParameter("productId");
        try {
            Product product = productDao.findProductById(productId);
            FileUtils.delFileByName(getSavePath()+File.separator+product.getUrl());
            productDao.delProduct(productId);
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

    public String show(){
        Product product=productDao.findProductById(productId);
        ServletActionContext.getRequest().setAttribute("product",product);
        return "show";
    }


    public String mdy() {
        Product product=productDao.findProductById(productId);
        ServletActionContext.getRequest().setAttribute("product",product);
        return "add";
    }

    @Resource
    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
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

    public File getImage() {
        return image;
    }

    public void setImage(File image) {
        this.image = image;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getImageContentType() {
        return imageContentType;
    }

    public List getProductList() {
        return productList;
    }

    public void setProductList(List productList) {
        this.productList = productList;
    }

    public void setImageContentType(String imageContentType) {
        this.imageContentType = imageContentType;
    }

    public String getShowImage() {
        return showImage;
    }

    public void setShowImage(String showImage) {
        this.showImage = showImage;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }



}
