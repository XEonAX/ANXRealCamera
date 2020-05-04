package com.oppo.camera.ui.menu.setting;

import android.content.SharedPreferences;

/* compiled from: CameraMenuOptionListener */
public interface e {
    String a(String str, int i, int i2);

    boolean a(String str);

    boolean a(String str, boolean z);

    boolean b(String str, boolean z);

    boolean getMenuPanelAshed();

    boolean getMenuPanelEnable();

    int getOrientation();

    SharedPreferences getSharedPreferences();
}
