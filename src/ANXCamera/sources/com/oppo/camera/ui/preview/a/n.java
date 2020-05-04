package com.oppo.camera.ui.preview.a;

import android.content.Context;
import android.graphics.Rect;
import android.util.Size;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.g;
import com.oppo.camera.gl.h;
import com.oppo.camera.gl.s;

/* compiled from: TexturePreview */
public abstract class n {
    protected int d = 0;
    protected GLRootView e = null;
    protected b f = null;

    /* compiled from: TexturePreview */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public h f2931a = null;

        /* renamed from: b  reason: collision with root package name */
        public g f2932b = null;
        public s c = null;
        public int d = 0;
        public int e = 0;
        public int f = 0;

        public a() {
        }
    }

    /* compiled from: TexturePreview */
    public interface b {
        void a();

        void a(String str);

        Rect[] b();
    }

    public n(Context context) {
    }

    public Object a() {
        return null;
    }

    public void a(int i, int i2) {
    }

    public void a(long j) {
    }

    public void a(Size size, boolean z) {
    }

    public void a(GLRootView gLRootView) {
        this.e = gLRootView;
    }

    public abstract void a(h hVar);

    public void a(b bVar) {
        this.f = bVar;
    }

    public abstract void a(p pVar);

    public void a(boolean z) {
    }

    public void a(byte[] bArr, int i, int i2) {
    }

    public abstract boolean a(int i);

    public abstract boolean a(a aVar);

    public void b(int i) {
    }

    public void b(byte[] bArr, int i, int i2) {
    }

    public abstract boolean b();

    public abstract void c();

    public boolean c(int i) {
        return (i & e()) != 0;
    }

    public abstract void d();

    public void d(int i) {
        this.d = i;
    }

    public abstract int e();

    public void e(int i) {
    }

    public abstract void f();

    public abstract s g();

    public abstract s h();

    public abstract boolean i();

    public abstract void j();

    public abstract void k();

    public int l() {
        return 0;
    }

    public void m() {
    }

    public void n() {
    }

    public void o() {
    }

    public a r() {
        return new a();
    }
}
