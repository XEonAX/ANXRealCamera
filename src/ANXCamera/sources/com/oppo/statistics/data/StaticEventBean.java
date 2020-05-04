package com.oppo.statistics.data;

public class StaticEventBean implements StatisticBean {
    private String mBody = "";
    private int mUploadMode = 0;

    public StaticEventBean(int i, String str) {
        this.mUploadMode = i;
        this.mBody = str;
    }

    public String getBody() {
        return this.mBody;
    }

    public int getDataType() {
        return 11;
    }

    public int getUploadMode() {
        return this.mUploadMode;
    }

    public void setBody(String str) {
        this.mBody = str;
    }

    public void setUploadMode(int i) {
        this.mUploadMode = i;
    }

    public String toString() {
        return "uploadMode is :" + this.mUploadMode + "\n" + "body is :" + getBody() + "\n";
    }
}
