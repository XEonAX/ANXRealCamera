package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.b.g;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class PreferenceGroup extends Preference {

    /* renamed from: a  reason: collision with root package name */
    final g<String, Long> f821a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f822b;
    private List<Preference> c;
    private boolean d;
    private int e;
    private boolean f;
    private int g;
    private a h;
    private final Runnable i;

    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int mInitialExpandedChildrenCount;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mInitialExpandedChildrenCount = parcel.readInt();
        }

        SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.mInitialExpandedChildrenCount = i;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mInitialExpandedChildrenCount);
        }
    }

    public interface a {
        void a();
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f821a = new g<>();
        this.f822b = new Handler();
        this.d = true;
        this.e = 0;
        this.f = false;
        this.g = Integer.MAX_VALUE;
        this.h = null;
        this.i = new Runnable() {
            public void run() {
                synchronized (this) {
                    PreferenceGroup.this.f821a.clear();
                }
            }
        };
        this.c = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PreferenceGroup, i2, i3);
        this.d = androidx.core.a.a.g.a(obtainStyledAttributes, R.styleable.PreferenceGroup_orderingFromXml, R.styleable.PreferenceGroup_orderingFromXml, true);
        if (obtainStyledAttributes.hasValue(R.styleable.PreferenceGroup_initialExpandedChildrenCount)) {
            g(androidx.core.a.a.g.a(obtainStyledAttributes, R.styleable.PreferenceGroup_initialExpandedChildrenCount, R.styleable.PreferenceGroup_initialExpandedChildrenCount, Integer.MAX_VALUE));
        }
        obtainStyledAttributes.recycle();
    }

    private boolean f(Preference preference) {
        boolean remove;
        synchronized (this) {
            preference.R();
            if (preference.Q() == this) {
                preference.a((PreferenceGroup) null);
            }
            remove = this.c.remove(preference);
            if (remove) {
                String B = preference.B();
                if (B != null) {
                    this.f821a.put(B, Long.valueOf(preference.E_()));
                    this.f822b.removeCallbacks(this.i);
                    this.f822b.post(this.i);
                }
                if (this.f) {
                    preference.O();
                }
            }
        }
        return remove;
    }

    public void N() {
        super.N();
        this.f = true;
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            h(i2).N();
        }
    }

    public void O() {
        super.O();
        this.f = false;
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            h(i2).O();
        }
    }

    /* access modifiers changed from: protected */
    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.g = savedState.mInitialExpandedChildrenCount;
        super.a(savedState.getSuperState());
    }

    public int b() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public void b(Bundle bundle) {
        super.b(bundle);
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            h(i2).b(bundle);
        }
    }

    public void b(Preference preference) {
        c(preference);
    }

    public void b(boolean z) {
        super.b(z);
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            h(i2).b(this, z);
        }
    }

    public int c() {
        return this.c.size();
    }

    public <T extends Preference> T c(CharSequence charSequence) {
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        } else if (TextUtils.equals(B(), charSequence)) {
            return this;
        } else {
            int c2 = c();
            for (int i2 = 0; i2 < c2; i2++) {
                T h2 = h(i2);
                if (TextUtils.equals(h2.B(), charSequence)) {
                    return h2;
                }
                if (h2 instanceof PreferenceGroup) {
                    T c3 = ((PreferenceGroup) h2).c(charSequence);
                    if (c3 != null) {
                        return c3;
                    }
                }
            }
            return null;
        }
    }

    public boolean c(Preference preference) {
        long j;
        if (this.c.contains(preference)) {
            return true;
        }
        if (preference.B() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.Q() != null) {
                preferenceGroup = preferenceGroup.Q();
            }
            String B = preference.B();
            if (preferenceGroup.c((CharSequence) B) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + B + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.w() == Integer.MAX_VALUE) {
            if (this.d) {
                int i2 = this.e;
                this.e = i2 + 1;
                preference.b(i2);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).e(this.d);
            }
        }
        int binarySearch = Collections.binarySearch(this.c, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * -1) - 1;
        }
        if (!e(preference)) {
            return false;
        }
        synchronized (this) {
            this.c.add(binarySearch, preference);
        }
        j M = M();
        String B2 = preference.B();
        if (B2 == null || !this.f821a.containsKey(B2)) {
            j = M.a();
        } else {
            j = this.f821a.get(B2).longValue();
            this.f821a.remove(B2);
        }
        preference.a(M, j);
        preference.a(this);
        if (this.f) {
            preference.N();
        }
        L();
        return true;
    }

    public void d() {
        synchronized (this) {
            List<Preference> list = this.c;
            for (int size = list.size() - 1; size >= 0; size--) {
                f(list.get(0));
            }
        }
        L();
    }

    /* access modifiers changed from: protected */
    public void d(Bundle bundle) {
        super.d(bundle);
        int c2 = c();
        for (int i2 = 0; i2 < c2; i2++) {
            h(i2).d(bundle);
        }
    }

    public boolean d(Preference preference) {
        boolean f2 = f(preference);
        L();
        return f2;
    }

    public void e(boolean z) {
        this.d = z;
    }

    /* access modifiers changed from: protected */
    public boolean e() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean e(Preference preference) {
        preference.b(this, j());
        return true;
    }

    public a f() {
        return this.h;
    }

    public void g(int i2) {
        if (i2 != Integer.MAX_VALUE && !C()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.g = i2;
    }

    public Preference h(int i2) {
        return this.c.get(i2);
    }

    /* access modifiers changed from: package-private */
    public void h() {
        synchronized (this) {
            Collections.sort(this.c);
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable k() {
        return new SavedState(super.k(), this.g);
    }
}
