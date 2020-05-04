package androidx.media;

import android.os.Build;
import androidx.media.j;

/* compiled from: VolumeProviderCompat */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private final int f798a;

    /* renamed from: b  reason: collision with root package name */
    private final int f799b;
    private int c;
    private a d;
    private Object e;

    /* compiled from: VolumeProviderCompat */
    public static abstract class a {
        public abstract void onVolumeChanged(i iVar);
    }

    public final int a() {
        return this.c;
    }

    public void a(int i) {
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public final int b() {
        return this.f798a;
    }

    public void b(int i) {
    }

    public final int c() {
        return this.f799b;
    }

    public Object d() {
        if (this.e == null && Build.VERSION.SDK_INT >= 21) {
            this.e = j.a(this.f798a, this.f799b, this.c, new j.a() {
                public void a(int i) {
                    i.this.a(i);
                }

                public void b(int i) {
                    i.this.b(i);
                }
            });
        }
        return this.e;
    }
}
