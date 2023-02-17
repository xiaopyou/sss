package com.huarui.entity;

import java.io.Serializable;

public class guoxigonnbiao implements Serializable {
    public int getRF_ROLE_ID() {
        return RF_ROLE_ID;
    }

    public void setRF_ROLE_ID(int RF_ROLE_ID) {
        this.RF_ROLE_ID = RF_ROLE_ID;
    }

    public int getRF_RIGHT_CODE() {
        return RF_RIGHT_CODE;
    }

    public void setRF_RIGHT_CODE(int RF_RIGHT_CODE) {
        this.RF_RIGHT_CODE = RF_RIGHT_CODE;
    }

    public int getRIGHT_CODE() {
        return RIGHT_CODE;
    }

    public void setRIGHT_CODE(int RIGHT_CODE) {
        this.RIGHT_CODE = RIGHT_CODE;
    }

    public int getRIGHT_PARENT_CODE() {
        return RIGHT_PARENT_CODE;
    }

    public void setRIGHT_PARENT_CODE(int RIGHT_PARENT_CODE) {
        this.RIGHT_PARENT_CODE = RIGHT_PARENT_CODE;
    }

    public int getRIGHT_TEXT() {
        return RIGHT_TEXT;
    }

    public void setRIGHT_TEXT(int RIGHT_TEXT) {
        this.RIGHT_TEXT = RIGHT_TEXT;
    }

    public guoxigonnbiao() {
    }

    private int RF_ROLE_ID;
   private int RF_RIGHT_CODE;
    private int RIGHT_CODE;
    private int RIGHT_PARENT_CODE;

    public guoxigonnbiao(int RF_ROLE_ID, int RF_RIGHT_CODE, int RIGHT_CODE, int RIGHT_PARENT_CODE, int RIGHT_TEXT) {
        this.RF_ROLE_ID = RF_ROLE_ID;
        this.RF_RIGHT_CODE = RF_RIGHT_CODE;
        this.RIGHT_CODE = RIGHT_CODE;
        this.RIGHT_PARENT_CODE = RIGHT_PARENT_CODE;
        this.RIGHT_TEXT = RIGHT_TEXT;
    }

    private int RIGHT_TEXT;

    @Override
    public String toString() {
        return "guoxigonnbiao{" +
                "RF_ROLE_ID=" + RF_ROLE_ID +
                ", RF_RIGHT_CODE=" + RF_RIGHT_CODE +
                ", RIGHT_CODE=" + RIGHT_CODE +
                ", RIGHT_PARENT_CODE=" + RIGHT_PARENT_CODE +
                ", RIGHT_TEXT=" + RIGHT_TEXT +
                '}';
    }
}
