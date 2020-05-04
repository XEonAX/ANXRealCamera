package com.oppo.camera.ui.control;

import android.content.ContentResolver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.oppo.camera.o.d;

/* compiled from: ThumbnailHolder */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static e f2628a;

    /* compiled from: ThumbnailHolder */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final HandlerThread f2629a = new HandlerThread("ClearThumbnail");

        /* renamed from: b  reason: collision with root package name */
        public static final Handler f2630b = new Handler(f2629a.getLooper(), new Handler.Callback() {
            public boolean handleMessage(Message message) {
                if (message.what == 1) {
                    g.a();
                }
                return true;
            }
        });

        static {
            f2629a.start();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001f, code lost:
        return null;
     */
    public static synchronized e a(ContentResolver contentResolver) {
        synchronized (g.class) {
            if (f2628a != null) {
                a.f2630b.removeMessages(1);
                e eVar = f2628a;
                f2628a = null;
                if (d.a(eVar.b(), contentResolver)) {
                    return eVar;
                }
            }
        }
    }

    public static synchronized void a() {
        synchronized (g.class) {
            a.f2630b.removeMessages(1);
            f2628a = null;
        }
    }

    public static synchronized void a(e eVar) {
        synchronized (g.class) {
            f2628a = eVar;
            a.f2630b.removeMessages(1);
            a.f2630b.sendEmptyMessageDelayed(1, 3000);
        }
    }
}
