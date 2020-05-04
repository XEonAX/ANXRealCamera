package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* compiled from: StandaloneActionMode */
public class e extends b implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f144a;

    /* renamed from: b  reason: collision with root package name */
    private ActionBarContextView f145b;
    private b.a c;
    private WeakReference<View> d;
    private boolean e;
    private boolean f;
    private g g;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f144a = context;
        this.f145b = actionBarContextView;
        this.c = aVar;
        this.g = new g(actionBarContextView.getContext()).a(1);
        this.g.a((g.a) this);
        this.f = z;
    }

    public MenuInflater a() {
        return new g(this.f145b.getContext());
    }

    public void a(int i) {
        b((CharSequence) this.f144a.getString(i));
    }

    public void a(View view) {
        this.f145b.setCustomView(view);
        this.d = view != null ? new WeakReference<>(view) : null;
    }

    public void a(g gVar) {
        d();
        this.f145b.a();
    }

    public void a(CharSequence charSequence) {
        this.f145b.setSubtitle(charSequence);
    }

    public void a(boolean z) {
        super.a(z);
        this.f145b.setTitleOptional(z);
    }

    public boolean a(g gVar, MenuItem menuItem) {
        return this.c.a((b) this, menuItem);
    }

    public Menu b() {
        return this.g;
    }

    public void b(int i) {
        a((CharSequence) this.f144a.getString(i));
    }

    public void b(CharSequence charSequence) {
        this.f145b.setTitle(charSequence);
    }

    public void c() {
        if (!this.e) {
            this.e = true;
            this.f145b.sendAccessibilityEvent(32);
            this.c.a(this);
        }
    }

    public void d() {
        this.c.b(this, this.g);
    }

    public CharSequence f() {
        return this.f145b.getTitle();
    }

    public CharSequence g() {
        return this.f145b.getSubtitle();
    }

    public boolean h() {
        return this.f145b.d();
    }

    public View i() {
        WeakReference<View> weakReference = this.d;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }
}
