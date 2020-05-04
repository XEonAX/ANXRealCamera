package com.oppo.statistics.data;

public class AppLogBean implements StatisticBean {
    private String mBody = "";
    private String mType = "";

    public AppLogBean(String str, String str2) {
        this.mType = str;
        this.mBody = str2;
    }

    public String getBody() {
        return this.mBody;
    }

    public int getDataType() {
        return 4;
    }

    public String getType() {
        return this.mType;
    }

    public void setAppLog(String str) {
        this.mBody = str;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public String toString() {
        return "type is :" + getDataType() + "\n" + "body is :" + getBody() + "\n";
    }
}
