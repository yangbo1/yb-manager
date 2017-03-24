package com.yb.pojo;

public class Mypostage {
    private Integer mpid;

    private Integer cId;

    private String cName;

    private Integer pId;

    private String type;

    private Float callprice;

    private Float messageprice;

    private Float rent;

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Float getCallprice() {
        return callprice;
    }

    public void setCallprice(Float callprice) {
        this.callprice = callprice;
    }

    public Float getMessageprice() {
        return messageprice;
    }

    public void setMessageprice(Float messageprice) {
        this.messageprice = messageprice;
    }

    public Float getRent() {
        return rent;
    }

    public void setRent(Float rent) {
        this.rent = rent;
    }
}