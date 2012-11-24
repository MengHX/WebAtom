package com.vcher.coffee.action;

import com.vcher.coffee.action.support.PageAndSearchAbleAction;
import com.vcher.coffee.bean.Message;
import com.vcher.coffee.dao.MessageDao;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
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
public class MessageAction extends PageAndSearchAbleAction {

    private MessageDao messageDao;
    private String phone;
    private String messageId;
    private String email;
    private String content;
    private String createUser;
    private List<Message> messageList;

    @Override
    public String search() {
        int startIndex = pageIndex*pageSize;
        messageList = messageDao.listMessage(keywords, startIndex, pageSize);
        itemCount = messageDao.listMessage(keywords).size();
        pageCount = (itemCount + pageSize - 1) / pageSize;
        return "list";
    }

    @Override
    public String del() {
        String messageId = ServletActionContext.getRequest().getParameter("messageId");
        try {
            messageDao.delMessage(messageId);
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
        Message message = messageDao.findMessageById(messageId);
        ServletActionContext.getRequest().setAttribute("message", message);
        return "show";
    }

    @Override
    public String add() {
        try {
            Message message = new Message(phone, email, content, createUser);
            if (messageId != null && !messageId.equals("")) {
                message.setId(Integer.parseInt(messageId));
            }
            messageDao.saveOrUpadteMessage(message);
        } catch (Exception e) {
            e.printStackTrace();
            oprMessage = "添加失败！";
            return "oprFailed";
        }
        oprMessage = "添加成功！";
        return "oprSuccess";
    }

    @Override
    public String mdy() {
        return null;
    }

    public MessageDao getMessageDao() {
        return messageDao;
    }

    @Resource
    public void setMessageDao(MessageDao messageDao) {
        this.messageDao = messageDao;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessageId() {
        return messageId;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

}
