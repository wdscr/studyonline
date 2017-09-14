package com.studyonline.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostExample() {
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

        public Criteria andNameIsNull() {
            addCriterion("Name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("Name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("Name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("Name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("Name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("Name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("Name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("Name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("Name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("Name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("Name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("Name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("Name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("Name not between", value1, value2, "name");
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

        public Criteria andCreatedtimeIsNull() {
            addCriterion("CreatedTime is null");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeIsNotNull() {
            addCriterion("CreatedTime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeEqualTo(Date value) {
            addCriterion("CreatedTime =", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeNotEqualTo(Date value) {
            addCriterion("CreatedTime <>", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeGreaterThan(Date value) {
            addCriterion("CreatedTime >", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("CreatedTime >=", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeLessThan(Date value) {
            addCriterion("CreatedTime <", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeLessThanOrEqualTo(Date value) {
            addCriterion("CreatedTime <=", value, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeIn(List<Date> values) {
            addCriterion("CreatedTime in", values, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeNotIn(List<Date> values) {
            addCriterion("CreatedTime not in", values, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeBetween(Date value1, Date value2) {
            addCriterion("CreatedTime between", value1, value2, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreatedtimeNotBetween(Date value1, Date value2) {
            addCriterion("CreatedTime not between", value1, value2, "createdtime");
            return (Criteria) this;
        }

        public Criteria andCreateduidIsNull() {
            addCriterion("CreatedUid is null");
            return (Criteria) this;
        }

        public Criteria andCreateduidIsNotNull() {
            addCriterion("CreatedUid is not null");
            return (Criteria) this;
        }

        public Criteria andCreateduidEqualTo(String value) {
            addCriterion("CreatedUid =", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidNotEqualTo(String value) {
            addCriterion("CreatedUid <>", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidGreaterThan(String value) {
            addCriterion("CreatedUid >", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidGreaterThanOrEqualTo(String value) {
            addCriterion("CreatedUid >=", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidLessThan(String value) {
            addCriterion("CreatedUid <", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidLessThanOrEqualTo(String value) {
            addCriterion("CreatedUid <=", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidLike(String value) {
            addCriterion("CreatedUid like", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidNotLike(String value) {
            addCriterion("CreatedUid not like", value, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidIn(List<String> values) {
            addCriterion("CreatedUid in", values, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidNotIn(List<String> values) {
            addCriterion("CreatedUid not in", values, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidBetween(String value1, String value2) {
            addCriterion("CreatedUid between", value1, value2, "createduid");
            return (Criteria) this;
        }

        public Criteria andCreateduidNotBetween(String value1, String value2) {
            addCriterion("CreatedUid not between", value1, value2, "createduid");
            return (Criteria) this;
        }

        public Criteria andLabelIsNull() {
            addCriterion("Label is null");
            return (Criteria) this;
        }

        public Criteria andLabelIsNotNull() {
            addCriterion("Label is not null");
            return (Criteria) this;
        }

        public Criteria andLabelEqualTo(String value) {
            addCriterion("Label =", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelNotEqualTo(String value) {
            addCriterion("Label <>", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelGreaterThan(String value) {
            addCriterion("Label >", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelGreaterThanOrEqualTo(String value) {
            addCriterion("Label >=", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelLessThan(String value) {
            addCriterion("Label <", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelLessThanOrEqualTo(String value) {
            addCriterion("Label <=", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelLike(String value) {
            addCriterion("Label like", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelNotLike(String value) {
            addCriterion("Label not like", value, "label");
            return (Criteria) this;
        }

        public Criteria andLabelIn(List<String> values) {
            addCriterion("Label in", values, "label");
            return (Criteria) this;
        }

        public Criteria andLabelNotIn(List<String> values) {
            addCriterion("Label not in", values, "label");
            return (Criteria) this;
        }

        public Criteria andLabelBetween(String value1, String value2) {
            addCriterion("Label between", value1, value2, "label");
            return (Criteria) this;
        }

        public Criteria andLabelNotBetween(String value1, String value2) {
            addCriterion("Label not between", value1, value2, "label");
            return (Criteria) this;
        }

        public Criteria andReplynumIsNull() {
            addCriterion("ReplyNum is null");
            return (Criteria) this;
        }

        public Criteria andReplynumIsNotNull() {
            addCriterion("ReplyNum is not null");
            return (Criteria) this;
        }

        public Criteria andReplynumEqualTo(Integer value) {
            addCriterion("ReplyNum =", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumNotEqualTo(Integer value) {
            addCriterion("ReplyNum <>", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumGreaterThan(Integer value) {
            addCriterion("ReplyNum >", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumGreaterThanOrEqualTo(Integer value) {
            addCriterion("ReplyNum >=", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumLessThan(Integer value) {
            addCriterion("ReplyNum <", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumLessThanOrEqualTo(Integer value) {
            addCriterion("ReplyNum <=", value, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumIn(List<Integer> values) {
            addCriterion("ReplyNum in", values, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumNotIn(List<Integer> values) {
            addCriterion("ReplyNum not in", values, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumBetween(Integer value1, Integer value2) {
            addCriterion("ReplyNum between", value1, value2, "replynum");
            return (Criteria) this;
        }

        public Criteria andReplynumNotBetween(Integer value1, Integer value2) {
            addCriterion("ReplyNum not between", value1, value2, "replynum");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeIsNull() {
            addCriterion("LastReplyTime is null");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeIsNotNull() {
            addCriterion("LastReplyTime is not null");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeEqualTo(Date value) {
            addCriterion("LastReplyTime =", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeNotEqualTo(Date value) {
            addCriterion("LastReplyTime <>", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeGreaterThan(Date value) {
            addCriterion("LastReplyTime >", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeGreaterThanOrEqualTo(Date value) {
            addCriterion("LastReplyTime >=", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeLessThan(Date value) {
            addCriterion("LastReplyTime <", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeLessThanOrEqualTo(Date value) {
            addCriterion("LastReplyTime <=", value, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeIn(List<Date> values) {
            addCriterion("LastReplyTime in", values, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeNotIn(List<Date> values) {
            addCriterion("LastReplyTime not in", values, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeBetween(Date value1, Date value2) {
            addCriterion("LastReplyTime between", value1, value2, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andLastreplytimeNotBetween(Date value1, Date value2) {
            addCriterion("LastReplyTime not between", value1, value2, "lastreplytime");
            return (Criteria) this;
        }

        public Criteria andNicknameIsNull() {
            addCriterion("nickname is null");
            return (Criteria) this;
        }

        public Criteria andNicknameIsNotNull() {
            addCriterion("nickname is not null");
            return (Criteria) this;
        }

        public Criteria andNicknameEqualTo(String value) {
            addCriterion("nickname =", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotEqualTo(String value) {
            addCriterion("nickname <>", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameGreaterThan(String value) {
            addCriterion("nickname >", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("nickname >=", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLessThan(String value) {
            addCriterion("nickname <", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLessThanOrEqualTo(String value) {
            addCriterion("nickname <=", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameLike(String value) {
            addCriterion("nickname like", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotLike(String value) {
            addCriterion("nickname not like", value, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameIn(List<String> values) {
            addCriterion("nickname in", values, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotIn(List<String> values) {
            addCriterion("nickname not in", values, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameBetween(String value1, String value2) {
            addCriterion("nickname between", value1, value2, "nickname");
            return (Criteria) this;
        }

        public Criteria andNicknameNotBetween(String value1, String value2) {
            addCriterion("nickname not between", value1, value2, "nickname");
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