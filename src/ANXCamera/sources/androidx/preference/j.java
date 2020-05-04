package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: PreferenceManager */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private Context f858a;

    /* renamed from: b  reason: collision with root package name */
    private long f859b = 0;
    private SharedPreferences c;
    private e d;
    private SharedPreferences.Editor e;
    private boolean f;
    private String g;
    private int h;
    private int i = 0;
    private PreferenceScreen j;
    private d k;
    private c l;
    private a m;
    private b n;

    /* compiled from: PreferenceManager */
    public interface a {
        void b(Preference preference);
    }

    /* compiled from: PreferenceManager */
    public interface b {
        void b(PreferenceScreen preferenceScreen);
    }

    /* compiled from: PreferenceManager */
    public interface c {
        boolean a(Preference preference);
    }

    /* compiled from: PreferenceManager */
    public static abstract class d {
        public abstract boolean a(Preference preference, Preference preference2);

        public abstract boolean b(Preference preference, Preference preference2);
    }

    public j(Context context) {
        this.f858a = context;
        a(a(context));
    }

    private static String a(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public static void a(Context context, int i2, boolean z) {
        a(context, a(context), j(), i2, z);
    }

    public static void a(Context context, String str, int i2, int i3, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("_has_set_default_values", 0);
        if (z || !sharedPreferences.getBoolean("_has_set_default_values", false)) {
            j jVar = new j(context);
            jVar.a(str);
            jVar.a(i2);
            jVar.a(context, i3, (PreferenceScreen) null);
            sharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
        }
    }

    private void a(boolean z) {
        if (!z) {
            SharedPreferences.Editor editor = this.e;
            if (editor != null) {
                editor.apply();
            }
        }
        this.f = z;
    }

    private static int j() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public long a() {
        long j2;
        synchronized (this) {
            j2 = this.f859b;
            this.f859b = 1 + j2;
        }
        return j2;
    }

    public <T extends Preference> T a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.j;
        if (preferenceScreen == null) {
            return null;
        }
        return preferenceScreen.c(charSequence);
    }

    public PreferenceScreen a(Context context, int i2, PreferenceScreen preferenceScreen) {
        a(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new i(context, this).a(i2, (PreferenceGroup) preferenceScreen);
        preferenceScreen2.a(this);
        a(false);
        return preferenceScreen2;
    }

    public void a(int i2) {
        this.h = i2;
        this.c = null;
    }

    public void a(Preference preference) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.b(preference);
        }
    }

    public void a(a aVar) {
        this.m = aVar;
    }

    public void a(b bVar) {
        this.n = bVar;
    }

    public void a(c cVar) {
        this.l = cVar;
    }

    public void a(String str) {
        this.g = str;
        this.c = null;
    }

    public boolean a(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.j;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.O();
        }
        this.j = preferenceScreen;
        return true;
    }

    public e b() {
        return this.d;
    }

    public SharedPreferences c() {
        if (b() != null) {
            return null;
        }
        if (this.c == null) {
            this.c = (this.i != 1 ? this.f858a : androidx.core.a.a.a(this.f858a)).getSharedPreferences(this.g, this.h);
        }
        return this.c;
    }

    public PreferenceScreen d() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public SharedPreferences.Editor e() {
        if (this.d != null) {
            return null;
        }
        if (!this.f) {
            return c().edit();
        }
        if (this.e == null) {
            this.e = c().edit();
        }
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public boolean f() {
        return !this.f;
    }

    public d g() {
        return this.k;
    }

    public c h() {
        return this.l;
    }

    public b i() {
        return this.n;
    }
}
