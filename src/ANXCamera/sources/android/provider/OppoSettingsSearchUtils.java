package android.provider;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

public class OppoSettingsSearchUtils {
    public static final String ARGS_COLOR_CATEGORY = ":settings:fragment_args_color_category";
    public static final String ARGS_COLOR_PREFERENCE = ":settings:fragment_args_color_preferece";
    public static final String ARGS_HIGHT_LIGHT_TIME = ":settings:fragment_args_light_time";
    public static final String ARGS_KEY = ":settings:fragment_args_key";
    public static final String ARGS_WAIT_TIME = ":settings:fragment_args_wait_time";
    private static final int DELAY_TIME = 150;
    public static final int HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT = -1776412;
    public static final int HIGH_LIGHT_TIME_DEFAULT = 1000;
    private static final int LAST_TIME = 500;
    public static final String RAW_RENAME_EXTRA_KEY = "_settings_extra_key";
    private static final int START_TIME = 100;
    private static final int STOP_TIME = 250;
    public static final int WAIT_TIME_DEFAULT = 300;

    private static void calculateHightlight(PreferenceScreen preferenceScreen, ListView listView, String str, int i) {
        Preference findPreference = preferenceScreen.findPreference(str);
        if (findPreference != null) {
            calculateHightlight(listView, str, i, findPreference instanceof PreferenceCategory);
        }
    }

    private static void calculateHightlight(final ListView listView, final String str, final int i, final boolean z) {
        if (listView != null) {
            listView.post(new Runnable() {
                public void run() {
                    int access$100 = OppoSettingsSearchUtils.canUseListViewForHighLighting(listView, str);
                    if (access$100 > 1) {
                        listView.setSelection(access$100);
                    }
                    if (access$100 >= 0) {
                        OppoSettingsSearchUtils.showHightlight(listView, access$100, i, z);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public static int canUseListViewForHighLighting(ListView listView, String str) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter != null) {
            int count = adapter.getCount();
            for (int i = 0; i < count; i++) {
                Object item = adapter.getItem(i);
                if (item instanceof Preference) {
                    String key = ((Preference) item).getKey();
                    if (key != null && key.equals(str)) {
                        return i;
                    }
                }
            }
        }
        return -1;
    }

    /* access modifiers changed from: private */
    public static AnimationDrawable getAnimationDrawable(int i, Drawable drawable) {
        double d;
        int i2 = i;
        Drawable drawable2 = drawable;
        AnimationDrawable animationDrawable = new AnimationDrawable();
        int i3 = 0;
        while (true) {
            d = 0.0d;
            if (i3 >= 6) {
                break;
            }
            ColorDrawable colorDrawable = new ColorDrawable(i);
            colorDrawable.setAlpha((int) (((((double) i3) + 0.0d) * 255.0d) / ((double) 6)));
            if (drawable2 != null) {
                animationDrawable.addFrame(new LayerDrawable(new Drawable[]{drawable2, colorDrawable}), 16);
            } else {
                animationDrawable.addFrame(colorDrawable, 16);
            }
            i3++;
        }
        animationDrawable.addFrame(new ColorDrawable(i), 250);
        int i4 = 0;
        while (i4 < 31) {
            double d2 = ((((double) (31 - i4)) - d) * 255.0d) / ((double) 31);
            ColorDrawable colorDrawable2 = new ColorDrawable(i);
            colorDrawable2.setAlpha((int) d2);
            if (drawable2 != null) {
                animationDrawable.addFrame(new LayerDrawable(new Drawable[]{drawable2, colorDrawable2}), 16);
            } else {
                animationDrawable.addFrame(colorDrawable2, 16);
            }
            i4++;
            d = 0.0d;
        }
        if (drawable2 != null) {
            animationDrawable.addFrame(drawable2, 150);
        }
        return animationDrawable;
    }

    public static void highlightListView(final ListView listView, final int i, final boolean z, Intent intent) {
        if (listView != null && intent != null && !TextUtils.isEmpty(intent.getStringExtra(ARGS_KEY)) && listView != null) {
            listView.post(new Runnable() {
                public void run() {
                    int i = i;
                    if (i >= 0) {
                        listView.setSelection(i);
                        OppoSettingsSearchUtils.showHightlight(listView, i, OppoSettingsSearchUtils.HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT, z);
                    }
                }
            });
        }
    }

    public static void highlightPreference(PreferenceScreen preferenceScreen, ListView listView, Bundle bundle) {
        if (preferenceScreen != null && listView != null && bundle != null) {
            String string = bundle.getString(ARGS_KEY);
            if (!TextUtils.isEmpty(string)) {
                calculateHightlight(preferenceScreen, listView, string, (int) HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT);
            }
        }
    }

    public static void highlightPreference(ListView listView, Bundle bundle) {
        if (listView != null && bundle != null) {
            String string = bundle.getString(ARGS_KEY);
            if (!TextUtils.isEmpty(string)) {
                calculateHightlight(listView, string, (int) HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT, false);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void showHightlight(final ListView listView, final int i, final int i2, boolean z) {
        if (!z) {
            listView.postDelayed(new Runnable() {
                public void run() {
                    int firstVisiblePosition = i - listView.getFirstVisiblePosition();
                    if (firstVisiblePosition >= 0 && firstVisiblePosition < listView.getChildCount()) {
                        final View childAt = listView.getChildAt(firstVisiblePosition);
                        if (childAt != null) {
                            final Drawable background = childAt.getBackground();
                            AnimationDrawable access$200 = OppoSettingsSearchUtils.getAnimationDrawable(i2, background);
                            childAt.setBackgroundDrawable(access$200);
                            access$200.start();
                            childAt.postDelayed(new Runnable() {
                                public void run() {
                                    childAt.setBackground(background);
                                }
                            }, 1000);
                        }
                    }
                }
            }, 300);
        }
    }
}
