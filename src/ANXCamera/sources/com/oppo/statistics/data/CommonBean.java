package com.oppo.statistics.data;

public class CommonBean implements StatisticBean {
    private String eventID = "";
    private String logMap = "";
    private String logTag = "";
    private boolean uploadNow = false;

    public CommonBean(String str, String str2, String str3) {
        this.logTag = str;
        this.eventID = str2;
        this.logMap = str3;
    }

    public CommonBean(String str, String str2, String str3, boolean z) {
        this.logTag = str;
        this.logMap = str3;
        this.eventID = str2;
        this.uploadNow = z;
    }

    public int getDataType() {
        return 9;
    }

    public String getEventID() {
        return this.eventID;
    }

    public String getLogMap() {
        return this.logMap;
    }

    public String getLogTag() {
        return this.logTag;
    }

    public boolean getUploadNow() {
        return this.uploadNow;
    }

    public void setEventID(String str) {
        this.eventID = str;
    }

    public void setLogMap(String str) {
        this.logMap = str;
    }

    public void setLogTag(String str) {
        this.logTag = str;
    }

    public void setUploadNow(boolean z) {
        this.uploadNow = z;
    }

    public String toString() {
        return " type is :" + getDataType() + "," + " uploadNow is :" + getUploadNow() + "," + " tag is :" + getLogTag() + "," + " eventID is :" + getEventID() + "," + " map is :" + getLogMap();
    }
}
