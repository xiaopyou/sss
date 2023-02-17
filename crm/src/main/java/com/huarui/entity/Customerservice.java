package com.huarui.entity;

import java.io.Serializable;

public class Customerservice implements Serializable {
    private static final long serialVersionUID = 126009984281783484L;

    private String customerid;

    private Integer serviceid;


    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid;
    }

    public Integer getServiceid() {
        return serviceid;
    }

    public void setServiceid(Integer serviceid) {
        this.serviceid = serviceid;
    }

}

