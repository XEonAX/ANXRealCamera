package com.oppo.camera.sticker.b;

import android.opengl.EGLContext;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import com.oppo.camera.sticker.b;
import com.sensetime.stmobile.STMobileColorConvertNative;
import java.util.ArrayList;
import java.util.List;

/* compiled from: StickerProcessThread */
public class c {
    private static c e;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public a f2384a = null;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f2385b = null;
    private Handler c = null;
    private final String d = "StickerProcessThread";
    /* access modifiers changed from: private */
    public ArrayList<b> f = null;
    /* access modifiers changed from: private */
    public STMobileColorConvertNative g = null;
    private boolean h = false;

    /* compiled from: StickerProcessThread */
    public interface a {
        void a();
    }

    public static c a() {
        if (e == null) {
            e = new c();
        }
        return e;
    }

    public void a(final a aVar, boolean z) {
        if (z) {
            final ConditionVariable conditionVariable = new ConditionVariable();
            conditionVariable.close();
            this.c.post(new Runnable() {
                public void run() {
                    c.this.f2384a.b();
                    aVar.a();
                    c.this.f2384a.c();
                    conditionVariable.open();
                }
            });
            conditionVariable.block();
            return;
        }
        this.c.post(new Runnable() {
            public void run() {
                aVar.a();
            }
        });
    }

    public ArrayList<b> b() {
        return this.f;
    }

    public STMobileColorConvertNative c() {
        return this.g;
    }

    public void d() {
        if (this.c != null && !this.h) {
            final ConditionVariable conditionVariable = new ConditionVariable();
            conditionVariable.close();
            this.c.post(new Runnable() {
                public void run() {
                    if (c.this.f2384a == null) {
                        a unused = c.this.f2384a = new a((EGLContext) null, 0);
                    }
                    c.this.f2384a.b();
                    com.oppo.camera.sticker.c.a((List<b>) c.this.f, c.this.g);
                    c.this.f2384a.c();
                    conditionVariable.open();
                }
            });
            conditionVariable.open();
            this.h = true;
        }
    }
}
