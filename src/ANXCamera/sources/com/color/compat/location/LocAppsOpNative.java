package com.color.compat.location;

import com.color.inner.location.LocAppsOpWrapper;
import java.util.HashMap;

public class LocAppsOpNative {
    private LocAppsOpWrapper mLocAppsOpWrapper = new LocAppsOpWrapper();

    public HashMap<String, Integer> getAppsOp() {
        return this.mLocAppsOpWrapper.getAppsOp();
    }

    /* access modifiers changed from: package-private */
    public LocAppsOpWrapper getLocAppsOpWrapper() {
        return this.mLocAppsOpWrapper;
    }

    public int getOpLevel() {
        return this.mLocAppsOpWrapper.getOpLevel();
    }

    public void setAppOp(String str, int i) {
        this.mLocAppsOpWrapper.setAppOp(str, i);
    }

    public void setAppsOp(HashMap<String, Integer> hashMap) {
        this.mLocAppsOpWrapper.setAppsOp(hashMap);
    }

    public void setOpLevel(int i) {
        this.mLocAppsOpWrapper.setOpLevel(i);
    }
}
