package com.yb.pojo;

import java.util.Date;

public class Gprsdetails {
    private Integer gprsId;

    private Date createtime;

    private Long usegprs;

    private Integer cuId;

    private String name;

    public Integer getGprsId() {
        return gprsId;
    }

    public void setGprsId(Integer gprsId) {
        this.gprsId = gprsId;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Long getUsegprs() {
        return usegprs;
    }

    public void setUsegprs(Long usegprs) {
        this.usegprs = usegprs;
    }

    public Integer getCuId() {
        return cuId;
    }

    public void setCuId(Integer cuId) {
        this.cuId = cuId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}