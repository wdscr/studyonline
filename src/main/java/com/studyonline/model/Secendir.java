package com.studyonline.model;

public class Secendir {
    private Integer id;

    private String classname;

    private Integer fdirid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public Integer getFdirid() {
        return fdirid;
    }

    public void setFdirid(Integer fdirid) {
        this.fdirid = fdirid;
    }
}