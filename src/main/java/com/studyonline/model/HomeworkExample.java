package com.studyonline.model;

import java.util.ArrayList;
import java.util.List;

public class HomeworkExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HomeworkExample() {
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

        public Criteria andHwidIsNull() {
            addCriterion("hwid is null");
            return (Criteria) this;
        }

        public Criteria andHwidIsNotNull() {
            addCriterion("hwid is not null");
            return (Criteria) this;
        }

        public Criteria andHwidEqualTo(Integer value) {
            addCriterion("hwid =", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidNotEqualTo(Integer value) {
            addCriterion("hwid <>", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidGreaterThan(Integer value) {
            addCriterion("hwid >", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidGreaterThanOrEqualTo(Integer value) {
            addCriterion("hwid >=", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidLessThan(Integer value) {
            addCriterion("hwid <", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidLessThanOrEqualTo(Integer value) {
            addCriterion("hwid <=", value, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidIn(List<Integer> values) {
            addCriterion("hwid in", values, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidNotIn(List<Integer> values) {
            addCriterion("hwid not in", values, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidBetween(Integer value1, Integer value2) {
            addCriterion("hwid between", value1, value2, "hwid");
            return (Criteria) this;
        }

        public Criteria andHwidNotBetween(Integer value1, Integer value2) {
            addCriterion("hwid not between", value1, value2, "hwid");
            return (Criteria) this;
        }

        public Criteria andCourseidIsNull() {
            addCriterion("courseid is null");
            return (Criteria) this;
        }

        public Criteria andCourseidIsNotNull() {
            addCriterion("courseid is not null");
            return (Criteria) this;
        }

        public Criteria andCourseidEqualTo(Integer value) {
            addCriterion("courseid =", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidNotEqualTo(Integer value) {
            addCriterion("courseid <>", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidGreaterThan(Integer value) {
            addCriterion("courseid >", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidGreaterThanOrEqualTo(Integer value) {
            addCriterion("courseid >=", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidLessThan(Integer value) {
            addCriterion("courseid <", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidLessThanOrEqualTo(Integer value) {
            addCriterion("courseid <=", value, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidIn(List<Integer> values) {
            addCriterion("courseid in", values, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidNotIn(List<Integer> values) {
            addCriterion("courseid not in", values, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidBetween(Integer value1, Integer value2) {
            addCriterion("courseid between", value1, value2, "courseid");
            return (Criteria) this;
        }

        public Criteria andCourseidNotBetween(Integer value1, Integer value2) {
            addCriterion("courseid not between", value1, value2, "courseid");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andIsfillIsNull() {
            addCriterion("isfill is null");
            return (Criteria) this;
        }

        public Criteria andIsfillIsNotNull() {
            addCriterion("isfill is not null");
            return (Criteria) this;
        }

        public Criteria andIsfillEqualTo(Integer value) {
            addCriterion("isfill =", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillNotEqualTo(Integer value) {
            addCriterion("isfill <>", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillGreaterThan(Integer value) {
            addCriterion("isfill >", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillGreaterThanOrEqualTo(Integer value) {
            addCriterion("isfill >=", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillLessThan(Integer value) {
            addCriterion("isfill <", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillLessThanOrEqualTo(Integer value) {
            addCriterion("isfill <=", value, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillIn(List<Integer> values) {
            addCriterion("isfill in", values, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillNotIn(List<Integer> values) {
            addCriterion("isfill not in", values, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillBetween(Integer value1, Integer value2) {
            addCriterion("isfill between", value1, value2, "isfill");
            return (Criteria) this;
        }

        public Criteria andIsfillNotBetween(Integer value1, Integer value2) {
            addCriterion("isfill not between", value1, value2, "isfill");
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