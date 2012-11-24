package com.vcher.coffee.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * User: menghx
 * Date: 4/5/12
 * Time: 10:43 PM
 */
public class loginInterceptor implements Interceptor {

    @Override
    public void destroy() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        if(actionInvocation.getInvocationContext().getSession().get("userName")!=null&&actionInvocation.getInvocationContext().getSession().get("userName").toString()!=""){
            return actionInvocation.invoke();
        }else{
            return "login";
        }
    }
}
