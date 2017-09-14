package com.studyonline.model;

import java.util.ArrayList;
import java.util.List;

public class HwlibExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HwlibExample() {
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

        public Criteria andHlidIsNull() {
            addCriterion("hlid is null");
            return (Criteria) this;
        }

        public Criteria andHlidIsNotNull() {
            addCriterion("hlid is not null");
            return (Criteria) this;
        }

        public Criteria andHlidEqualTo(Integer value) {
            addCriterion("hlid =", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidNotEqualTo(Integer value) {
            addCriterion("hlid <>", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidGreaterThan(Integer value) {
            addCriterion("hlid >", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidGreaterThanOrEqualTo(Integer value) {
            addCriterion("hlid >=", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidLessThan(Integer value) {
            addCriterion("hlid <", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidLessThanOrEqualTo(Integer value) {
            addCriterion("hlid <=", value, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidIn(List<Integer> values) {
            addCriterion("hlid in", values, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidNotIn(List<Integer> values) {
            addCriterion("hlid not in", values, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidBetween(Integer value1, Integer value2) {
            addCriterion("hlid between", value1, value2, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlidNotBetween(Integer value1, Integer value2) {
            addCriterion("hlid not between", value1, value2, "hlid");
            return (Criteria) this;
        }

        public Criteria andHlsrcIsNull() {
            addCriterion("hlsrc is null");
            return (Criteria) this;
        }

        public Criteria andHlsrcIsNotNull() {
            addCriterion("hlsrc is not null");
            return (Criteria) this;
        }

        public Criteria andHlsrcEqualTo(String value) {
            addCriterion("hlsrc =", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcNotEqualTo(String value) {
            addCriterion("hlsrc <>", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcGreaterThan(String value) {
            addCriterion("hlsrc >", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcGreaterThanOrEqualTo(String value) {
            addCriterion("hlsrc >=", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcLessThan(String value) {
            addCriterion("hlsrc <", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcLessThanOrEqualTo(String value) {
            addCriterion("hlsrc <=", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcLike(String value) {
            addCriterion("hlsrc like", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcNotLike(String value) {
            addCriterion("hlsrc not like", value, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcIn(List<String> values) {
            addCriterion("hlsrc in", values, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcNotIn(List<String> values) {
            addCriterion("hlsrc not in", values, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcBetween(String value1, String value2) {
            addCriterion("hlsrc between", value1, value2, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andHlsrcNotBetween(String value1, String value2) {
            addCriterion("hlsrc not between", value1, value2, "hlsrc");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andHlanswerIsNull() {
            addCriterion("hlanswer is null");
            return (Criteria) this;
        }

        public Criteria andHlanswerIsNotNull() {
            addCriterion("hlanswer is not null");
            return (Criteria) this;
        }

        public Criteria andHlanswerEqualTo(String value) {
            addCriterion("hlanswer =", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerNotEqualTo(String value) {
            addCriterion("hlanswer <>", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerGreaterThan(String value) {
            addCriterion("hlanswer >", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerGreaterThanOrEqualTo(String value) {
            addCriterion("hlanswer >=", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerLessThan(String value) {
            addCriterion("hlanswer <", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerLessThanOrEqualTo(String value) {
            addCriterion("hlanswer <=", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerLike(String value) {
            addCriterion("hlanswer like", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerNotLike(String value) {
            addCriterion("hlanswer not like", value, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerIn(List<String> values) {
            addCriterion("hlanswer in", values, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerNotIn(List<String> values) {
            addCriterion("hlanswer not in", values, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerBetween(String value1, String value2) {
            addCriterion("hlanswer between", value1, value2, "hlanswer");
            return (Criteria) this;
        }

        public Criteria andHlanswerNotBetween(String value1, String value2) {
            addCriterion("hlanswer not between", value1, value2, "hlanswer");
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