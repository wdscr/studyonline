package com.studyonline.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyExample() {
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

        public Criteria andReplyidIsNull() {
            addCriterion("ReplyID is null");
            return (Criteria) this;
        }

        public Criteria andReplyidIsNotNull() {
            addCriterion("ReplyID is not null");
            return (Criteria) this;
        }

        public Criteria andReplyidEqualTo(Integer value) {
            addCriterion("ReplyID =", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotEqualTo(Integer value) {
            addCriterion("ReplyID <>", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidGreaterThan(Integer value) {
            addCriterion("ReplyID >", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ReplyID >=", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidLessThan(Integer value) {
            addCriterion("ReplyID <", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidLessThanOrEqualTo(Integer value) {
            addCriterion("ReplyID <=", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidIn(List<Integer> values) {
            addCriterion("ReplyID in", values, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotIn(List<Integer> values) {
            addCriterion("ReplyID not in", values, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidBetween(Integer value1, Integer value2) {
            addCriterion("ReplyID between", value1, value2, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotBetween(Integer value1, Integer value2) {
            addCriterion("ReplyID not between", value1, value2, "replyid");
            return (Criteria) this;
        }

        public Criteria andPostidIsNull() {
            addCriterion("PostID is null");
            return (Criteria) this;
        }

        public Criteria andPostidIsNotNull() {
            addCriterion("PostID is not null");
            return (Criteria) this;
        }

        public Criteria andPostidEqualTo(Integer value) {
            addCriterion("PostID =", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidNotEqualTo(Integer value) {
            addCriterion("PostID <>", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidGreaterThan(Integer value) {
            addCriterion("PostID >", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidGreaterThanOrEqualTo(Integer value) {
            addCriterion("PostID >=", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidLessThan(Integer value) {
            addCriterion("PostID <", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidLessThanOrEqualTo(Integer value) {
            addCriterion("PostID <=", value, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidIn(List<Integer> values) {
            addCriterion("PostID in", values, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidNotIn(List<Integer> values) {
            addCriterion("PostID not in", values, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidBetween(Integer value1, Integer value2) {
            addCriterion("PostID between", value1, value2, "postid");
            return (Criteria) this;
        }

        public Criteria andPostidNotBetween(Integer value1, Integer value2) {
            addCriterion("PostID not between", value1, value2, "postid");
            return (Criteria) this;
        }

        public Criteria andUidIsNull() {
            addCriterion("Uid is null");
            return (Criteria) this;
        }

        public Criteria andUidIsNotNull() {
            addCriterion("Uid is not null");
            return (Criteria) this;
        }

        public Criteria andUidEqualTo(String value) {
            addCriterion("Uid =", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotEqualTo(String value) {
            addCriterion("Uid <>", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThan(String value) {
            addCriterion("Uid >", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThanOrEqualTo(String value) {
            addCriterion("Uid >=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThan(String value) {
            addCriterion("Uid <", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThanOrEqualTo(String value) {
            addCriterion("Uid <=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLike(String value) {
            addCriterion("Uid like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotLike(String value) {
            addCriterion("Uid not like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidIn(List<String> values) {
            addCriterion("Uid in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotIn(List<String> values) {
            addCriterion("Uid not in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidBetween(String value1, String value2) {
            addCriterion("Uid between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotBetween(String value1, String value2) {
            addCriterion("Uid not between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("Content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("Content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("Content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("Content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("Content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("Content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("Content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("Content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("Content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("Content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("Content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("Content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("Content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("Content not between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andReplytimeIsNull() {
            addCriterion("ReplyTime is null");
            return (Criteria) this;
        }

        public Criteria andReplytimeIsNotNull() {
            addCriterion("ReplyTime is not null");
            return (Criteria) this;
        }

        public Criteria andReplytimeEqualTo(Date value) {
            addCriterion("ReplyTime =", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotEqualTo(Date value) {
            addCriterion("ReplyTime <>", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeGreaterThan(Date value) {
            addCriterion("ReplyTime >", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeGreaterThanOrEqualTo(Date value) {
            addCriterion("ReplyTime >=", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeLessThan(Date value) {
            addCriterion("ReplyTime <", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeLessThanOrEqualTo(Date value) {
            addCriterion("ReplyTime <=", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeIn(List<Date> values) {
            addCriterion("ReplyTime in", values, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotIn(List<Date> values) {
            addCriterion("ReplyTime not in", values, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeBetween(Date value1, Date value2) {
            addCriterion("ReplyTime between", value1, value2, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotBetween(Date value1, Date value2) {
            addCriterion("ReplyTime not between", value1, value2, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidIsNull() {
            addCriterion("ReplyToReplyID is null");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidIsNotNull() {
            addCriterion("ReplyToReplyID is not null");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidEqualTo(Integer value) {
            addCriterion("ReplyToReplyID =", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidNotEqualTo(Integer value) {
            addCriterion("ReplyToReplyID <>", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidGreaterThan(Integer value) {
            addCriterion("ReplyToReplyID >", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ReplyToReplyID >=", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidLessThan(Integer value) {
            addCriterion("ReplyToReplyID <", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidLessThanOrEqualTo(Integer value) {
            addCriterion("ReplyToReplyID <=", value, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidIn(List<Integer> values) {
            addCriterion("ReplyToReplyID in", values, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidNotIn(List<Integer> values) {
            addCriterion("ReplyToReplyID not in", values, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidBetween(Integer value1, Integer value2) {
            addCriterion("ReplyToReplyID between", value1, value2, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytoreplyidNotBetween(Integer value1, Integer value2) {
            addCriterion("ReplyToReplyID not between", value1, value2, "replytoreplyid");
            return (Criteria) this;
        }

        public Criteria andReplytouidIsNull() {
            addCriterion("ReplyToUid is null");
            return (Criteria) this;
        }

        public Criteria andReplytouidIsNotNull() {
            addCriterion("ReplyToUid is not null");
            return (Criteria) this;
        }

        public Criteria andReplytouidEqualTo(String value) {
            addCriterion("ReplyToUid =", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidNotEqualTo(String value) {
            addCriterion("ReplyToUid <>", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidGreaterThan(String value) {
            addCriterion("ReplyToUid >", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidGreaterThanOrEqualTo(String value) {
            addCriterion("ReplyToUid >=", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidLessThan(String value) {
            addCriterion("ReplyToUid <", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidLessThanOrEqualTo(String value) {
            addCriterion("ReplyToUid <=", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidLike(String value) {
            addCriterion("ReplyToUid like", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidNotLike(String value) {
            addCriterion("ReplyToUid not like", value, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidIn(List<String> values) {
            addCriterion("ReplyToUid in", values, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidNotIn(List<String> values) {
            addCriterion("ReplyToUid not in", values, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidBetween(String value1, String value2) {
            addCriterion("ReplyToUid between", value1, value2, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplytouidNotBetween(String value1, String value2) {
            addCriterion("ReplyToUid not between", value1, value2, "replytouid");
            return (Criteria) this;
        }

        public Criteria andReplynameIsNull() {
            addCriterion("Replyname is null");
            return (Criteria) this;
        }

        public Criteria andReplynameIsNotNull() {
            addCriterion("Replyname is not null");
            return (Criteria) this;
        }

        public Criteria andReplynameEqualTo(String value) {
            addCriterion("Replyname =", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotEqualTo(String value) {
            addCriterion("Replyname <>", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameGreaterThan(String value) {
            addCriterion("Replyname >", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameGreaterThanOrEqualTo(String value) {
            addCriterion("Replyname >=", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLessThan(String value) {
            addCriterion("Replyname <", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLessThanOrEqualTo(String value) {
            addCriterion("Replyname <=", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLike(String value) {
            addCriterion("Replyname like", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotLike(String value) {
            addCriterion("Replyname not like", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameIn(List<String> values) {
            addCriterion("Replyname in", values, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotIn(List<String> values) {
            addCriterion("Replyname not in", values, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameBetween(String value1, String value2) {
            addCriterion("Replyname between", value1, value2, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotBetween(String value1, String value2) {
            addCriterion("Replyname not between", value1, value2, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplytonameIsNull() {
            addCriterion("Replytoname is null");
            return (Criteria) this;
        }

        public Criteria andReplytonameIsNotNull() {
            addCriterion("Replytoname is not null");
            return (Criteria) this;
        }

        public Criteria andReplytonameEqualTo(String value) {
            addCriterion("Replytoname =", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameNotEqualTo(String value) {
            addCriterion("Replytoname <>", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameGreaterThan(String value) {
            addCriterion("Replytoname >", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameGreaterThanOrEqualTo(String value) {
            addCriterion("Replytoname >=", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameLessThan(String value) {
            addCriterion("Replytoname <", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameLessThanOrEqualTo(String value) {
            addCriterion("Replytoname <=", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameLike(String value) {
            addCriterion("Replytoname like", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameNotLike(String value) {
            addCriterion("Replytoname not like", value, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameIn(List<String> values) {
            addCriterion("Replytoname in", values, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameNotIn(List<String> values) {
            addCriterion("Replytoname not in", values, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameBetween(String value1, String value2) {
            addCriterion("Replytoname between", value1, value2, "replytoname");
            return (Criteria) this;
        }

        public Criteria andReplytonameNotBetween(String value1, String value2) {
            addCriterion("Replytoname not between", value1, value2, "replytoname");
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