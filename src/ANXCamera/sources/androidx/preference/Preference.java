package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.a.a.g;
import androidx.core.g.u;
import androidx.preference.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Preference implements Comparable<Preference> {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private int G;
    private int H;
    private a I;
    private List<Preference> J;
    private PreferenceGroup K;
    private boolean L;
    private boolean M;
    private d N;
    private e O;
    private final View.OnClickListener P;

    /* renamed from: a  reason: collision with root package name */
    private Context f817a;

    /* renamed from: b  reason: collision with root package name */
    private j f818b;
    private e c;
    private long d;
    private boolean e;
    private b f;
    private c g;
    private int h;
    private int i;
    private CharSequence j;
    private CharSequence k;
    private int l;
    private Drawable m;
    private String n;
    private Intent o;
    private String p;
    private Bundle q;
    private boolean r;
    private boolean s;
    private boolean t;
    private String u;
    private Object v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.Creator<BaseSavedState>() {
            /* renamed from: a */
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            /* renamed from: a */
            public BaseSavedState[] newArray(int i) {
                return new BaseSavedState[i];
            }
        };

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    interface a {
        void a(Preference preference);

        void b(Preference preference);
    }

    public interface b {
        boolean onPreferenceChange(Preference preference, Object obj);
    }

    public interface c {
        boolean onPreferenceClick(Preference preference);
    }

    private static class d implements MenuItem.OnMenuItemClickListener, View.OnCreateContextMenuListener {

        /* renamed from: a  reason: collision with root package name */
        private final Preference f820a;

        d(Preference preference) {
            this.f820a = preference;
        }

        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence n = this.f820a.n();
            if (this.f820a.F() && !TextUtils.isEmpty(n)) {
                contextMenu.setHeaderTitle(n);
                contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            CharSequence n = this.f820a.n();
            ((ClipboardManager) this.f820a.J().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Preference", n));
            Toast.makeText(this.f820a.J(), this.f820a.J().getString(R.string.preference_copied, new Object[]{n}), 0).show();
            return true;
        }
    }

    public interface e<T extends Preference> {
        CharSequence a(T t);
    }

    public Preference(Context context) {
        this(context, (AttributeSet) null);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.a(context, R.attr.preferenceStyle, 16842894));
    }

    public Preference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public Preference(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.h = Integer.MAX_VALUE;
        this.i = 0;
        this.r = true;
        this.s = true;
        this.t = true;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.A = true;
        this.C = true;
        this.F = true;
        this.G = R.layout.preference;
        this.P = new View.OnClickListener() {
            public void onClick(View view) {
                Preference.this.a(view);
            }
        };
        this.f817a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i2, i3);
        this.l = g.b(obtainStyledAttributes, R.styleable.Preference_icon, R.styleable.Preference_android_icon, 0);
        this.n = g.b(obtainStyledAttributes, R.styleable.Preference_key, R.styleable.Preference_android_key);
        this.j = g.c(obtainStyledAttributes, R.styleable.Preference_title, R.styleable.Preference_android_title);
        this.k = g.c(obtainStyledAttributes, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        this.h = g.a(obtainStyledAttributes, R.styleable.Preference_order, R.styleable.Preference_android_order, Integer.MAX_VALUE);
        this.p = g.b(obtainStyledAttributes, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
        this.G = g.b(obtainStyledAttributes, R.styleable.Preference_layout, R.styleable.Preference_android_layout, R.layout.preference);
        this.H = g.b(obtainStyledAttributes, R.styleable.Preference_widgetLayout, R.styleable.Preference_android_widgetLayout, 0);
        this.r = g.a(obtainStyledAttributes, R.styleable.Preference_enabled, R.styleable.Preference_android_enabled, true);
        this.s = g.a(obtainStyledAttributes, R.styleable.Preference_selectable, R.styleable.Preference_android_selectable, true);
        this.t = g.a(obtainStyledAttributes, R.styleable.Preference_persistent, R.styleable.Preference_android_persistent, true);
        this.u = g.b(obtainStyledAttributes, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
        this.z = g.a(obtainStyledAttributes, R.styleable.Preference_allowDividerAbove, R.styleable.Preference_allowDividerAbove, this.s);
        this.A = g.a(obtainStyledAttributes, R.styleable.Preference_allowDividerBelow, R.styleable.Preference_allowDividerBelow, this.s);
        if (obtainStyledAttributes.hasValue(R.styleable.Preference_defaultValue)) {
            this.v = a(obtainStyledAttributes, R.styleable.Preference_defaultValue);
        } else if (obtainStyledAttributes.hasValue(R.styleable.Preference_android_defaultValue)) {
            this.v = a(obtainStyledAttributes, R.styleable.Preference_android_defaultValue);
        }
        this.F = g.a(obtainStyledAttributes, R.styleable.Preference_shouldDisableView, R.styleable.Preference_android_shouldDisableView, true);
        this.B = obtainStyledAttributes.hasValue(R.styleable.Preference_singleLineTitle);
        if (this.B) {
            this.C = g.a(obtainStyledAttributes, R.styleable.Preference_singleLineTitle, R.styleable.Preference_android_singleLineTitle, true);
        }
        this.D = g.a(obtainStyledAttributes, R.styleable.Preference_iconSpaceReserved, R.styleable.Preference_android_iconSpaceReserved, false);
        this.y = g.a(obtainStyledAttributes, R.styleable.Preference_isPreferenceVisible, R.styleable.Preference_isPreferenceVisible, true);
        this.E = g.a(obtainStyledAttributes, R.styleable.Preference_enableCopying, R.styleable.Preference_enableCopying, false);
        obtainStyledAttributes.recycle();
    }

    private void a(SharedPreferences.Editor editor) {
        if (this.f818b.f()) {
            editor.apply();
        }
    }

    private void a(View view, boolean z2) {
        view.setEnabled(z2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                a(viewGroup.getChildAt(childCount), z2);
            }
        }
    }

    private void b() {
        if (!TextUtils.isEmpty(this.u)) {
            Preference c2 = c(this.u);
            if (c2 != null) {
                c2.b(this);
                return;
            }
            throw new IllegalStateException("Dependency \"" + this.u + "\" not found for preference \"" + this.n + "\" (title: \"" + this.j + "\"");
        }
    }

    private void b(Preference preference) {
        if (this.J == null) {
            this.J = new ArrayList();
        }
        this.J.add(preference);
        preference.a(this, j());
    }

    private void c() {
        String str = this.u;
        if (str != null) {
            Preference c2 = c(str);
            if (c2 != null) {
                c2.c(this);
            }
        }
    }

    private void c(Preference preference) {
        List<Preference> list = this.J;
        if (list != null) {
            list.remove(preference);
        }
    }

    private void d() {
        if (s() != null) {
            a(true, this.v);
        } else if (!E() || !K().contains(this.n)) {
            Object obj = this.v;
            if (obj != null) {
                a(false, obj);
            }
        } else {
            a(true, (Object) null);
        }
    }

    public final boolean A() {
        return this.y;
    }

    public String B() {
        return this.n;
    }

    public boolean C() {
        return !TextUtils.isEmpty(this.n);
    }

    public boolean D() {
        return this.t;
    }

    /* access modifiers changed from: protected */
    public boolean E() {
        return this.f818b != null && D() && C();
    }

    /* access modifiers changed from: package-private */
    public long E_() {
        return this.d;
    }

    public boolean F() {
        return this.E;
    }

    public final e G() {
        return this.O;
    }

    public b H() {
        return this.f;
    }

    public void I() {
        if (y() && z()) {
            g();
            c cVar = this.g;
            if (cVar == null || !cVar.onPreferenceClick(this)) {
                j M2 = M();
                if (M2 != null) {
                    j.c h2 = M2.h();
                    if (h2 != null && h2.a(this)) {
                        return;
                    }
                }
                if (this.o != null) {
                    J().startActivity(this.o);
                }
            }
        }
    }

    public Context J() {
        return this.f817a;
    }

    public SharedPreferences K() {
        if (this.f818b == null || s() != null) {
            return null;
        }
        return this.f818b.c();
    }

    /* access modifiers changed from: protected */
    public void L() {
        a aVar = this.I;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public j M() {
        return this.f818b;
    }

    public void N() {
        b();
    }

    public void O() {
        c();
        this.L = true;
    }

    /* access modifiers changed from: package-private */
    public final void P() {
        this.L = false;
    }

    public PreferenceGroup Q() {
        return this.K;
    }

    /* access modifiers changed from: protected */
    public void R() {
        c();
    }

    /* access modifiers changed from: package-private */
    public StringBuilder S() {
        StringBuilder sb = new StringBuilder();
        CharSequence x2 = x();
        if (!TextUtils.isEmpty(x2)) {
            sb.append(x2);
            sb.append(' ');
        }
        CharSequence n2 = n();
        if (!TextUtils.isEmpty(n2)) {
            sb.append(n2);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    /* renamed from: a */
    public int compareTo(Preference preference) {
        int i2 = this.h;
        int i3 = preference.h;
        if (i2 != i3) {
            return i2 - i3;
        }
        CharSequence charSequence = this.j;
        CharSequence charSequence2 = preference.j;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.j.toString());
    }

    /* access modifiers changed from: protected */
    public Object a(TypedArray typedArray, int i2) {
        return null;
    }

    public void a(int i2) {
        this.G = i2;
    }

    public void a(Intent intent) {
        this.o = intent;
    }

    public void a(Drawable drawable) {
        if (this.m != drawable) {
            this.m = drawable;
            this.l = 0;
            i();
        }
    }

    public void a(Bundle bundle) {
        b(bundle);
    }

    /* access modifiers changed from: protected */
    public void a(Parcelable parcelable) {
        this.M = true;
        if (parcelable != BaseSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    /* access modifiers changed from: protected */
    public void a(View view) {
        I();
    }

    @Deprecated
    public void a(androidx.core.g.a.d dVar) {
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        this.I = aVar;
    }

    public void a(b bVar) {
        this.f = bVar;
    }

    public void a(c cVar) {
        this.g = cVar;
    }

    public final void a(e eVar) {
        this.O = eVar;
        i();
    }

    public void a(Preference preference, boolean z2) {
        if (this.w == z2) {
            this.w = !z2;
            b(j());
            i();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(PreferenceGroup preferenceGroup) {
        if (preferenceGroup == null || this.K == null) {
            this.K = preferenceGroup;
            return;
        }
        throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
    }

    /* access modifiers changed from: protected */
    public void a(j jVar) {
        this.f818b = jVar;
        if (!this.e) {
            this.d = jVar.a();
        }
        d();
    }

    /* access modifiers changed from: protected */
    public void a(j jVar, long j2) {
        this.d = j2;
        this.e = true;
        try {
            a(jVar);
        } finally {
            this.e = false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x010b  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0043  */
    public void a(l lVar) {
        Integer num;
        TextView textView;
        ImageView imageView;
        View a2;
        boolean F2;
        View view = lVar.f916a;
        view.setOnClickListener(this.P);
        view.setId(this.i);
        TextView textView2 = (TextView) lVar.a(16908304);
        int i2 = 8;
        if (textView2 != null) {
            CharSequence n2 = n();
            if (!TextUtils.isEmpty(n2)) {
                textView2.setText(n2);
                textView2.setVisibility(0);
                num = Integer.valueOf(textView2.getCurrentTextColor());
                textView = (TextView) lVar.a(16908310);
                if (textView != null) {
                    CharSequence x2 = x();
                    if (!TextUtils.isEmpty(x2)) {
                        textView.setText(x2);
                        textView.setVisibility(0);
                        if (this.B) {
                            textView.setSingleLine(this.C);
                        }
                        if (!z() && y() && num != null) {
                            textView.setTextColor(num.intValue());
                        }
                    } else {
                        textView.setVisibility(8);
                    }
                }
                imageView = (ImageView) lVar.a(16908294);
                if (imageView != null) {
                    if (!(this.l == 0 && this.m == null)) {
                        if (this.m == null) {
                            this.m = androidx.appcompat.a.a.a.b(this.f817a, this.l);
                        }
                        Drawable drawable = this.m;
                        if (drawable != null) {
                            imageView.setImageDrawable(drawable);
                        }
                    }
                    if (this.m != null) {
                        imageView.setVisibility(0);
                    } else {
                        imageView.setVisibility(this.D ? 4 : 8);
                    }
                }
                a2 = lVar.a(R.id.icon_frame);
                if (a2 == null) {
                    a2 = lVar.a(16908350);
                }
                if (a2 != null) {
                    if (this.m != null) {
                        a2.setVisibility(0);
                    } else {
                        if (this.D) {
                            i2 = 4;
                        }
                        a2.setVisibility(i2);
                    }
                }
                if (!this.F) {
                    a(view, y());
                } else {
                    a(view, true);
                }
                boolean z2 = z();
                view.setFocusable(z2);
                view.setClickable(z2);
                lVar.a(this.z);
                lVar.b(this.A);
                F2 = F();
                if (F2 && this.N == null) {
                    this.N = new d(this);
                }
                view.setOnCreateContextMenuListener(!F2 ? this.N : null);
                view.setLongClickable(F2);
                if (F2 && !z2) {
                    u.a(view, (Drawable) null);
                    return;
                }
            }
            textView2.setVisibility(8);
        }
        num = null;
        textView = (TextView) lVar.a(16908310);
        if (textView != null) {
        }
        imageView = (ImageView) lVar.a(16908294);
        if (imageView != null) {
        }
        a2 = lVar.a(R.id.icon_frame);
        if (a2 == null) {
        }
        if (a2 != null) {
        }
        if (!this.F) {
        }
        boolean z22 = z();
        view.setFocusable(z22);
        view.setClickable(z22);
        lVar.a(this.z);
        lVar.b(this.A);
        F2 = F();
        this.N = new d(this);
        view.setOnCreateContextMenuListener(!F2 ? this.N : null);
        view.setLongClickable(F2);
        if (F2) {
        }
    }

    public void a(CharSequence charSequence) {
        if (G() != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        } else if (!TextUtils.equals(this.k, charSequence)) {
            this.k = charSequence;
            i();
        }
    }

    /* access modifiers changed from: protected */
    public void a(Object obj) {
    }

    public void a(boolean z2) {
        if (this.r != z2) {
            this.r = z2;
            b(j());
            i();
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void a(boolean z2, Object obj) {
        a(obj);
    }

    public void b(int i2) {
        if (i2 != this.h) {
            this.h = i2;
            L();
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Bundle bundle) {
        if (C()) {
            this.M = false;
            Parcelable k2 = k();
            if (!this.M) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            } else if (k2 != null) {
                bundle.putParcelable(this.n, k2);
            }
        }
    }

    public void b(Preference preference, boolean z2) {
        if (this.x == z2) {
            this.x = !z2;
            b(j());
            i();
        }
    }

    public void b(CharSequence charSequence) {
        if ((charSequence == null && this.j != null) || (charSequence != null && !charSequence.equals(this.j))) {
            this.j = charSequence;
            i();
        }
    }

    public void b(boolean z2) {
        List<Preference> list = this.J;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                list.get(i2).a(this, z2);
            }
        }
    }

    public boolean b(Object obj) {
        b bVar = this.f;
        return bVar == null || bVar.onPreferenceChange(this, obj);
    }

    public boolean b(Set<String> set) {
        if (!E()) {
            return false;
        }
        if (set.equals(c((Set<String>) null))) {
            return true;
        }
        e s2 = s();
        if (s2 != null) {
            s2.a(this.n, set);
        } else {
            SharedPreferences.Editor e2 = this.f818b.e();
            e2.putStringSet(this.n, set);
            a(e2);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public <T extends Preference> T c(String str) {
        j jVar = this.f818b;
        if (jVar == null) {
            return null;
        }
        return jVar.a((CharSequence) str);
    }

    public Set<String> c(Set<String> set) {
        if (!E()) {
            return set;
        }
        e s2 = s();
        return s2 != null ? s2.b(this.n, set) : this.f818b.c().getStringSet(this.n, set);
    }

    public void c(int i2) {
        b((CharSequence) this.f817a.getString(i2));
    }

    public void c(Bundle bundle) {
        d(bundle);
    }

    public void c(Object obj) {
        this.v = obj;
    }

    /* access modifiers changed from: protected */
    public boolean c(boolean z2) {
        if (!E()) {
            return false;
        }
        if (z2 == d(!z2)) {
            return true;
        }
        e s2 = s();
        if (s2 != null) {
            s2.a(this.n, z2);
        } else {
            SharedPreferences.Editor e2 = this.f818b.e();
            e2.putBoolean(this.n, z2);
            a(e2);
        }
        return true;
    }

    public void d(int i2) {
        a(androidx.appcompat.a.a.a.b(this.f817a, i2));
        this.l = i2;
    }

    /* access modifiers changed from: package-private */
    public void d(Bundle bundle) {
        if (C()) {
            Parcelable parcelable = bundle.getParcelable(this.n);
            if (parcelable != null) {
                this.M = false;
                a(parcelable);
                if (!this.M) {
                    throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean d(String str) {
        if (!E()) {
            return false;
        }
        if (TextUtils.equals(str, e((String) null))) {
            return true;
        }
        e s2 = s();
        if (s2 != null) {
            s2.a(this.n, str);
        } else {
            SharedPreferences.Editor e2 = this.f818b.e();
            e2.putString(this.n, str);
            a(e2);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean d(boolean z2) {
        if (!E()) {
            return z2;
        }
        e s2 = s();
        return s2 != null ? s2.b(this.n, z2) : this.f818b.c().getBoolean(this.n, z2);
    }

    /* access modifiers changed from: protected */
    public String e(String str) {
        if (!E()) {
            return str;
        }
        e s2 = s();
        return s2 != null ? s2.b(this.n, str) : this.f818b.c().getString(this.n, str);
    }

    /* access modifiers changed from: protected */
    public boolean e(int i2) {
        if (!E()) {
            return false;
        }
        if (i2 == f(~i2)) {
            return true;
        }
        e s2 = s();
        if (s2 != null) {
            s2.a(this.n, i2);
        } else {
            SharedPreferences.Editor e2 = this.f818b.e();
            e2.putInt(this.n, i2);
            a(e2);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public int f(int i2) {
        if (!E()) {
            return i2;
        }
        e s2 = s();
        return s2 != null ? s2.b(this.n, i2) : this.f818b.c().getInt(this.n, i2);
    }

    /* access modifiers changed from: protected */
    public void g() {
    }

    /* access modifiers changed from: protected */
    public void i() {
        a aVar = this.I;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public boolean j() {
        return !y();
    }

    /* access modifiers changed from: protected */
    public Parcelable k() {
        this.M = true;
        return BaseSavedState.EMPTY_STATE;
    }

    public CharSequence n() {
        return G() != null ? G().a(this) : this.k;
    }

    public Intent q() {
        return this.o;
    }

    public String r() {
        return this.p;
    }

    public e s() {
        e eVar = this.c;
        if (eVar != null) {
            return eVar;
        }
        j jVar = this.f818b;
        if (jVar != null) {
            return jVar.b();
        }
        return null;
    }

    public Bundle t() {
        if (this.q == null) {
            this.q = new Bundle();
        }
        return this.q;
    }

    public String toString() {
        return S().toString();
    }

    public final int u() {
        return this.G;
    }

    public final int v() {
        return this.H;
    }

    public int w() {
        return this.h;
    }

    public CharSequence x() {
        return this.j;
    }

    public boolean y() {
        return this.r && this.w && this.x;
    }

    public boolean z() {
        return this.s;
    }
}
