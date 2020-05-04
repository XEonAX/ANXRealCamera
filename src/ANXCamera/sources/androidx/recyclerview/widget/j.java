package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.oppo.camera.jni.YuvProcessUtil;

/* compiled from: LinearSmoothScroller */
public class j extends RecyclerView.s {

    /* renamed from: a  reason: collision with root package name */
    protected final LinearInterpolator f986a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    protected final DecelerateInterpolator f987b = new DecelerateInterpolator();
    protected PointF c;
    protected int d = 0;
    protected int e = 0;
    private final DisplayMetrics f;
    private boolean g = false;
    private float h;

    public j(Context context) {
        this.f = context.getResources().getDisplayMetrics();
    }

    private int b(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    private float k() {
        if (!this.g) {
            this.h = a(this.f);
            this.g = true;
        }
        return this.h;
    }

    /* access modifiers changed from: protected */
    public float a(DisplayMetrics displayMetrics) {
        return 25.0f / ((float) displayMetrics.densityDpi);
    }

    /* access modifiers changed from: protected */
    public int a(int i) {
        return (int) Math.ceil(((double) b(i)) / 0.3356d);
    }

    public int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 == 0) {
            int i6 = i3 - i;
            if (i6 > 0) {
                return i6;
            }
            int i7 = i4 - i2;
            if (i7 < 0) {
                return i7;
            }
            return 0;
        } else if (i5 == 1) {
            return i4 - i2;
        } else {
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
    }

    public int a(View view, int i) {
        RecyclerView.i e2 = e();
        if (e2 == null || !e2.g()) {
            return 0;
        }
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return a(e2.i(view) - jVar.topMargin, e2.k(view) + jVar.bottomMargin, e2.F(), e2.D() - e2.H(), i);
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2, RecyclerView.t tVar, RecyclerView.s.a aVar) {
        if (j() == 0) {
            f();
            return;
        }
        this.d = b(this.d, i);
        this.e = b(this.e, i2);
        if (this.d == 0 && this.e == 0) {
            a(aVar);
        }
    }

    /* access modifiers changed from: protected */
    public void a(View view, RecyclerView.t tVar, RecyclerView.s.a aVar) {
        int b2 = b(view, c());
        int a2 = a(view, d());
        int a3 = a((int) Math.sqrt((double) ((b2 * b2) + (a2 * a2))));
        if (a3 > 0) {
            aVar.a(-b2, -a2, a3, this.f987b);
        }
    }

    /* access modifiers changed from: protected */
    public void a(RecyclerView.s.a aVar) {
        PointF d2 = d(i());
        if (d2 == null || (d2.x == 0.0f && d2.y == 0.0f)) {
            aVar.a(i());
            f();
            return;
        }
        a(d2);
        this.c = d2;
        this.d = (int) (d2.x * 10000.0f);
        this.e = (int) (d2.y * 10000.0f);
        aVar.a((int) (((float) this.d) * 1.2f), (int) (((float) this.e) * 1.2f), (int) (((float) b(YuvProcessUtil.ExifInfo.LOCATION_MULTIPLE)) * 1.2f), this.f986a);
    }

    /* access modifiers changed from: protected */
    public int b(int i) {
        return (int) Math.ceil((double) (((float) Math.abs(i)) * k()));
    }

    public int b(View view, int i) {
        RecyclerView.i e2 = e();
        if (e2 == null || !e2.f()) {
            return 0;
        }
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return a(e2.h(view) - jVar.leftMargin, e2.j(view) + jVar.rightMargin, e2.E(), e2.C() - e2.G(), i);
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.e = 0;
        this.d = 0;
        this.c = null;
    }

    /* access modifiers changed from: protected */
    public int c() {
        PointF pointF = this.c;
        if (pointF == null || pointF.x == 0.0f) {
            return 0;
        }
        return this.c.x > 0.0f ? 1 : -1;
    }

    /* access modifiers changed from: protected */
    public int d() {
        PointF pointF = this.c;
        if (pointF == null || pointF.y == 0.0f) {
            return 0;
        }
        return this.c.y > 0.0f ? 1 : -1;
    }
}
