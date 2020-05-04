package androidx.dynamicanimation.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.g.u;
import androidx.dynamicanimation.a.a;
import androidx.dynamicanimation.a.b;
import java.util.ArrayList;

/* compiled from: DynamicAnimation */
public abstract class b<T extends b<T>> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    public static final d f649a = new d("translationX") {
        public float a(View view) {
            return view.getTranslationX();
        }

        public void a(View view, float f) {
            view.setTranslationX(f);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final d f650b = new d("translationY") {
        public float a(View view) {
            return view.getTranslationY();
        }

        public void a(View view, float f) {
            view.setTranslationY(f);
        }
    };
    public static final d c = new d("translationZ") {
        public float a(View view) {
            return u.m(view);
        }

        public void a(View view, float f) {
            u.b(view, f);
        }
    };
    public static final d d = new d("scaleX") {
        public float a(View view) {
            return view.getScaleX();
        }

        public void a(View view, float f) {
            view.setScaleX(f);
        }
    };
    public static final d e = new d("scaleY") {
        public float a(View view) {
            return view.getScaleY();
        }

        public void a(View view, float f) {
            view.setScaleY(f);
        }
    };
    public static final d f = new d("rotation") {
        public float a(View view) {
            return view.getRotation();
        }

        public void a(View view, float f) {
            view.setRotation(f);
        }
    };
    public static final d g = new d("rotationX") {
        public float a(View view) {
            return view.getRotationX();
        }

        public void a(View view, float f) {
            view.setRotationX(f);
        }
    };
    public static final d h = new d("rotationY") {
        public float a(View view) {
            return view.getRotationY();
        }

        public void a(View view, float f) {
            view.setRotationY(f);
        }
    };
    public static final d i = new d("x") {
        public float a(View view) {
            return view.getX();
        }

        public void a(View view, float f) {
            view.setX(f);
        }
    };
    public static final d j = new d("y") {
        public float a(View view) {
            return view.getY();
        }

        public void a(View view, float f) {
            view.setY(f);
        }
    };
    public static final d k = new d("z") {
        public float a(View view) {
            return u.v(view);
        }

        public void a(View view, float f) {
            u.c(view, f);
        }
    };
    public static final d l = new d("alpha") {
        public float a(View view) {
            return view.getAlpha();
        }

        public void a(View view, float f) {
            view.setAlpha(f);
        }
    };
    public static final d m = new d("scrollX") {
        public float a(View view) {
            return (float) view.getScrollX();
        }

        public void a(View view, float f) {
            view.setScrollX((int) f);
        }
    };
    public static final d n = new d("scrollY") {
        public float a(View view) {
            return (float) view.getScrollY();
        }

        public void a(View view, float f) {
            view.setScrollY((int) f);
        }
    };
    float o = 0.0f;
    float p = Float.MAX_VALUE;
    boolean q = false;
    final Object r;
    final c s;
    boolean t = false;
    float u = Float.MAX_VALUE;
    float v = (-this.u);
    private long w = 0;
    private float x;
    private final ArrayList<C0023b> y = new ArrayList<>();
    private final ArrayList<c> z = new ArrayList<>();

    /* compiled from: DynamicAnimation */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        float f651a;

        /* renamed from: b  reason: collision with root package name */
        float f652b;

        a() {
        }
    }

    /* renamed from: androidx.dynamicanimation.a.b$b  reason: collision with other inner class name */
    /* compiled from: DynamicAnimation */
    public interface C0023b {
        void a(b bVar, boolean z, float f, float f2);
    }

    /* compiled from: DynamicAnimation */
    public interface c {
        void a(b bVar, float f, float f2);
    }

    /* compiled from: DynamicAnimation */
    public static abstract class d extends c<View> {
        private d(String str) {
            super(str);
        }
    }

    <K> b(K k2, c<K> cVar) {
        this.r = k2;
        this.s = cVar;
        c cVar2 = this.s;
        if (cVar2 == f || cVar2 == g || cVar2 == h) {
            this.x = 0.1f;
        } else if (cVar2 == l) {
            this.x = 0.00390625f;
        } else if (cVar2 == d || cVar2 == e) {
            this.x = 0.00390625f;
        } else {
            this.x = 1.0f;
        }
    }

    private static <T> void a(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void a(boolean z2) {
        this.t = false;
        a.a().a((a.b) this);
        this.w = 0;
        this.q = false;
        for (int i2 = 0; i2 < this.y.size(); i2++) {
            if (this.y.get(i2) != null) {
                this.y.get(i2).a(this, z2, this.p, this.o);
            }
        }
        a(this.y);
    }

    private void c() {
        if (!this.t) {
            this.t = true;
            if (!this.q) {
                this.p = d();
            }
            float f2 = this.p;
            if (f2 > this.u || f2 < this.v) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            a.a().a(this, 0);
        }
    }

    private float d() {
        return this.s.a(this.r);
    }

    public T a(C0023b bVar) {
        if (!this.y.contains(bVar)) {
            this.y.add(bVar);
        }
        return this;
    }

    public void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        } else if (!this.t) {
            c();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(float f2) {
        this.s.a(this.r, f2);
        for (int i2 = 0; i2 < this.z.size(); i2++) {
            if (this.z.get(i2) != null) {
                this.z.get(i2).a(this, this.p, this.o);
            }
        }
        a(this.z);
    }

    /* access modifiers changed from: package-private */
    public abstract boolean a(float f2, float f3);

    public boolean a(long j2) {
        long j3 = this.w;
        if (j3 == 0) {
            this.w = j2;
            a(this.p);
            return false;
        }
        this.w = j2;
        boolean b2 = b(j2 - j3);
        this.p = Math.min(this.p, this.u);
        this.p = Math.max(this.p, this.v);
        a(this.p);
        if (b2) {
            a(false);
        }
        return b2;
    }

    /* access modifiers changed from: package-private */
    public float b() {
        return this.x * 0.75f;
    }

    /* access modifiers changed from: package-private */
    public abstract boolean b(long j2);
}
