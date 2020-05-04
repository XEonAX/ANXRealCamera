package com.oppo.camera;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.Settings;
import com.oppo.camera.o.d;
import com.oppo.os.LinearmotorVibrator;
import com.oppo.os.WaveformEffect;

/* compiled from: VibrateManager */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2998a = null;

    /* renamed from: b  reason: collision with root package name */
    private LinearmotorVibrator f2999b = null;
    private boolean c = false;
    private boolean d = false;
    private HandlerThread e = null;
    /* access modifiers changed from: private */
    public Handler f = null;
    private WaveformEffect.Builder g;

    @SuppressLint({"WrongConstant"})
    public w(Activity activity) {
        this.f2998a = activity;
        this.f2999b = (LinearmotorVibrator) this.f2998a.getSystemService("linearmotor");
        this.c = false;
        this.d = d.b("oppo.feature.vibrator.waveform.support");
        this.g = new WaveformEffect.Builder();
        this.e = new HandlerThread("CameraVibrateManager");
        this.e.start();
        this.f = new Handler(this.e.getLooper()) {
            public void handleMessage(Message message) {
                d.a("VibrateManager", "handleMessage, message: " + message.what);
                if (message.what == 100) {
                    w.this.f.removeCallbacksAndMessages((Object) null);
                    w.this.b(message.arg1);
                }
            }
        };
    }

    private void a(int i) {
        if (this.d && this.c) {
            d.a("VibrateManager", "vibrateWithEffect, effect: " + i);
            Message obtain = Message.obtain();
            obtain.what = 100;
            obtain.arg1 = i;
            this.f.sendMessage(obtain);
        }
    }

    /* access modifiers changed from: private */
    public void b(int i) {
        try {
            if (this.f2999b != null) {
                this.g.setEffectType(i);
                this.f2999b.vibrate(this.g.build());
            }
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
        }
    }

    public void a() {
        boolean z = true;
        if (Settings.System.getInt(this.f2998a.getContentResolver(), "haptic_feedback_enabled", 1) == 0) {
            z = false;
        }
        this.c = z;
        d.a("VibrateManager", "onResume, mbVibrateFeedbackEnabled: " + this.c);
    }

    public void b() {
        HandlerThread handlerThread = this.e;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        Handler handler = this.f;
        if (handler != null) {
            handler.removeCallbacksAndMessages((Object) null);
            this.f = null;
        }
    }

    public void c() {
        a(68);
    }

    public void d() {
        a(0);
    }
}
