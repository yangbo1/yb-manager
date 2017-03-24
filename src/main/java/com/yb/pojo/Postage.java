package com.yb.pojo;

public class Postage {
    private Integer postId;

    private String type;

    private Float callprice;

    private Float messageprice;

    private Float rent;

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
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
        this.callprice = callprice ;
    }

    public Float getMessageprice() {
        return messageprice;
    }

    public void setMessageprice(Float messageprice) {
        this.messageprice = messageprice ;
    }

    public Float getRent() {
        return rent;
    }

    public void setRent(Float rent) {
        this.rent = rent;
    }
}