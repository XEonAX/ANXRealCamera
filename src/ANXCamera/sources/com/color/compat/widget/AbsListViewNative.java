package com.color.compat.widget;

import android.util.Log;
import android.widget.AbsListView;
import com.color.inner.widget.AbsListViewWrapper;
import com.color.util.VersionUtils;

public class AbsListViewNative {
    private static final String TAG = "AbsListViewNative";

    private AbsListViewNative() {
    }

    public static void colorStartSpringback(AbsListView absListView) {
        try {
            if (VersionUtils.isQ()) {
                AbsListViewWrapper.colorStartSpringback(absListView);
                return;
            }
            throw new UnsupportedOperationException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    public static int getTouchMode(AbsListView absListView) {
        try {
            if (VersionUtils.isQ()) {
                return AbsListViewWrapper.getTouchMode(absListView);
            }
            if (VersionUtils.isN()) {
                return ((Integer) absListView.getClass().getDeclaredMethod("getTouchMode", new Class[0]).invoke(absListView, new Object[0])).intValue();
            }
            throw new UnsupportedOperationException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    public static void setOppoFlingMode(AbsListView absListView, int i) {
        try {
            if (VersionUtils.isQ()) {
                AbsListViewWrapper.setOppoFlingMode(absListView, i);
                return;
            }
            throw new UnsupportedOperationException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}
