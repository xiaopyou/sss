package com.huarui.entity;

import java.io.Serializable;

public class SysRoleRight implements Serializable {
    private static final long serialVersionUID = 909744229446076484L;

    private Integer rfId;

    private Integer rfRoleId;

    private Integer rfRightCode;


    public Integer getRfId() {
        return rfId;
    }

    public void setRfId(Integer rfId) {
        this.rfId = rfId;
    }

    public Integer getRfRoleId() {
        return rfRoleId;
    }

    public void setRfRoleId(Integer rfRoleId) {
        this.rfRoleId = rfRoleId;
    }

    public Integer getRfRightCode() {
        return rfRightCode;
    }

    public void setRfRightCode(Integer rfRightCode) {
        this.rfRightCode = rfRightCode;
    }

}

