package com.oppo.statistics.data;

public class SpecialAppStartBean implements StatisticBean {
    private int mAppId = 0;
    private String mSsoid = "0";
    private String mTime = "0";

    public SpecialAppStartBean(String str, String str2, int i) {
        this.mSsoid = str;
        this.mTime = str2;
        this.mAppId = i;
    }

    public int getAppId() {
        return this.mAppId;
    }

    public int getDataType() {
        return 7;
    }

    public String getSsoid() {
        return this.mSsoid;
    }

    public String getTime() {
        return this.mTime;
    }

    public void setAppId(int i) {
        this.mAppId = i;
    }

    public void setSsoid(String str) {
        this.mSsoid = str;
    }

    public void setTime(String str) {
        this.mTime = str;
    }
}
