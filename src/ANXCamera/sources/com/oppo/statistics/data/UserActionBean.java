package com.oppo.statistics.data;

public class UserActionBean implements StatisticBean {
    private int mAmount = 0;
    private int mCode = 0;
    private String mDate = "0";

    public UserActionBean(int i, String str, int i2) {
        this.mCode = i;
        this.mDate = str;
        this.mAmount = i2;
    }

    public int getActionAmount() {
        return this.mAmount;
    }

    public int getActionCode() {
        return this.mCode;
    }

    public String getActionDate() {
        return this.mDate;
    }

    public int getDataType() {
        return 2;
    }

    public void setActionAmount(int i) {
        this.mAmount = i;
    }

    public void setActionCode(int i) {
        this.mCode = i;
    }

    public void setActionDate(String str) {
        this.mDate = str;
    }

    public String toString() {
        return "action code is: " + getActionCode() + "\n" + "action amount is: " + getActionAmount() + "\n" + "action date is: " + getActionDate() + "\n";
    }
}
