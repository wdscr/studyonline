package com.studyonline.model;

import java.util.Date;

public class Reply {
    private Integer replyid;

    private Integer postid;

    private String uid;

    private String content;

    private Date replytime;

    private Integer replytoreplyid;

    private String replytouid;

    private String replyname;

    private String replytoname;

    public Integer getReplyid() {
        return replyid;
    }

    public void setReplyid(Integer replyid) {
        this.replyid = replyid;
    }

    public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    public Integer getReplytoreplyid() {
        return replytoreplyid;
    }

    public void setReplytoreplyid(Integer replytoreplyid) {
        this.replytoreplyid = replytoreplyid;
    }

    public String getReplytouid() {
        return replytouid;
    }

    public void setReplytouid(String replytouid) {
        this.replytouid = replytouid == null ? null : replytouid.trim();
    }

    public String getReplyname() {
        return replyname;
    }

    public void setReplyname(String replyname) {
        this.replyname = replyname == null ? null : replyname.trim();
    }

    public String getReplytoname() {
        return replytoname;
    }

    public void setReplytoname(String replytoname) {
        this.replytoname = replytoname == null ? null : replytoname.trim();
    }
}