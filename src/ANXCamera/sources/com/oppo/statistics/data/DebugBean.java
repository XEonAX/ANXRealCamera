package com.oppo.statistics.data;

public class DebugBean implements StatisticBean {
    private boolean mFlag = false;

    public DebugBean(boolean z) {
        this.mFlag = z;
    }

    public int getDataType() {
        return 12;
    }

    public boolean getFlag() {
        return this.mFlag;
    }

    public void setFlag(boolean z) {
        this.mFlag = z;
    }

    public String toString() {
        return "type is :" + getDataType() + "\n" + "flag is :" + getFlag() + "\n";
    }
}
