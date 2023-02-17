package com.huarui.entity;

import java.util.Date;
import java.io.Serializable;

public class CstService implements Serializable {
    private static final long serialVersionUID = 602299932372565977L;

    private Integer svrId;

    private String svrType;

    private String svrTitle;

    private String svrCustNo;

    private String svrStatus;

    private String svrRequest;

    private Integer svrCreateId;

    private Date svrCreateDate;

    private Date svrDueDate;

    private String svrDeal;

    private Integer svrDealId;

    private Date svrDealDate;

    private String svrResult;

    private Integer svrSatisfy;


    public Integer getSvrId() {
        return svrId;
    }

    public void setSvrId(Integer svrId) {
        this.svrId = svrId;
    }

    public String getSvrType() {
        return svrType;
    }

    public void setSvrType(String svrType) {
        this.svrType = svrType;
    }

    public String getSvrTitle() {
        return svrTitle;
    }

    public void setSvrTitle(String svrTitle) {
        this.svrTitle = svrTitle;
    }

    public String getSvrCustNo() {
        return svrCustNo;
    }

    public void setSvrCustNo(String svrCustNo) {
        this.svrCustNo = svrCustNo;
    }

    public String getSvrStatus() {
        return svrStatus;
    }

    public void setSvrStatus(String svrStatus) {
        this.svrStatus = svrStatus;
    }

    public String getSvrRequest() {
        return svrRequest;
    }

    public void setSvrRequest(String svrRequest) {
        this.svrRequest = svrRequest;
    }

    public Integer getSvrCreateId() {
        return svrCreateId;
    }

    public void setSvrCreateId(Integer svrCreateId) {
        this.svrCreateId = svrCreateId;
    }

    public Date getSvrCreateDate() {
        return svrCreateDate;
    }

    public void setSvrCreateDate(Date svrCreateDate) {
        this.svrCreateDate = svrCreateDate;
    }

    public Date getSvrDueDate() {
        return svrDueDate;
    }

    public void setSvrDueDate(Date svrDueDate) {
        this.svrDueDate = svrDueDate;
    }

    public String getSvrDeal() {
        return svrDeal;
    }

    public void setSvrDeal(String svrDeal) {
        this.svrDeal = svrDeal;
    }

    public Integer getSvrDealId() {
        return svrDealId;
    }

    public void setSvrDealId(Integer svrDealId) {
        this.svrDealId = svrDealId;
    }

    public Date getSvrDealDate() {
        return svrDealDate;
    }

    public void setSvrDealDate(Date svrDealDate) {
        this.svrDealDate = svrDealDate;
    }

    public String getSvrResult() {
        return svrResult;
    }

    public void setSvrResult(String svrResult) {
        this.svrResult = svrResult;
    }

    public Integer getSvrSatisfy() {
        return svrSatisfy;
    }

    public void setSvrSatisfy(Integer svrSatisfy) {
        this.svrSatisfy = svrSatisfy;
    }

}

