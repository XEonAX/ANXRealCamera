package com.oppo.camera;

import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import com.crunchfish.touchless_a3d.TouchlessA3D;
import com.crunchfish.touchless_a3d.exception.LicenseNotValidException;
import com.crunchfish.touchless_a3d.exception.LicenseServerUnavailableException;
import com.crunchfish.touchless_a3d.gesture.Event;
import com.crunchfish.touchless_a3d.gesture.Gesture;
import com.crunchfish.touchless_a3d.gesture.Pose;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: GestureEngineManager */
public class k implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f2225a = Executors.newSingleThreadExecutor();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Gesture.Listener f2226b = new Gesture.Listener() {
        public void onEvent(Event event) {
            d.a("GestureEngineManager", "GestureListener, onEvent, text: " + event.getText());
            if (k.this.n != null && k.this.a(event, "open_hand")) {
                Pose pose = (Pose) event.getIdentifiable("the_hand");
                if (pose != null) {
                    k.this.n.a(pose.getBoundingArea());
                }
            }
        }
    };
    /* access modifiers changed from: private */
    public TouchlessA3D c;
    /* access modifiers changed from: private */
    public Gesture d;
    private Object e = new Object();
    private boolean f = false;
    private boolean g = false;
    /* access modifiers changed from: private */
    public Context h;
    private AsyncTask i = null;
    private AsyncTask j = null;
    private HashMap<Integer, TouchlessA3D.Rotate> k = new HashMap<>();
    private HashMap<Integer, TouchlessA3D.Rotate> l = new HashMap<>();
    private HashMap<Integer, HashMap<Integer, TouchlessA3D.Rotate>> m = new HashMap<>();
    /* access modifiers changed from: private */
    public c n;

    /* compiled from: GestureEngineManager */
    private class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private final int f2229b;
        private final int c;
        private boolean d = true;

        public a(Context context, int i, int i2) {
            Context unused = k.this.h = context;
            this.f2229b = i;
            this.c = i2;
        }

        private Gesture a(String str) throws IOException {
            InputStream inputStream = null;
            try {
                inputStream = k.this.h.getAssets().open(str);
                byte[] bArr = new byte[inputStream.available()];
                inputStream.read(bArr);
                return new Gesture(new String(bArr));
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            k.this.e();
            if (k.this.h == null) {
                return null;
            }
            try {
                TouchlessA3D unused = k.this.c = new TouchlessA3D(this.f2229b, this.c, k.this.h);
                k.this.c.setParameter(1002, 1);
                d.a("GestureEngineManager", "gesture detect engine has be inited mImageWidth:" + this.f2229b + " mImageHeight:" + this.c);
                try {
                    Gesture unused2 = k.this.d = a("hand_wink.json");
                    k.this.d.registerListener(k.this.f2226b);
                    k.this.c.registerGesture(k.this.d);
                    return null;
                } catch (IOException e) {
                    d.e("GestureEngineManager", "GestureEngineLoadTask IOException: " + e);
                    return null;
                }
            } catch (LicenseNotValidException e2) {
                d.e("GestureEngineManager", "GestureEngineLoadTask LicenseNotValidException: " + e2);
                this.d = false;
                return null;
            } catch (LicenseServerUnavailableException e3) {
                d.e("GestureEngineManager", "GestureEngineLoadTask LicenseServerUnavailableException: " + e3);
                this.d = false;
                return null;
            }
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(Void voidR) {
            if (!this.d) {
                d.e("GestureEngineManager", "Gesture engine init fail");
            }
        }
    }

    /* compiled from: GestureEngineManager */
    private class b extends AsyncTask<Void, Void, Void> {
        private b() {
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            k.this.e();
            return null;
        }
    }

    /* compiled from: GestureEngineManager */
    public interface c {
        void a(Rect rect);
    }

    public k() {
        this.k.put(-1, TouchlessA3D.Rotate.ROTATE_270);
        this.k.put(0, TouchlessA3D.Rotate.ROTATE_270);
        this.k.put(90, TouchlessA3D.Rotate.ROTATE_180);
        this.k.put(180, TouchlessA3D.Rotate.ROTATE_90);
        this.k.put(270, TouchlessA3D.Rotate.DO_NOT_ROTATE);
        this.l.put(-1, TouchlessA3D.Rotate.ROTATE_90);
        this.l.put(0, TouchlessA3D.Rotate.ROTATE_90);
        this.l.put(90, TouchlessA3D.Rotate.ROTATE_180);
        this.l.put(180, TouchlessA3D.Rotate.ROTATE_270);
        this.l.put(270, TouchlessA3D.Rotate.DO_NOT_ROTATE);
        this.m.put(0, this.l);
        this.m.put(1, this.k);
    }

    /* access modifiers changed from: private */
    public boolean a(Event event, String str) {
        return event.getText().equals(str);
    }

    /* access modifiers changed from: private */
    public void e() {
        synchronized (this.e) {
            if (this.d != null) {
                this.d.unregisterListener(this.f2226b);
            }
            if (this.c != null) {
                this.c.unregisterGesture(this.d);
                this.c.close();
                d.a("GestureEngineManager", "gesture detect engine has released");
            }
            this.d = null;
            this.c = null;
        }
    }

    public void a(Context context, int i2, int i3) {
        this.f = true;
        this.i = new a(context, i2, i3).executeOnExecutor(this.f2225a, new Void[0]);
    }

    public void a(c cVar) {
        this.n = cVar;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void a(byte[] bArr, int i2, int i3) {
        synchronized (this.e) {
            if (this.c != null) {
                this.c.handleImage(System.currentTimeMillis(), bArr, (TouchlessA3D.Rotate) this.m.get(Integer.valueOf(i2)).get(Integer.valueOf(i3)));
            }
        }
    }

    public boolean a() {
        return this.g;
    }

    public boolean b() {
        return this.f;
    }

    public void c() {
        AsyncTask asyncTask = this.i;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.i = null;
        }
        AsyncTask asyncTask2 = this.j;
        if (asyncTask2 != null) {
            asyncTask2.cancel(true);
            this.j = null;
        }
    }

    public void close() {
        this.f = false;
        this.n = null;
        this.j = new b().executeOnExecutor(this.f2225a, new Void[0]);
    }

    public void d() {
        HashMap<Integer, HashMap<Integer, TouchlessA3D.Rotate>> hashMap = this.m;
        if (hashMap != null) {
            hashMap.clear();
            this.m = null;
        }
        HashMap<Integer, TouchlessA3D.Rotate> hashMap2 = this.l;
        if (hashMap2 != null) {
            hashMap2.clear();
            this.l = null;
        }
        HashMap<Integer, TouchlessA3D.Rotate> hashMap3 = this.k;
        if (hashMap3 != null) {
            hashMap3.clear();
            this.k = null;
        }
        this.h = null;
        this.n = null;
    }
}
