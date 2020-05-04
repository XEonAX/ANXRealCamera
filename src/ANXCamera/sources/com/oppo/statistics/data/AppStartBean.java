package com.oppo.statistics.data;

public class AppStartBean implements StatisticBean {
    private String mTime = "0";

    public AppStartBean(String str) {
        this.mTime = str;
    }

    public int getDataType() {
        return 1;
    }

    public String getTime() {
        return this.mTime;
    }

    public void setTime(String str) {
        this.mTime = str;
    }

    public String toString() {
        return "loginTime is :" + getTime() + "\n";
    }
}
