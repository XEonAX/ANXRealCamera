package com.oppo.statistics.data;

public class ExceptionBean implements StatisticBean {
    private int mCount;
    private long mEventTime;
    private String mException;

    public int getCount() {
        return this.mCount;
    }

    public int getDataType() {
        return 5;
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public String getException() {
        return this.mException;
    }

    public void setCount(int i) {
        this.mCount = i;
    }

    public void setEventTime(long j) {
        this.mEventTime = j;
    }

    public void setException(String str) {
        this.mException = str;
    }

    public String toString() {
        return "exception is :" + getException() + "\n" + "count is :" + getCount() + "\n" + "time is :" + getEventTime() + "\n";
    }
}
