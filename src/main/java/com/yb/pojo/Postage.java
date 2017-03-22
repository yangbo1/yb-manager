package com.yb.pojo;

public class Postage {
    private Integer postId;

    private String type;

    private String callprice;

    private String messageprice;

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

    public String getCallprice() {
        return callprice;
    }

    public void setCallprice(String callprice) {
        this.callprice = callprice == null ? null : callprice.trim();
    }

    public String getMessageprice() {
        return messageprice;
    }

    public void setMessageprice(String messageprice) {
        this.messageprice = messageprice == null ? null : messageprice.trim();
    }

    public Float getRent() {
        return rent;
    }

    public void setRent(Float rent) {
        this.rent = rent;
    }
}