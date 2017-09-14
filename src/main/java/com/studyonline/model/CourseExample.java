package com.studyonline.model;

import java.util.ArrayList;
import java.util.List;

public class CourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("Id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("Id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("Id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("Id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("Id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("Id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("Id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("Id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("Id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("Id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCoursenameIsNull() {
            addCriterion("CourseName is null");
            return (Criteria) this;
        }

        public Criteria andCoursenameIsNotNull() {
            addCriterion("CourseName is not null");
            return (Criteria) this;
        }

        public Criteria andCoursenameEqualTo(String value) {
            addCriterion("CourseName =", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotEqualTo(String value) {
            addCriterion("CourseName <>", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThan(String value) {
            addCriterion("CourseName >", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameGreaterThanOrEqualTo(String value) {
            addCriterion("CourseName >=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThan(String value) {
            addCriterion("CourseName <", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLessThanOrEqualTo(String value) {
            addCriterion("CourseName <=", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameLike(String value) {
            addCriterion("CourseName like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotLike(String value) {
            addCriterion("CourseName not like", value, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameIn(List<String> values) {
            addCriterion("CourseName in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotIn(List<String> values) {
            addCriterion("CourseName not in", values, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameBetween(String value1, String value2) {
            addCriterion("CourseName between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andCoursenameNotBetween(String value1, String value2) {
            addCriterion("CourseName not between", value1, value2, "coursename");
            return (Criteria) this;
        }

        public Criteria andDescribeIsNull() {
            addCriterion("Describe is null");
            return (Criteria) this;
        }

        public Criteria andDescribeIsNotNull() {
            addCriterion("Describe is not null");
            return (Criteria) this;
        }

        public Criteria andDescribeEqualTo(String value) {
            addCriterion("Describe =", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotEqualTo(String value) {
            addCriterion("Describe <>", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeGreaterThan(String value) {
            addCriterion("Describe >", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("Describe >=", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLessThan(String value) {
            addCriterion("Describe <", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLessThanOrEqualTo(String value) {
            addCriterion("Describe <=", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLike(String value) {
            addCriterion("Describe like", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotLike(String value) {
            addCriterion("Describe not like", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeIn(List<String> values) {
            addCriterion("Describe in", values, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotIn(List<String> values) {
            addCriterion("Describe not in", values, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeBetween(String value1, String value2) {
            addCriterion("Describe between", value1, value2, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotBetween(String value1, String value2) {
            addCriterion("Describe not between", value1, value2, "describe");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameIsNull() {
            addCriterion("FirstClassname is null");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameIsNotNull() {
            addCriterion("FirstClassname is not null");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameEqualTo(String value) {
            addCriterion("FirstClassname =", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameNotEqualTo(String value) {
            addCriterion("FirstClassname <>", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameGreaterThan(String value) {
            addCriterion("FirstClassname >", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameGreaterThanOrEqualTo(String value) {
            addCriterion("FirstClassname >=", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameLessThan(String value) {
            addCriterion("FirstClassname <", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameLessThanOrEqualTo(String value) {
            addCriterion("FirstClassname <=", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameLike(String value) {
            addCriterion("FirstClassname like", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameNotLike(String value) {
            addCriterion("FirstClassname not like", value, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameIn(List<String> values) {
            addCriterion("FirstClassname in", values, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameNotIn(List<String> values) {
            addCriterion("FirstClassname not in", values, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameBetween(String value1, String value2) {
            addCriterion("FirstClassname between", value1, value2, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andFirstclassnameNotBetween(String value1, String value2) {
            addCriterion("FirstClassname not between", value1, value2, "firstclassname");
            return (Criteria) this;
        }

        public Criteria andCoursepicIsNull() {
            addCriterion("CoursePic is null");
            return (Criteria) this;
        }

        public Criteria andCoursepicIsNotNull() {
            addCriterion("CoursePic is not null");
            return (Criteria) this;
        }

        public Criteria andCoursepicEqualTo(String value) {
            addCriterion("CoursePic =", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotEqualTo(String value) {
            addCriterion("CoursePic <>", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicGreaterThan(String value) {
            addCriterion("CoursePic >", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicGreaterThanOrEqualTo(String value) {
            addCriterion("CoursePic >=", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLessThan(String value) {
            addCriterion("CoursePic <", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLessThanOrEqualTo(String value) {
            addCriterion("CoursePic <=", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicLike(String value) {
            addCriterion("CoursePic like", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotLike(String value) {
            addCriterion("CoursePic not like", value, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicIn(List<String> values) {
            addCriterion("CoursePic in", values, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotIn(List<String> values) {
            addCriterion("CoursePic not in", values, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicBetween(String value1, String value2) {
            addCriterion("CoursePic between", value1, value2, "coursepic");
            return (Criteria) this;
        }

        public Criteria andCoursepicNotBetween(String value1, String value2) {
            addCriterion("CoursePic not between", value1, value2, "coursepic");
            return (Criteria) this;
        }

        public Criteria andHotIsNull() {
            addCriterion("hot is null");
            return (Criteria) this;
        }

        public Criteria andHotIsNotNull() {
            addCriterion("hot is not null");
            return (Criteria) this;
        }

        public Criteria andHotEqualTo(Integer value) {
            addCriterion("hot =", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotNotEqualTo(Integer value) {
            addCriterion("hot <>", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotGreaterThan(Integer value) {
            addCriterion("hot >", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotGreaterThanOrEqualTo(Integer value) {
            addCriterion("hot >=", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotLessThan(Integer value) {
            addCriterion("hot <", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotLessThanOrEqualTo(Integer value) {
            addCriterion("hot <=", value, "hot");
            return (Criteria) this;
        }

        public Criteria andHotIn(List<Integer> values) {
            addCriterion("hot in", values, "hot");
            return (Criteria) this;
        }

        public Criteria andHotNotIn(List<Integer> values) {
            addCriterion("hot not in", values, "hot");
            return (Criteria) this;
        }

        public Criteria andHotBetween(Integer value1, Integer value2) {
            addCriterion("hot between", value1, value2, "hot");
            return (Criteria) this;
        }

        public Criteria andHotNotBetween(Integer value1, Integer value2) {
            addCriterion("hot not between", value1, value2, "hot");
            return (Criteria) this;
        }

        public Criteria andSecclassnameIsNull() {
            addCriterion("SecClassname is null");
            return (Criteria) this;
        }

        public Criteria andSecclassnameIsNotNull() {
            addCriterion("SecClassname is not null");
            return (Criteria) this;
        }

        public Criteria andSecclassnameEqualTo(String value) {
            addCriterion("SecClassname =", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameNotEqualTo(String value) {
            addCriterion("SecClassname <>", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameGreaterThan(String value) {
            addCriterion("SecClassname >", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameGreaterThanOrEqualTo(String value) {
            addCriterion("SecClassname >=", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameLessThan(String value) {
            addCriterion("SecClassname <", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameLessThanOrEqualTo(String value) {
            addCriterion("SecClassname <=", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameLike(String value) {
            addCriterion("SecClassname like", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameNotLike(String value) {
            addCriterion("SecClassname not like", value, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameIn(List<String> values) {
            addCriterion("SecClassname in", values, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameNotIn(List<String> values) {
            addCriterion("SecClassname not in", values, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameBetween(String value1, String value2) {
            addCriterion("SecClassname between", value1, value2, "secclassname");
            return (Criteria) this;
        }

        public Criteria andSecclassnameNotBetween(String value1, String value2) {
            addCriterion("SecClassname not between", value1, value2, "secclassname");
            return (Criteria) this;
        }

        public Criteria andReferenceIsNull() {
            addCriterion("Reference is null");
            return (Criteria) this;
        }

        public Criteria andReferenceIsNotNull() {
            addCriterion("Reference is not null");
            return (Criteria) this;
        }

        public Criteria andReferenceEqualTo(String value) {
            addCriterion("Reference =", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceNotEqualTo(String value) {
            addCriterion("Reference <>", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceGreaterThan(String value) {
            addCriterion("Reference >", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceGreaterThanOrEqualTo(String value) {
            addCriterion("Reference >=", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceLessThan(String value) {
            addCriterion("Reference <", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceLessThanOrEqualTo(String value) {
            addCriterion("Reference <=", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceLike(String value) {
            addCriterion("Reference like", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceNotLike(String value) {
            addCriterion("Reference not like", value, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceIn(List<String> values) {
            addCriterion("Reference in", values, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceNotIn(List<String> values) {
            addCriterion("Reference not in", values, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceBetween(String value1, String value2) {
            addCriterion("Reference between", value1, value2, "reference");
            return (Criteria) this;
        }

        public Criteria andReferenceNotBetween(String value1, String value2) {
            addCriterion("Reference not between", value1, value2, "reference");
            return (Criteria) this;
        }

        public Criteria andScoreIsNull() {
            addCriterion("Score is null");
            return (Criteria) this;
        }

        public Criteria andScoreIsNotNull() {
            addCriterion("Score is not null");
            return (Criteria) this;
        }

        public Criteria andScoreEqualTo(Float value) {
            addCriterion("Score =", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotEqualTo(Float value) {
            addCriterion("Score <>", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThan(Float value) {
            addCriterion("Score >", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThanOrEqualTo(Float value) {
            addCriterion("Score >=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThan(Float value) {
            addCriterion("Score <", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThanOrEqualTo(Float value) {
            addCriterion("Score <=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreIn(List<Float> values) {
            addCriterion("Score in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotIn(List<Float> values) {
            addCriterion("Score not in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreBetween(Float value1, Float value2) {
            addCriterion("Score between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotBetween(Float value1, Float value2) {
            addCriterion("Score not between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andTeacheridIsNull() {
            addCriterion("TeacherId is null");
            return (Criteria) this;
        }

        public Criteria andTeacheridIsNotNull() {
            addCriterion("TeacherId is not null");
            return (Criteria) this;
        }

        public Criteria andTeacheridEqualTo(String value) {
            addCriterion("TeacherId =", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotEqualTo(String value) {
            addCriterion("TeacherId <>", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridGreaterThan(String value) {
            addCriterion("TeacherId >", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridGreaterThanOrEqualTo(String value) {
            addCriterion("TeacherId >=", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridLessThan(String value) {
            addCriterion("TeacherId <", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridLessThanOrEqualTo(String value) {
            addCriterion("TeacherId <=", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridLike(String value) {
            addCriterion("TeacherId like", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotLike(String value) {
            addCriterion("TeacherId not like", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridIn(List<String> values) {
            addCriterion("TeacherId in", values, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotIn(List<String> values) {
            addCriterion("TeacherId not in", values, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridBetween(String value1, String value2) {
            addCriterion("TeacherId between", value1, value2, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotBetween(String value1, String value2) {
            addCriterion("TeacherId not between", value1, value2, "teacherid");
            return (Criteria) this;
        }

        public Criteria andDifIsNull() {
            addCriterion("dif is null");
            return (Criteria) this;
        }

        public Criteria andDifIsNotNull() {
            addCriterion("dif is not null");
            return (Criteria) this;
        }

        public Criteria andDifEqualTo(String value) {
            addCriterion("dif =", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifNotEqualTo(String value) {
            addCriterion("dif <>", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifGreaterThan(String value) {
            addCriterion("dif >", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifGreaterThanOrEqualTo(String value) {
            addCriterion("dif >=", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifLessThan(String value) {
            addCriterion("dif <", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifLessThanOrEqualTo(String value) {
            addCriterion("dif <=", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifLike(String value) {
            addCriterion("dif like", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifNotLike(String value) {
            addCriterion("dif not like", value, "dif");
            return (Criteria) this;
        }

        public Criteria andDifIn(List<String> values) {
            addCriterion("dif in", values, "dif");
            return (Criteria) this;
        }

        public Criteria andDifNotIn(List<String> values) {
            addCriterion("dif not in", values, "dif");
            return (Criteria) this;
        }

        public Criteria andDifBetween(String value1, String value2) {
            addCriterion("dif between", value1, value2, "dif");
            return (Criteria) this;
        }

        public Criteria andDifNotBetween(String value1, String value2) {
            addCriterion("dif not between", value1, value2, "dif");
            return (Criteria) this;
        }

        public Criteria andStudycountIsNull() {
            addCriterion("StudyCount is null");
            return (Criteria) this;
        }

        public Criteria andStudycountIsNotNull() {
            addCriterion("StudyCount is not null");
            return (Criteria) this;
        }

        public Criteria andStudycountEqualTo(Integer value) {
            addCriterion("StudyCount =", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountNotEqualTo(Integer value) {
            addCriterion("StudyCount <>", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountGreaterThan(Integer value) {
            addCriterion("StudyCount >", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountGreaterThanOrEqualTo(Integer value) {
            addCriterion("StudyCount >=", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountLessThan(Integer value) {
            addCriterion("StudyCount <", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountLessThanOrEqualTo(Integer value) {
            addCriterion("StudyCount <=", value, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountIn(List<Integer> values) {
            addCriterion("StudyCount in", values, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountNotIn(List<Integer> values) {
            addCriterion("StudyCount not in", values, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountBetween(Integer value1, Integer value2) {
            addCriterion("StudyCount between", value1, value2, "studycount");
            return (Criteria) this;
        }

        public Criteria andStudycountNotBetween(Integer value1, Integer value2) {
            addCriterion("StudyCount not between", value1, value2, "studycount");
            return (Criteria) this;
        }

        public Criteria andScorecountIsNull() {
            addCriterion("ScoreCount is null");
            return (Criteria) this;
        }

        public Criteria andScorecountIsNotNull() {
            addCriterion("ScoreCount is not null");
            return (Criteria) this;
        }

        public Criteria andScorecountEqualTo(Integer value) {
            addCriterion("ScoreCount =", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountNotEqualTo(Integer value) {
            addCriterion("ScoreCount <>", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountGreaterThan(Integer value) {
            addCriterion("ScoreCount >", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountGreaterThanOrEqualTo(Integer value) {
            addCriterion("ScoreCount >=", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountLessThan(Integer value) {
            addCriterion("ScoreCount <", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountLessThanOrEqualTo(Integer value) {
            addCriterion("ScoreCount <=", value, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountIn(List<Integer> values) {
            addCriterion("ScoreCount in", values, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountNotIn(List<Integer> values) {
            addCriterion("ScoreCount not in", values, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountBetween(Integer value1, Integer value2) {
            addCriterion("ScoreCount between", value1, value2, "scorecount");
            return (Criteria) this;
        }

        public Criteria andScorecountNotBetween(Integer value1, Integer value2) {
            addCriterion("ScoreCount not between", value1, value2, "scorecount");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}