package com.yb.pojo;

public class Balance {
    private Integer baId;

    private Float money;

    private Long gprs;

    private Integer cId;

    private String name;

    public Integer getBaId() {
        return baId;
    }

    public void setBaId(Integer baId) {
        this.baId = baId;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }

    public Long getGprs() {
        return gprs;
    }

    public void setGprs(Long gprs) {
        this.gprs = gprs;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}