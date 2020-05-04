package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import androidx.preference.DialogPreference;
import androidx.preference.j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PreferenceFragmentCompat */
public abstract class g extends Fragment implements DialogPreference.a, j.a, j.b, j.c {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f839a;

    /* renamed from: b  reason: collision with root package name */
    private final a f840b = new a();
    private j c;
    private boolean d;
    private boolean e;
    private int f = R.layout.preference_list_fragment;
    private Runnable g;
    private Handler h = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 1) {
                g.this.am();
            }
        }
    };
    private final Runnable i = new Runnable() {
        public void run() {
            g.this.f839a.focusableViewAvailable(g.this.f839a);
        }
    };

    /* compiled from: PreferenceFragmentCompat */
    private class a extends RecyclerView.h {

        /* renamed from: b  reason: collision with root package name */
        private Drawable f844b;
        private int c;
        private boolean d = true;

        a() {
        }

        private boolean a(View view, RecyclerView recyclerView) {
            RecyclerView.w b2 = recyclerView.b(view);
            if (!((b2 instanceof l) && ((l) b2).b())) {
                return false;
            }
            boolean z = this.d;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild >= recyclerView.getChildCount() - 1) {
                return z;
            }
            RecyclerView.w b3 = recyclerView.b(recyclerView.getChildAt(indexOfChild + 1));
            return (b3 instanceof l) && ((l) b3).a();
        }

        public void a(int i) {
            this.c = i;
            g.this.f839a.v();
        }

        public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
            if (this.f844b != null) {
                int childCount = recyclerView.getChildCount();
                int width = recyclerView.getWidth();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (a(childAt, recyclerView)) {
                        int y = ((int) childAt.getY()) + childAt.getHeight();
                        this.f844b.setBounds(0, y, width, this.c + y);
                        this.f844b.draw(canvas);
                    }
                }
            }
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
            if (a(view, recyclerView)) {
                rect.bottom = this.c;
            }
        }

        public void a(Drawable drawable) {
            if (drawable != null) {
                this.c = drawable.getIntrinsicHeight();
            } else {
                this.c = 0;
            }
            this.f844b = drawable;
            g.this.f839a.v();
        }

        public void a(boolean z) {
            this.d = z;
        }
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface b {
        boolean a(g gVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface c {
        boolean a(g gVar, Preference preference);
    }

    /* compiled from: PreferenceFragmentCompat */
    public interface d {
        boolean a(g gVar, PreferenceScreen preferenceScreen);
    }

    private void as() {
        if (this.c == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    private void at() {
        if (!this.h.hasMessages(1)) {
            this.h.obtainMessage(1).sendToTarget();
        }
    }

    private void au() {
        ap().setAdapter((RecyclerView.a) null);
        PreferenceScreen a2 = a();
        if (a2 != null) {
            a2.O();
        }
        ao();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = m().obtainStyledAttributes((AttributeSet) null, R.styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.f = obtainStyledAttributes.getResourceId(R.styleable.PreferenceFragmentCompat_android_layout, this.f);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(m());
        View inflate = cloneInContext.inflate(this.f, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            RecyclerView c2 = c(cloneInContext, viewGroup2, bundle);
            if (c2 != null) {
                this.f839a = c2;
                c2.a((RecyclerView.h) this.f840b);
                a(drawable);
                if (dimensionPixelSize != -1) {
                    d(dimensionPixelSize);
                }
                this.f840b.a(z);
                if (this.f839a.getParent() == null) {
                    viewGroup2.addView(this.f839a);
                }
                this.h.post(this.i);
                return inflate;
            }
            throw new RuntimeException("Could not create RecyclerView");
        }
        throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    public <T extends Preference> T a(CharSequence charSequence) {
        j jVar = this.c;
        if (jVar == null) {
            return null;
        }
        return jVar.a(charSequence);
    }

    public PreferenceScreen a() {
        return this.c.d();
    }

    public void a(Drawable drawable) {
        this.f840b.a(drawable);
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        TypedValue typedValue = new TypedValue();
        o().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i2 = typedValue.resourceId;
        if (i2 == 0) {
            i2 = R.style.PreferenceThemeOverlay;
        }
        o().getTheme().applyStyle(i2, false);
        this.c = new j(m());
        this.c.a((j.b) this);
        a(bundle, j() != null ? j().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    public abstract void a(Bundle bundle, String str);

    public void a(View view, Bundle bundle) {
        super.a(view, bundle);
        if (bundle != null) {
            Bundle bundle2 = bundle.getBundle("android:preferences");
            if (bundle2 != null) {
                PreferenceScreen a2 = a();
                if (a2 != null) {
                    a2.c(bundle2);
                }
            }
        }
        if (this.d) {
            am();
            Runnable runnable = this.g;
            if (runnable != null) {
                runnable.run();
                this.g = null;
            }
        }
        this.e = true;
    }

    public void a(PreferenceScreen preferenceScreen) {
        if (this.c.a(preferenceScreen) && preferenceScreen != null) {
            ao();
            this.d = true;
            if (this.e) {
                at();
            }
        }
    }

    public boolean a(Preference preference) {
        if (preference.r() == null) {
            return false;
        }
        boolean a2 = ar() instanceof c ? ((c) ar()).a(this, preference) : false;
        if (!a2 && (o() instanceof c)) {
            a2 = ((c) o()).a(this, preference);
        }
        if (a2) {
            return true;
        }
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        h m = p().m();
        Bundle t = preference.t();
        Fragment c2 = m.f().c(p().getClassLoader(), preference.r());
        c2.g(t);
        c2.a((Fragment) this, 0);
        m.a().a(((View) A().getParent()).getId(), c2).a((String) null).b();
        return true;
    }

    /* access modifiers changed from: package-private */
    public void am() {
        PreferenceScreen a2 = a();
        if (a2 != null) {
            ap().setAdapter(c(a2));
            a2.N();
        }
        an();
    }

    /* access modifiers changed from: protected */
    public void an() {
    }

    /* access modifiers changed from: protected */
    public void ao() {
    }

    public final RecyclerView ap() {
        return this.f839a;
    }

    public RecyclerView.i aq() {
        return new LinearLayoutManager(m());
    }

    public Fragment ar() {
        return null;
    }

    public void b(Preference preference) {
        androidx.fragment.app.b bVar;
        boolean a2 = ar() instanceof b ? ((b) ar()).a(this, preference) : false;
        if (!a2 && (o() instanceof b)) {
            a2 = ((b) o()).a(this, preference);
        }
        if (!a2 && s().a("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                bVar = a.b(preference.B());
            } else if (preference instanceof ListPreference) {
                bVar = c.b(preference.B());
            } else if (preference instanceof MultiSelectListPreference) {
                bVar = d.b(preference.B());
            } else {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            }
            bVar.a((Fragment) this, 0);
            bVar.a(s(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    public void b(PreferenceScreen preferenceScreen) {
        if (!(ar() instanceof d ? ((d) ar()).a(this, preferenceScreen) : false) && (o() instanceof d)) {
            ((d) o()).a(this, preferenceScreen);
        }
    }

    /* access modifiers changed from: protected */
    public RecyclerView.a c(PreferenceScreen preferenceScreen) {
        return new h(preferenceScreen);
    }

    public RecyclerView c(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m().getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            RecyclerView recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view);
            if (recyclerView != null) {
                return recyclerView;
            }
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(aq());
        recyclerView2.setAccessibilityDelegateCompat(new k(recyclerView2));
        return recyclerView2;
    }

    public void d(int i2) {
        this.f840b.a(i2);
    }

    public void e(int i2) {
        as();
        a(this.c.a(m(), i2, a()));
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        PreferenceScreen a2 = a();
        if (a2 != null) {
            Bundle bundle2 = new Bundle();
            a2.a(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    public void f() {
        super.f();
        this.c.a((j.c) this);
        this.c.a((j.a) this);
    }

    public void g() {
        super.g();
        this.c.a((j.c) null);
        this.c.a((j.a) null);
    }

    public void h() {
        this.h.removeCallbacks(this.i);
        this.h.removeMessages(1);
        if (this.d) {
            au();
        }
        this.f839a = null;
        super.h();
    }
}
