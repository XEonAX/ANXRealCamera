package com.color.compat.hardware.input;

import android.view.InputEvent;
import com.color.inner.hardware.input.InputManagerWrapper;

public class InputManagerNative {
    public static int INJECT_INPUT_EVENT_MODE_ASYNC;

    private InputManagerNative() {
    }

    public static boolean injectInputEvent(InputEvent inputEvent, int i) {
        return InputManagerWrapper.injectInputEvent(inputEvent, i);
    }
}
