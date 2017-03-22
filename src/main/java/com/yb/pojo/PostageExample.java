package com.yb.pojo;

import java.util.ArrayList;
import java.util.List;

public class PostageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostageExample() {
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

        public Criteria andPostIdIsNull() {
            addCriterion("post_id is null");
            return (Criteria) this;
        }

        public Criteria andPostIdIsNotNull() {
            addCriterion("post_id is not null");
            return (Criteria) this;
        }

        public Criteria andPostIdEqualTo(Integer value) {
            addCriterion("post_id =", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdNotEqualTo(Integer value) {
            addCriterion("post_id <>", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdGreaterThan(Integer value) {
            addCriterion("post_id >", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("post_id >=", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdLessThan(Integer value) {
            addCriterion("post_id <", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdLessThanOrEqualTo(Integer value) {
            addCriterion("post_id <=", value, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdIn(List<Integer> values) {
            addCriterion("post_id in", values, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdNotIn(List<Integer> values) {
            addCriterion("post_id not in", values, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdBetween(Integer value1, Integer value2) {
            addCriterion("post_id between", value1, value2, "postId");
            return (Criteria) this;
        }

        public Criteria andPostIdNotBetween(Integer value1, Integer value2) {
            addCriterion("post_id not between", value1, value2, "postId");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("type like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("type not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andCallpriceIsNull() {
            addCriterion("callprice is null");
            return (Criteria) this;
        }

        public Criteria andCallpriceIsNotNull() {
            addCriterion("callprice is not null");
            return (Criteria) this;
        }

        public Criteria andCallpriceEqualTo(String value) {
            addCriterion("callprice =", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceNotEqualTo(String value) {
            addCriterion("callprice <>", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceGreaterThan(String value) {
            addCriterion("callprice >", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceGreaterThanOrEqualTo(String value) {
            addCriterion("callprice >=", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceLessThan(String value) {
            addCriterion("callprice <", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceLessThanOrEqualTo(String value) {
            addCriterion("callprice <=", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceLike(String value) {
            addCriterion("callprice like", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceNotLike(String value) {
            addCriterion("callprice not like", value, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceIn(List<String> values) {
            addCriterion("callprice in", values, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceNotIn(List<String> values) {
            addCriterion("callprice not in", values, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceBetween(String value1, String value2) {
            addCriterion("callprice between", value1, value2, "callprice");
            return (Criteria) this;
        }

        public Criteria andCallpriceNotBetween(String value1, String value2) {
            addCriterion("callprice not between", value1, value2, "callprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceIsNull() {
            addCriterion("messageprice is null");
            return (Criteria) this;
        }

        public Criteria andMessagepriceIsNotNull() {
            addCriterion("messageprice is not null");
            return (Criteria) this;
        }

        public Criteria andMessagepriceEqualTo(String value) {
            addCriterion("messageprice =", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceNotEqualTo(String value) {
            addCriterion("messageprice <>", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceGreaterThan(String value) {
            addCriterion("messageprice >", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceGreaterThanOrEqualTo(String value) {
            addCriterion("messageprice >=", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceLessThan(String value) {
            addCriterion("messageprice <", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceLessThanOrEqualTo(String value) {
            addCriterion("messageprice <=", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceLike(String value) {
            addCriterion("messageprice like", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceNotLike(String value) {
            addCriterion("messageprice not like", value, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceIn(List<String> values) {
            addCriterion("messageprice in", values, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceNotIn(List<String> values) {
            addCriterion("messageprice not in", values, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceBetween(String value1, String value2) {
            addCriterion("messageprice between", value1, value2, "messageprice");
            return (Criteria) this;
        }

        public Criteria andMessagepriceNotBetween(String value1, String value2) {
            addCriterion("messageprice not between", value1, value2, "messageprice");
            return (Criteria) this;
        }

        public Criteria andRentIsNull() {
            addCriterion("rent is null");
            return (Criteria) this;
        }

        public Criteria andRentIsNotNull() {
            addCriterion("rent is not null");
            return (Criteria) this;
        }

        public Criteria andRentEqualTo(Float value) {
            addCriterion("rent =", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentNotEqualTo(Float value) {
            addCriterion("rent <>", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentGreaterThan(Float value) {
            addCriterion("rent >", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentGreaterThanOrEqualTo(Float value) {
            addCriterion("rent >=", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentLessThan(Float value) {
            addCriterion("rent <", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentLessThanOrEqualTo(Float value) {
            addCriterion("rent <=", value, "rent");
            return (Criteria) this;
        }

        public Criteria andRentIn(List<Float> values) {
            addCriterion("rent in", values, "rent");
            return (Criteria) this;
        }

        public Criteria andRentNotIn(List<Float> values) {
            addCriterion("rent not in", values, "rent");
            return (Criteria) this;
        }

        public Criteria andRentBetween(Float value1, Float value2) {
            addCriterion("rent between", value1, value2, "rent");
            return (Criteria) this;
        }

        public Criteria andRentNotBetween(Float value1, Float value2) {
            addCriterion("rent not between", value1, value2, "rent");
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