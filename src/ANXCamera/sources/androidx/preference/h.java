package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.g.u;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.j;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PreferenceGroupAdapter */
public class h extends RecyclerView.a<l> implements Preference.a {

    /* renamed from: a  reason: collision with root package name */
    private PreferenceGroup f845a;

    /* renamed from: b  reason: collision with root package name */
    private List<Preference> f846b;
    private List<Preference> c;
    private List<a> d;
    private Handler e;
    private Runnable f = new Runnable() {
        public void run() {
            h.this.a();
        }
    };

    /* compiled from: PreferenceGroupAdapter */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        int f852a;

        /* renamed from: b  reason: collision with root package name */
        int f853b;
        String c;

        a(Preference preference) {
            this.c = preference.getClass().getName();
            this.f852a = preference.u();
            this.f853b = preference.v();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f852a == aVar.f852a && this.f853b == aVar.f853b && TextUtils.equals(this.c, aVar.c);
        }

        public int hashCode() {
            return ((((527 + this.f852a) * 31) + this.f853b) * 31) + this.c.hashCode();
        }
    }

    public h(PreferenceGroup preferenceGroup) {
        this.f845a = preferenceGroup;
        this.e = new Handler();
        this.f845a.a((Preference.a) this);
        this.f846b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f845a;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            a(((PreferenceScreen) preferenceGroup2).l());
        } else {
            a(true);
        }
        a();
    }

    private b a(final PreferenceGroup preferenceGroup, List<Preference> list) {
        b bVar = new b(preferenceGroup.J(), list, preferenceGroup.E_());
        bVar.a((Preference.c) new Preference.c() {
            public boolean onPreferenceClick(Preference preference) {
                preferenceGroup.g(Integer.MAX_VALUE);
                h.this.b(preference);
                PreferenceGroup.a f = preferenceGroup.f();
                if (f == null) {
                    return true;
                }
                f.a();
                return true;
            }
        });
        return bVar;
    }

    private List<Preference> a(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int c2 = preferenceGroup.c();
        int i = 0;
        for (int i2 = 0; i2 < c2; i2++) {
            Preference h = preferenceGroup.h(i2);
            if (h.A()) {
                if (!b(preferenceGroup) || i < preferenceGroup.b()) {
                    arrayList.add(h);
                } else {
                    arrayList2.add(h);
                }
                if (!(h instanceof PreferenceGroup)) {
                    i++;
                } else {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) h;
                    if (!preferenceGroup2.e()) {
                        continue;
                    } else if (!b(preferenceGroup) || !b(preferenceGroup2)) {
                        for (Preference next : a(preferenceGroup2)) {
                            if (!b(preferenceGroup) || i < preferenceGroup.b()) {
                                arrayList.add(next);
                            } else {
                                arrayList2.add(next);
                            }
                            i++;
                        }
                    } else {
                        throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                    }
                }
            }
        }
        if (b(preferenceGroup) && i > preferenceGroup.b()) {
            arrayList.add(a(preferenceGroup, (List<Preference>) arrayList2));
        }
        return arrayList;
    }

    private void a(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.h();
        int c2 = preferenceGroup.c();
        for (int i = 0; i < c2; i++) {
            Preference h = preferenceGroup.h(i);
            list.add(h);
            a aVar = new a(h);
            if (!this.d.contains(aVar)) {
                this.d.add(aVar);
            }
            if (h instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) h;
                if (preferenceGroup2.e()) {
                    a(list, preferenceGroup2);
                }
            }
            h.a((Preference.a) this);
        }
    }

    private boolean b(PreferenceGroup preferenceGroup) {
        return preferenceGroup.b() != Integer.MAX_VALUE;
    }

    public Preference a(int i) {
        if (i < 0 || i >= b()) {
            return null;
        }
        return this.c.get(i);
    }

    /* renamed from: a */
    public l b(ViewGroup viewGroup, int i) {
        a aVar = this.d.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R.styleable.BackgroundStyle);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = androidx.appcompat.a.a.a.b(viewGroup.getContext(), 17301602);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(aVar.f852a, viewGroup, false);
        if (inflate.getBackground() == null) {
            u.a(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup2 != null) {
            if (aVar.f853b != 0) {
                from.inflate(aVar.f853b, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new l(inflate);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        for (Preference a2 : this.f846b) {
            a2.a((Preference.a) null);
        }
        this.f846b = new ArrayList(this.f846b.size());
        a(this.f846b, this.f845a);
        final List<Preference> list = this.c;
        final List<Preference> a3 = a(this.f845a);
        this.c = a3;
        j M = this.f845a.M();
        if (M == null || M.g() == null) {
            e();
        } else {
            final j.d g = M.g();
            f.a(new f.a() {
                public int a() {
                    return list.size();
                }

                public boolean a(int i, int i2) {
                    return g.a((Preference) list.get(i), (Preference) a3.get(i2));
                }

                public int b() {
                    return a3.size();
                }

                public boolean b(int i, int i2) {
                    return g.b((Preference) list.get(i), (Preference) a3.get(i2));
                }
            }).a((RecyclerView.a) this);
        }
        for (Preference P : this.f846b) {
            P.P();
        }
    }

    public void a(Preference preference) {
        int indexOf = this.c.indexOf(preference);
        if (indexOf != -1) {
            a(indexOf, (Object) preference);
        }
    }

    public void a(l lVar, int i) {
        a(i).a(lVar);
    }

    public int b() {
        return this.c.size();
    }

    public long b(int i) {
        if (!c()) {
            return -1;
        }
        return a(i).E_();
    }

    public void b(Preference preference) {
        this.e.removeCallbacks(this.f);
        this.e.post(this.f);
    }

    public int c(int i) {
        a aVar = new a(a(i));
        int indexOf = this.d.indexOf(aVar);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.d.size();
        this.d.add(aVar);
        return size;
    }
}
