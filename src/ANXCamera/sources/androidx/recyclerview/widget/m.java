package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.nano.MessageNano;

/* compiled from: OrientationHelper */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView.i f989a;

    /* renamed from: b  reason: collision with root package name */
    final Rect f990b;
    private int c;

    private m(RecyclerView.i iVar) {
        this.c = MessageNano.UNSET_ENUM_VALUE;
        this.f990b = new Rect();
        this.f989a = iVar;
    }

    public static m a(RecyclerView.i iVar) {
        return new m(iVar) {
            public int a(View view) {
                return this.f989a.h(view) - ((RecyclerView.j) view.getLayoutParams()).leftMargin;
            }

            public void a(int i) {
                this.f989a.j(i);
            }

            public int b(View view) {
                return this.f989a.j(view) + ((RecyclerView.j) view.getLayoutParams()).rightMargin;
            }

            public int c() {
                return this.f989a.E();
            }

            public int c(View view) {
                this.f989a.a(view, true, this.f990b);
                return this.f990b.right;
            }

            public int d() {
                return this.f989a.C() - this.f989a.G();
            }

            public int d(View view) {
                this.f989a.a(view, true, this.f990b);
                return this.f990b.left;
            }

            public int e() {
                return this.f989a.C();
            }

            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f989a.f(view) + jVar.leftMargin + jVar.rightMargin;
            }

            public int f() {
                return (this.f989a.C() - this.f989a.E()) - this.f989a.G();
            }

            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f989a.g(view) + jVar.topMargin + jVar.bottomMargin;
            }

            public int g() {
                return this.f989a.G();
            }

            public int h() {
                return this.f989a.A();
            }

            public int i() {
                return this.f989a.B();
            }
        };
    }

    public static m a(RecyclerView.i iVar, int i) {
        if (i == 0) {
            return a(iVar);
        }
        if (i == 1) {
            return b(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static m b(RecyclerView.i iVar) {
        return new m(iVar) {
            public int a(View view) {
                return this.f989a.i(view) - ((RecyclerView.j) view.getLayoutParams()).topMargin;
            }

            public void a(int i) {
                this.f989a.k(i);
            }

            public int b(View view) {
                return this.f989a.k(view) + ((RecyclerView.j) view.getLayoutParams()).bottomMargin;
            }

            public int c() {
                return this.f989a.F();
            }

            public int c(View view) {
                this.f989a.a(view, true, this.f990b);
                return this.f990b.bottom;
            }

            public int d() {
                return this.f989a.D() - this.f989a.H();
            }

            public int d(View view) {
                this.f989a.a(view, true, this.f990b);
                return this.f990b.top;
            }

            public int e() {
                return this.f989a.D();
            }

            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f989a.g(view) + jVar.topMargin + jVar.bottomMargin;
            }

            public int f() {
                return (this.f989a.D() - this.f989a.F()) - this.f989a.H();
            }

            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f989a.f(view) + jVar.leftMargin + jVar.rightMargin;
            }

            public int g() {
                return this.f989a.H();
            }

            public int h() {
                return this.f989a.B();
            }

            public int i() {
                return this.f989a.A();
            }
        };
    }

    public abstract int a(View view);

    public void a() {
        this.c = f();
    }

    public abstract void a(int i);

    public int b() {
        if (Integer.MIN_VALUE == this.c) {
            return 0;
        }
        return f() - this.c;
    }

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public abstract int h();

    public abstract int i();
}
