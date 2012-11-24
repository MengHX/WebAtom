package com.vcher.coffee.action;

import com.google.code.kaptcha.Constants;
import com.opensymphony.xwork2.ActionSupport;
import com.vcher.coffee.bean.BasicInfo;
import com.vcher.coffee.bean.User;
import com.vcher.coffee.dao.BasicInfoDao;
import com.vcher.coffee.dao.UserDao;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 10:21 PM
 */
@Component
public class LoginAction extends ActionSupport{

    private UserDao userDao;
    private String userName;
    private String passWord;
    private String verifyCode;
    private String errorMessage;
    private String oprMessage;
    public String loginPage(){
        return "login";
    }

    public String userLogin(){
      HttpServletRequest request = ServletActionContext.getRequest();
        /*
        if(request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY)==null||!verifyCode.equals(request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY))){
            errorMessage="验证码错误！";
            return "login";
        }*/

        User user = new User(userName,passWord);
        user.setUserRole("admin");
        if(userDao.isLogin(user)){
            request.getSession().setAttribute("userName",userName);
            return "loginSuccess";
        }else{
            errorMessage="用户名密码错误！";
            return "login";
        }
    }

    public String logout(){
        HttpServletRequest request = ServletActionContext.getRequest();
        request.getSession().removeAttribute("userName");
        return "login";
    }

    public String update() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        User user = new User(request.getSession().getAttribute("userName").toString(),request.getParameter("oldPassword").toString());
        if(userDao.isLogin(user)){
            User user2 = new User(request.getSession().getAttribute("userName").toString(),passWord);
            userDao.updateUser(user2);
        }else{
            oprMessage="原密码错误！";
            return "oprFailed";
        }
        oprMessage="密码更新成功！";
        return "oprSuccess";
    }

    @Resource
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
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

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getOprMessage() {
        return oprMessage;
    }

    public void setOprMessage(String oprMessage) {
        this.oprMessage = oprMessage;
    }
}
