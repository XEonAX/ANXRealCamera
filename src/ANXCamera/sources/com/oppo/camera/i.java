package com.oppo.camera;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ComboPreferences */
public class i implements SharedPreferences, SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private static final WeakHashMap<Context, i> f2206a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static List<String> f2207b = null;
    /* access modifiers changed from: private */
    public SharedPreferences c;
    /* access modifiers changed from: private */
    public SharedPreferences d;
    private CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> e;
    private Context f;
    /* access modifiers changed from: private */
    public HashMap<String, Boolean> g = null;

    /* compiled from: ComboPreferences */
    public class a implements SharedPreferences.Editor {

        /* renamed from: b  reason: collision with root package name */
        private SharedPreferences.Editor f2209b;
        private SharedPreferences.Editor c;

        a() {
            this.f2209b = i.this.c.edit();
            this.c = i.this.d.edit();
        }

        private void a(String str, boolean z) {
            if (z) {
                i.this.g.put(str, true);
            } else {
                i.this.g.remove(str);
            }
        }

        public SharedPreferences.Editor a(String str, float f, boolean z) {
            a(str, z);
            if (i.a(str)) {
                this.f2209b.putFloat(str, f);
            } else {
                this.c.putFloat(str, f);
            }
            return this;
        }

        public SharedPreferences.Editor a(String str, int i, boolean z) {
            a(str, z);
            if (i.a(str)) {
                this.f2209b.putInt(str, i);
            } else {
                this.c.putInt(str, i);
            }
            return this;
        }

        public SharedPreferences.Editor a(String str, long j, boolean z) {
            a(str, z);
            if (i.a(str)) {
                this.f2209b.putLong(str, j);
            } else {
                this.c.putLong(str, j);
            }
            return this;
        }

        public SharedPreferences.Editor a(String str, String str2, boolean z) {
            a(str, z);
            if (i.a(str)) {
                this.f2209b.putString(str, str2);
            } else {
                this.c.putString(str, str2);
            }
            return this;
        }

        public SharedPreferences.Editor a(String str, boolean z, boolean z2) {
            a(str, z2);
            if (i.a(str)) {
                this.f2209b.putBoolean(str, z);
            } else {
                this.c.putBoolean(str, z);
            }
            return this;
        }

        public void apply() {
            try {
                this.f2209b.apply();
                this.c.apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public SharedPreferences.Editor clear() {
            this.f2209b.clear();
            this.c.clear();
            return this;
        }

        public boolean commit() {
            return this.f2209b.commit() && this.c.commit();
        }

        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            return a(str, z, false);
        }

        public SharedPreferences.Editor putFloat(String str, float f) {
            return a(str, f, false);
        }

        public SharedPreferences.Editor putInt(String str, int i) {
            return a(str, i, false);
        }

        public SharedPreferences.Editor putLong(String str, long j) {
            return a(str, j, false);
        }

        public SharedPreferences.Editor putString(String str, String str2) {
            return a(str, str2, false);
        }

        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            throw new UnsupportedOperationException();
        }

        public SharedPreferences.Editor remove(String str) {
            this.f2209b.remove(str);
            this.c.remove(str);
            return this;
        }
    }

    public i(Context context) {
        this.f = context;
        this.c = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        this.c.registerOnSharedPreferenceChangeListener(this);
        synchronized (f2206a) {
            f2206a.put(context, this);
        }
        this.e = new CopyOnWriteArrayList<>();
        f2207b = new ArrayList();
        this.g = new HashMap<>();
    }

    public static boolean a(String str) {
        if (!"pref_camera_id_key".equals(str) && !"pref_camera_recordlocation_key".equals(str) && !"pref_camera_sound_key".equals(str) && !"pref_camera_storage_key".equals(str) && !"pref_camera_fingerprint_shutter_key".equals(str) && !"pref_camera_assistant_line_key".equals(str) && !"pref_net_checkbox_key".equals(str) && !"pref_location_checkbox_key".equals(str) && !"pref_net_location_checkbox_key".equals(str) && !"pref_privacy_policy_key".equals(str) && !"pref_privacy_policy_agree".equals(str) && !"pref_volume_key_function_key".equals(str) && !"pref_mirror_key".equals(str) && !"pref_camera_gesture_shutter_key".equals(str) && !"pref_camera_slogan_key".equals(str) && !"pref_slogan_owner_key".equals(str) && !"pref_slogan_device_key".equals(str) && !"pref_slogan_time_key".equals(str) && !"pref_slogan_location_key".equals(str) && !"pref_slogan_version".equals(str) && !"pref_slogan_owner_name".equals(str) && !"pref_slogan_market_name".equals(str) && !"pref_slogan_time".equals(str) && !"pref_slogan_location".equals(str) && !"key_bubble_sticker".equals(str) && !"key_bubble_short_video".equals(str) && !"pref_ai_scene_key".equals(str) && !"pref_camera_photo_ratio_key".equals(str) && !"pref_raw_key".equals(str) && !"last_camera_gesture_shutter_key".equals(str) && !"last_camera_tap_shutter_key".equals(str) && !"pref_camera_gradienter_key".equals(str) && !"pref_camera_timer_shutter_key".equals(str) && !"pref_camera_exit_time_stamp_key".equals(str) && !"key_portrait_new_style_index".equals(str) && !"key_high_picture_size".equals(str) && !"pref_current_sticker_uuid".equals(str) && !"pref_slow_video_frame_key".equals(str) && !"pref_video_codec_key".equals(str) && !"pref_subsetting_key".equals(str) && !"pref_camera_photo_ratio_key".equals(str)) {
            List<String> list = f2207b;
            if (list == null || !list.contains(str)) {
                return false;
            }
        }
        return true;
    }

    private void b(Context context) {
        synchronized (f2206a) {
            f2206a.remove(context);
        }
    }

    /* renamed from: a */
    public a edit() {
        return new a();
    }

    public void a(Context context) {
        b(context);
        this.f = null;
        this.c = null;
        this.d = null;
        List<String> list = f2207b;
        if (list != null) {
            list.clear();
            f2207b = null;
        }
        CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> copyOnWriteArrayList = this.e;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            this.e = null;
        }
        HashMap<String, Boolean> hashMap = this.g;
        if (hashMap != null) {
            hashMap.clear();
            this.g = null;
        }
    }

    public void a(Context context, int i) {
        String str = context.getPackageName() + "_preferences_" + i;
        SharedPreferences sharedPreferences = this.d;
        if (sharedPreferences != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this);
        }
        this.d = context.getSharedPreferences(str, 0);
        this.d.registerOnSharedPreferenceChangeListener(this);
    }

    public SharedPreferences b(Context context, int i) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences_" + i, 0);
    }

    public boolean contains(String str) {
        if (this.d.contains(str)) {
            return true;
        }
        return this.c.contains(str);
    }

    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException();
    }

    public boolean getBoolean(String str, boolean z) {
        return (a(str) || !this.d.contains(str)) ? this.c.getBoolean(str, z) : this.d.getBoolean(str, z);
    }

    public float getFloat(String str, float f2) {
        return (a(str) || !this.d.contains(str)) ? this.c.getFloat(str, f2) : this.d.getFloat(str, f2);
    }

    public int getInt(String str, int i) {
        return (a(str) || !this.d.contains(str)) ? this.c.getInt(str, i) : this.d.getInt(str, i);
    }

    public long getLong(String str, long j) {
        return (a(str) || !this.d.contains(str)) ? this.c.getLong(str, j) : this.d.getLong(str, j);
    }

    public String getString(String str, String str2) {
        return (a(str) || !this.d.contains(str)) ? this.c.getString(str, str2) : this.d.getString(str, str2);
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        throw new UnsupportedOperationException();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        HashMap<String, Boolean> hashMap = this.g;
        if (hashMap == null || !hashMap.containsKey(str) || !this.g.get(str).booleanValue()) {
            CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> copyOnWriteArrayList = this.e;
            if (copyOnWriteArrayList != null) {
                Iterator<SharedPreferences.OnSharedPreferenceChangeListener> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    it.next().onSharedPreferenceChanged(this, str);
                }
                return;
            }
            return;
        }
        d.c("ComboPreferences", "onSharedPreferenceChanged, mSilentKeyMap.get(" + str + "): " + this.g.get(str));
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (onSharedPreferenceChangeListener != null) {
            CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> copyOnWriteArrayList = this.e;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.contains(onSharedPreferenceChangeListener)) {
                this.e.add(onSharedPreferenceChangeListener);
            }
        }
    }

    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.e.remove(onSharedPreferenceChangeListener);
    }
}
