package co.polarr.renderer.filters.a;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.b.i;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.ad;
import co.polarr.renderer.filters.ar;
import co.polarr.renderer.filters.bg;
import co.polarr.renderer.filters.bh;
import co.polarr.renderer.filters.bo;
import co.polarr.renderer.filters.j;
import co.polarr.renderer.filters.t;
import co.polarr.renderer.filters.u;
import co.polarr.renderer.filters.x;
import co.polarr.renderer.filters.y;
import co.polarr.renderer.render.b;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private Queue<a> f1169a = new ConcurrentLinkedQueue();

    /* renamed from: b  reason: collision with root package name */
    private List<a> f1170b = new ArrayList();
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 2;
    private int[] g = new int[1];
    private int[] h = new int[this.f];
    private int i = 0;

    public c(Context context, Resources resources) {
        super(context, resources);
    }

    private void d(int i2, int i3) {
        this.c = i2;
        this.d = i3;
        w();
        GLES20.glBindFramebuffer(36160, this.g[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.h[0], 0);
        y();
    }

    private void u() {
        while (true) {
            a poll = this.f1169a.poll();
            if (poll != null) {
                poll.k();
                poll.b(this.c, this.d);
                this.f1170b.add(poll);
                this.e++;
            } else {
                return;
            }
        }
    }

    private void v() {
        s();
        GLES20.glGenFramebuffers(1, this.g, 0);
        b.c(this.g[0]);
        GLES20.glGenTextures(this.f, this.h, 0);
        for (int b2 : this.h) {
            b.b(b2);
        }
        for (int i2 = 0; i2 < this.f; i2++) {
            GLES20.glBindTexture(3553, this.h[i2]);
            i.a();
        }
    }

    private void w() {
        for (int i2 = 0; i2 < this.f; i2++) {
            GLES20.glBindTexture(3553, this.h[i2]);
            GLES20.glTexImage2D(3553, 0, 6408, this.c, this.d, 0, 6408, 5121, (Buffer) null);
        }
    }

    private void x() {
        GLES20.glBindFramebuffer(36160, this.g[0]);
        GLES20.glViewport(0, 0, this.c, this.d);
    }

    private void y() {
        GLES20.glBindRenderbuffer(36161, 0);
        GLES20.glBindFramebuffer(36160, 0);
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(int i2, int i3) {
        this.c = i2;
        this.d = i3;
        u();
        d(i2, i3);
    }

    public void a(Context context) {
        this.u = context;
    }

    public void a(a aVar) {
        this.f1169a.add(aVar);
    }

    public boolean a(a aVar, boolean z) {
        aVar.u = this.u;
        if (this.u.isLutRender && ((aVar instanceof t) || (aVar instanceof bg) || (aVar instanceof j) || (aVar instanceof bh) || (aVar instanceof u) || (aVar instanceof bo) || (aVar instanceof y) || (aVar instanceof ad) || (aVar instanceof ar) || (aVar instanceof x))) {
            return false;
        }
        if (!z && (aVar instanceof b) && ((b) aVar).c()) {
            return false;
        }
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.h[this.i % 2], 0);
        int i2 = this.i;
        aVar.a(i2 == 0 ? l() : this.h[(i2 - 1) % 2]);
        aVar.a(this.G);
        aVar.draw();
        this.i++;
        return true;
    }

    public boolean b(a aVar) {
        return a(aVar, false);
    }

    /* access modifiers changed from: protected */
    public void b_() {
        v();
    }

    public void c(int i2, int i3) {
        int[] iArr = this.h;
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public void draw() {
        i();
        j();
        q();
    }

    public List<a> h() {
        return this.f1170b;
    }

    public void i() {
        u();
        this.i = 0;
        x();
    }

    public void j() {
        if (this.e > 0) {
            boolean z = false;
            for (int i2 = 0; i2 < this.f1170b.size(); i2++) {
                z = z || b(this.f1170b.get(i2));
            }
            if (!z) {
                a(this.f1170b.get(0), true);
            }
        }
    }

    public int m() {
        int i2 = this.i;
        return i2 == 0 ? l() : this.h[(i2 - 1) % 2];
    }

    public void o() {
        y();
    }

    public void p() {
        x();
    }

    public void q() {
        y();
    }

    public void r() {
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.h[this.i % 2], 0);
        this.i++;
    }

    public void s() {
        GLES20.glDeleteFramebuffers(1, this.g, 0);
        GLES20.glDeleteTextures(this.f, this.h, 0);
        b.e(this.g[0]);
        for (int d2 : this.h) {
            b.d(d2);
        }
        GLES20.glFlush();
    }

    public void t() {
        s();
    }
}
