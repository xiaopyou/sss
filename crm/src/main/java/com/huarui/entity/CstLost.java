package com.huarui.entity;

import java.util.Date;
import java.io.Serializable;

public class CstLost implements Serializable {
    private static final long serialVersionUID = 444895597492012416L;

    private Integer lstId;

    private Date lstLastOrderDate;

    private Date lstLostDate;

    private String lstDelay;

    private String lstReason;

    private Integer lstStatus;

    private String lstCustNo;

    private Integer lstCustManagerId;


    public Integer getLstId() {
        return lstId;
    }

    public void setLstId(Integer lstId) {
        this.lstId = lstId;
    }

    public Date getLstLastOrderDate() {
        return lstLastOrderDate;
    }

    public void setLstLastOrderDate(Date lstLastOrderDate) {
        this.lstLastOrderDate = lstLastOrderDate;
    }

    public Date getLstLostDate() {
        return lstLostDate;
    }

    public void setLstLostDate(Date lstLostDate) {
        this.lstLostDate = lstLostDate;
    }

    public String getLstDelay() {
        return lstDelay;
    }

    public void setLstDelay(String lstDelay) {
        this.lstDelay = lstDelay;
    }

    public String getLstReason() {
        return lstReason;
    }

    public void setLstReason(String lstReason) {
        this.lstReason = lstReason;
    }

    public Integer getLstStatus() {
        return lstStatus;
    }

    public void setLstStatus(Integer lstStatus) {
        this.lstStatus = lstStatus;
    }

    public String getLstCustNo() {
        return lstCustNo;
    }

    public void setLstCustNo(String lstCustNo) {
        this.lstCustNo = lstCustNo;
    }

    public Integer getLstCustManagerId() {
        return lstCustManagerId;
    }

    public void setLstCustManagerId(Integer lstCustManagerId) {
        this.lstCustManagerId = lstCustManagerId;
    }

}

