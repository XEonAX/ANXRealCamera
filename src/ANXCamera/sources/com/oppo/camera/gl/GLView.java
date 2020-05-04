package com.oppo.camera.gl;

import android.graphics.Rect;
import android.view.MotionEvent;
import java.util.ArrayList;

public class GLView {

    /* renamed from: a  reason: collision with root package name */
    protected final Rect f2148a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    protected final Rect f2149b = new Rect();
    protected GLView c;
    protected int d = 0;
    protected int e = 0;
    protected int f = 0;
    protected int g = 0;
    protected int h = 0;
    protected int i = 0;
    private m j;
    private ArrayList<GLView> k;
    private GLView l;
    private f m;
    private int n = 0;
    private int o = -1;
    private int p = -1;

    private boolean b(int i2, int i3, int i4, int i5) {
        boolean z = (i4 - i2 == this.f2148a.right - this.f2148a.left && i5 - i3 == this.f2148a.bottom - this.f2148a.top) ? false : true;
        this.f2148a.set(i2, i3, i4, i5);
        return z;
    }

    public int a() {
        return (this.n & 1) == 0 ? 0 : 1;
    }

    public GLView a(int i2) {
        ArrayList<GLView> arrayList = this.k;
        if (arrayList != null) {
            return arrayList.get(i2);
        }
        throw new ArrayIndexOutOfBoundsException(i2);
    }

    /* access modifiers changed from: protected */
    public void a(int i2, int i3) {
    }

    public void a(int i2, int i3, int i4, int i5) {
        boolean b2 = b(i2, i3, i4, i5);
        this.n &= -5;
        a(b2, i2, i3, i4, i5);
    }

    /* access modifiers changed from: protected */
    public void a(h hVar) {
        c(hVar);
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            a(hVar, a(i2));
        }
    }

    /* access modifiers changed from: protected */
    public void a(h hVar, GLView gLView) {
        if (gLView.a() == 0 || gLView.m != null) {
            int i2 = gLView.f2148a.left - this.g;
            int i3 = gLView.f2148a.top - this.f;
            hVar.a((float) i2, (float) i3);
            f fVar = gLView.m;
            if (fVar != null) {
                hVar.a(fVar.a());
                if (fVar.b(b.b())) {
                    e();
                } else {
                    gLView.m = null;
                }
                fVar.a(hVar);
            }
            gLView.a(hVar);
            if (fVar != null) {
                hVar.f();
            }
            hVar.a((float) (-i2), (float) (-i3));
        }
    }

    public void a(m mVar) {
        w.a(this.c == null && this.j == null);
        b(mVar);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, int i2, int i3, int i4, int i5) {
    }

    /* access modifiers changed from: protected */
    public boolean a(MotionEvent motionEvent) {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean a(MotionEvent motionEvent, int i2, int i3, GLView gLView, boolean z) {
        Rect rect = gLView.f2148a;
        int i4 = rect.left;
        int i5 = rect.top;
        if (z && !rect.contains(i2, i3)) {
            return false;
        }
        motionEvent.offsetLocation((float) (-i4), (float) (-i5));
        if (gLView.b(motionEvent)) {
            motionEvent.offsetLocation((float) i4, (float) i5);
            return true;
        }
        motionEvent.offsetLocation((float) i4, (float) i5);
        return false;
    }

    public void b() {
        w.a(this.c == null && this.j != null);
        g();
    }

    /* access modifiers changed from: protected */
    public void b(h hVar) {
    }

    /* access modifiers changed from: protected */
    public void b(m mVar) {
        this.j = mVar;
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            a(i2).b(mVar);
        }
    }

    /* access modifiers changed from: protected */
    public boolean b(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        GLView gLView = this.l;
        if (gLView != null) {
            if (action == 0) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(3);
                a(obtain, x, y, this.l, false);
                this.l = null;
            } else {
                a(motionEvent, x, y, gLView, false);
                if (action == 3 || action == 1) {
                    this.l = null;
                }
                return true;
            }
        }
        if (action == 0) {
            for (int c2 = c() - 1; c2 >= 0; c2--) {
                GLView a2 = a(c2);
                if (a2.a() == 0 && a(motionEvent, x, y, a2, true)) {
                    this.l = a2;
                    return true;
                }
            }
        }
        return a(motionEvent);
    }

    public int c() {
        ArrayList<GLView> arrayList = this.k;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    /* access modifiers changed from: protected */
    public void c(h hVar) {
    }

    public m d() {
        return this.j;
    }

    public void e() {
        m d2 = d();
        if (d2 != null) {
            d2.a();
        }
    }

    /* access modifiers changed from: protected */
    public void f() {
    }

    /* access modifiers changed from: protected */
    public void g() {
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            a(i2).g();
        }
        this.j = null;
    }
}
