package com.studyonline.model;

public class Hwlib {
    private Integer hlid;

    private String hlsrc;

    private Integer userid;

    private String hlanswer;

    public Integer getHlid() {
        return hlid;
    }

    public void setHlid(Integer hlid) {
        this.hlid = hlid;
    }

    public String getHlsrc() {
        return hlsrc;
    }

    public void setHlsrc(String hlsrc) {
        this.hlsrc = hlsrc == null ? null : hlsrc.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getHlanswer() {
        return hlanswer;
    }

    public void setHlanswer(String hlanswer) {
        this.hlanswer = hlanswer == null ? null : hlanswer.trim();
    }
}