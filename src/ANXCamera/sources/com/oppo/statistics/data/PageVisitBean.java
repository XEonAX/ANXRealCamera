package com.oppo.statistics.data;

public class PageVisitBean implements StatisticBean {
    private String mActivities;
    private long mDuration;
    private String mTime;

    public String getActivities() {
        return this.mActivities;
    }

    public int getDataType() {
        return 3;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public String getTime() {
        return this.mTime;
    }

    public void setActivities(String str) {
        this.mActivities = str;
    }

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public void setTime(String str) {
        this.mTime = str;
    }

    public String toString() {
        return "time is :" + getTime() + "\n" + "duration is :" + getDuration() + "\n" + "activities is :" + getActivities() + "\n";
    }
}
