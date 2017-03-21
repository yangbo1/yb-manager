package com.yb.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GprsdetailsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GprsdetailsExample() {
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

        public Criteria andGprsIdIsNull() {
            addCriterion("gprs_id is null");
            return (Criteria) this;
        }

        public Criteria andGprsIdIsNotNull() {
            addCriterion("gprs_id is not null");
            return (Criteria) this;
        }

        public Criteria andGprsIdEqualTo(Integer value) {
            addCriterion("gprs_id =", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdNotEqualTo(Integer value) {
            addCriterion("gprs_id <>", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdGreaterThan(Integer value) {
            addCriterion("gprs_id >", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("gprs_id >=", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdLessThan(Integer value) {
            addCriterion("gprs_id <", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdLessThanOrEqualTo(Integer value) {
            addCriterion("gprs_id <=", value, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdIn(List<Integer> values) {
            addCriterion("gprs_id in", values, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdNotIn(List<Integer> values) {
            addCriterion("gprs_id not in", values, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdBetween(Integer value1, Integer value2) {
            addCriterion("gprs_id between", value1, value2, "gprsId");
            return (Criteria) this;
        }

        public Criteria andGprsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("gprs_id not between", value1, value2, "gprsId");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createtime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createtime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createtime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createtime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createtime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createtime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createtime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createtime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createtime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createtime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createtime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andUsegprsIsNull() {
            addCriterion("usegprs is null");
            return (Criteria) this;
        }

        public Criteria andUsegprsIsNotNull() {
            addCriterion("usegprs is not null");
            return (Criteria) this;
        }

        public Criteria andUsegprsEqualTo(Long value) {
            addCriterion("usegprs =", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsNotEqualTo(Long value) {
            addCriterion("usegprs <>", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsGreaterThan(Long value) {
            addCriterion("usegprs >", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsGreaterThanOrEqualTo(Long value) {
            addCriterion("usegprs >=", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsLessThan(Long value) {
            addCriterion("usegprs <", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsLessThanOrEqualTo(Long value) {
            addCriterion("usegprs <=", value, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsIn(List<Long> values) {
            addCriterion("usegprs in", values, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsNotIn(List<Long> values) {
            addCriterion("usegprs not in", values, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsBetween(Long value1, Long value2) {
            addCriterion("usegprs between", value1, value2, "usegprs");
            return (Criteria) this;
        }

        public Criteria andUsegprsNotBetween(Long value1, Long value2) {
            addCriterion("usegprs not between", value1, value2, "usegprs");
            return (Criteria) this;
        }

        public Criteria andCuIdIsNull() {
            addCriterion("cu_id is null");
            return (Criteria) this;
        }

        public Criteria andCuIdIsNotNull() {
            addCriterion("cu_id is not null");
            return (Criteria) this;
        }

        public Criteria andCuIdEqualTo(Integer value) {
            addCriterion("cu_id =", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdNotEqualTo(Integer value) {
            addCriterion("cu_id <>", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdGreaterThan(Integer value) {
            addCriterion("cu_id >", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cu_id >=", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdLessThan(Integer value) {
            addCriterion("cu_id <", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdLessThanOrEqualTo(Integer value) {
            addCriterion("cu_id <=", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdIn(List<Integer> values) {
            addCriterion("cu_id in", values, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdNotIn(List<Integer> values) {
            addCriterion("cu_id not in", values, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdBetween(Integer value1, Integer value2) {
            addCriterion("cu_id between", value1, value2, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cu_id not between", value1, value2, "cuId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
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