package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.t;

/* compiled from: FragmentController */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final g<?> f683a;

    private e(g<?> gVar) {
        this.f683a = gVar;
    }

    public static e a(g<?> gVar) {
        return new e((g) androidx.core.f.e.a(gVar, "callbacks == null"));
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f683a.f686b.onCreateView(view, str, context, attributeSet);
    }

    public Fragment a(String str) {
        return this.f683a.f686b.b(str);
    }

    public h a() {
        return this.f683a.f686b;
    }

    public void a(Configuration configuration) {
        this.f683a.f686b.a(configuration);
    }

    public void a(Parcelable parcelable) {
        g<?> gVar = this.f683a;
        if (gVar instanceof t) {
            gVar.f686b.a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public void a(Fragment fragment) {
        i iVar = this.f683a.f686b;
        g<?> gVar = this.f683a;
        iVar.a((g) gVar, (d) gVar, fragment);
    }

    public void a(boolean z) {
        this.f683a.f686b.a(z);
    }

    public boolean a(Menu menu) {
        return this.f683a.f686b.a(menu);
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f683a.f686b.a(menu, menuInflater);
    }

    public boolean a(MenuItem menuItem) {
        return this.f683a.f686b.a(menuItem);
    }

    public void b() {
        this.f683a.f686b.p();
    }

    public void b(Menu menu) {
        this.f683a.f686b.b(menu);
    }

    public void b(boolean z) {
        this.f683a.f686b.b(z);
    }

    public boolean b(MenuItem menuItem) {
        return this.f683a.f686b.b(menuItem);
    }

    public Parcelable c() {
        return this.f683a.f686b.o();
    }

    public void d() {
        this.f683a.f686b.q();
    }

    public void e() {
        this.f683a.f686b.r();
    }

    public void f() {
        this.f683a.f686b.s();
    }

    public void g() {
        this.f683a.f686b.t();
    }

    public void h() {
        this.f683a.f686b.u();
    }

    public void i() {
        this.f683a.f686b.v();
    }

    public void j() {
        this.f683a.f686b.x();
    }

    public void k() {
        this.f683a.f686b.y();
    }

    public boolean l() {
        return this.f683a.f686b.l();
    }
}
