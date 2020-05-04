package com.oppo.camera;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import com.color.compat.media.AudioManagerNative;
import com.oppo.camera.o.d;
import java.util.HashMap;
import java.util.Map;

/* compiled from: OppoPlaySound */
public class o implements SoundPool.OnLoadCompleteListener {

    /* renamed from: a  reason: collision with root package name */
    private SoundPool f2268a;

    /* renamed from: b  reason: collision with root package name */
    private Context f2269b;
    private HashMap<Integer, Integer> c;
    private HashMap<Integer, Boolean> d;
    private AudioManager e;
    private boolean f;
    private int g;

    public o(Context context) {
        this.c = null;
        this.d = new HashMap<>();
        this.f = false;
        this.g = -1;
        this.f = d.V();
        if (this.f) {
            this.f2268a = new SoundPool(10, AudioManagerNative.STREAM_SYSTEM_ENFORCED, 1);
        } else {
            this.f2268a = new SoundPool(10, 1, 1);
        }
        this.f2268a.setOnLoadCompleteListener(this);
        this.f2269b = context;
        this.e = (AudioManager) this.f2269b.getSystemService("audio");
    }

    public void a() {
        if (this.c == null) {
            this.c = new HashMap<>();
            this.c.put(0, Integer.valueOf(this.f2268a.load(this.f2269b, R.raw.camera_shutter, 0)));
            this.c.put(4, Integer.valueOf(this.f2268a.load(this.f2269b, R.raw.camera_time_snapshot, 0)));
            this.c.put(1, Integer.valueOf(this.f2268a.load(this.f2269b, R.raw.camera_video, 0)));
            this.c.put(2, Integer.valueOf(this.f2268a.load(this.f2269b, R.raw.camera_burst_shutter, 0)));
            this.c.put(3, Integer.valueOf(this.f2268a.load(this.f2269b, R.raw.camera_burst_shutter_end, 0)));
        }
    }

    public boolean a(int i) {
        return d.b(this.d) && this.d.containsKey(Integer.valueOf(i)) && this.d.get(Integer.valueOf(i)).booleanValue();
    }

    public int b() {
        AudioManager audioManager = this.e;
        if (audioManager != null) {
            return AudioManagerNative.getRingerModeInternal(audioManager);
        }
        return 2;
    }

    public void b(int i) {
        if (this.f) {
            HashMap<Integer, Integer> hashMap = this.c;
            if (hashMap != null) {
                this.f2268a.play(hashMap.get(Integer.valueOf(i)).intValue(), 1.0f, 1.0f, 0, 0, 1.0f);
            }
        } else if (this.c != null && b() == 2) {
            this.f2268a.play(this.c.get(Integer.valueOf(i)).intValue(), 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }

    public void c() {
        AudioManager audioManager = this.e;
        if (audioManager != null) {
            this.g = AudioManagerNative.getRingerModeInternal(audioManager);
            if (2 == this.g) {
                try {
                    AudioManagerNative.setRingerModeInternal(this.e, 0);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            d.b("OppoPlaySound", "setAudioSilent, mRestoreRingMode: " + this.g);
        }
    }

    public void d() {
        d.b("OppoPlaySound", "restoreAudioMode, mRestoreRingMode: " + this.g);
        AudioManager audioManager = this.e;
        if (audioManager != null) {
            int i = this.g;
            if (2 == i) {
                try {
                    AudioManagerNative.setRingerModeInternal(audioManager, i);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void e() {
        HashMap<Integer, Integer> hashMap = this.c;
        if (hashMap != null) {
            hashMap.clear();
            this.c = null;
        }
        SoundPool soundPool = this.f2268a;
        if (soundPool != null) {
            soundPool.setOnLoadCompleteListener((SoundPool.OnLoadCompleteListener) null);
            this.f2268a.release();
            this.f2268a = null;
        }
        this.d.clear();
        this.e = null;
    }

    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        if (i2 != 0) {
            d.e("OppoPlaySound", "onLoadComplete, load sound fail for soundId: " + i + ", status: " + i2);
        }
        for (Map.Entry next : this.c.entrySet()) {
            if (i == ((Integer) next.getValue()).intValue()) {
                this.d.put((Integer) next.getKey(), true);
            }
        }
    }
}
