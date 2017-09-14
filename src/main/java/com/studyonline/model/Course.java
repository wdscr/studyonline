package com.studyonline.model;

public class Course {
    private Integer id;

    private String coursename;

    private String describe;

    private String firstclassname;

    private String coursepic;

    private Integer hot;

    private String secclassname;

    private String reference;

    private Float score;

    private String teacherid;

    private String dif;

    private Integer studycount;

    private Integer scorecount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    public String getFirstclassname() {
        return firstclassname;
    }

    public void setFirstclassname(String firstclassname) {
        this.firstclassname = firstclassname == null ? null : firstclassname.trim();
    }

    public String getCoursepic() {
        return coursepic;
    }

    public void setCoursepic(String coursepic) {
        this.coursepic = coursepic == null ? null : coursepic.trim();
    }

    public Integer getHot() {
        return hot;
    }

    public void setHot(Integer hot) {
        this.hot = hot;
    }

    public String getSecclassname() {
        return secclassname;
    }

    public void setSecclassname(String secclassname) {
        this.secclassname = secclassname == null ? null : secclassname.trim();
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference == null ? null : reference.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid == null ? null : teacherid.trim();
    }

    public String getDif() {
        return dif;
    }

    public void setDif(String dif) {
        this.dif = dif == null ? null : dif.trim();
    }

    public Integer getStudycount() {
        return studycount;
    }

    public void setStudycount(Integer studycount) {
        this.studycount = studycount;
    }

    public Integer getScorecount() {
        return scorecount;
    }

    public void setScorecount(Integer scorecount) {
        this.scorecount = scorecount;
    }
}