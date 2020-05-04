package com.color.compat.hardware.display;

import android.hardware.display.DisplayManager;
import com.color.inner.hardware.display.DisplayManagerWrapper;
import com.color.util.VersionUtils;

public class DisplayManagerNative {
    private DisplayManagerNative() {
    }

    public static void setTemporaryAutoBrightnessAdjustment(DisplayManager displayManager, float f) {
        if (VersionUtils.isQ()) {
            DisplayManagerWrapper.setTemporaryAutoBrightnessAdjustment(displayManager, f);
        } else if (VersionUtils.isP()) {
            displayManager.setTemporaryAutoBrightnessAdjustment(f);
        }
    }
}
