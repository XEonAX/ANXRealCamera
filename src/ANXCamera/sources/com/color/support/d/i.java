package com.color.support.d;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.provider.Settings;
import java.util.HashMap;

/* compiled from: ColorSoundLoadUtil */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f1491a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Integer, Integer> f1492b = new HashMap<>();
    private SoundPool c;

    private i() {
        b();
    }

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            if (f1491a == null) {
                f1491a = new i();
            }
            iVar = f1491a;
        }
        return iVar;
    }

    private boolean a(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "sound_effects_enabled", 0) != 0;
    }

    private void b() {
        SoundPool.Builder builder = new SoundPool.Builder();
        AudioAttributes build = new AudioAttributes.Builder().setLegacyStreamType(1).build();
        builder.setMaxStreams(1);
        builder.setAudioAttributes(build);
        this.c = builder.build();
    }

    public int a(Context context, int i) {
        if (this.f1492b.containsKey(Integer.valueOf(i))) {
            return this.f1492b.get(Integer.valueOf(i)).intValue();
        }
        int load = this.c.load(context, i, 0);
        this.f1492b.put(Integer.valueOf(i), Integer.valueOf(load));
        return load;
    }

    public void a(Context context, int i, float f, float f2, int i2, int i3, float f3) {
        if (a(context)) {
            this.c.play(i, f, f2, i2, i3, f3);
        }
    }
}
