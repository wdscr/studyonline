package com.studyonline.model;

public class Homework {
    private Integer hwid;

    private Integer courseid;

    private String title;

    private Integer isfill;

    private String hwcontent;

    public Integer getHwid() {
        return hwid;
    }

    public void setHwid(Integer hwid) {
        this.hwid = hwid;
    }

    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getIsfill() {
        return isfill;
    }

    public void setIsfill(Integer isfill) {
        this.isfill = isfill;
    }

    public String getHwcontent() {
        return hwcontent;
    }

    public void setHwcontent(String hwcontent) {
        this.hwcontent = hwcontent == null ? null : hwcontent.trim();
    }
}