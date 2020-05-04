package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;

@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f671a;

    /* renamed from: b  reason: collision with root package name */
    private Context f672b;
    private h c;
    private int d;
    private TabHost.OnTabChangeListener e;
    private a f;
    private boolean g;

    static class SavedState extends View.BaseSavedState {
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
        String curTab;

        SavedState(Parcel parcel) {
            super(parcel);
            this.curTab = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.curTab);
        }
    }

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f673a;

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f674b;
        final Bundle c;
        Fragment d;
    }

    private a a(String str) {
        int size = this.f671a.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f671a.get(i);
            if (aVar.f673a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    private k a(String str, k kVar) {
        a a2 = a(str);
        if (this.f != a2) {
            if (kVar == null) {
                kVar = this.c.a();
            }
            a aVar = this.f;
            if (!(aVar == null || aVar.d == null)) {
                kVar.b(this.f.d);
            }
            if (a2 != null) {
                if (a2.d == null) {
                    a2.d = this.c.f().c(this.f672b.getClassLoader(), a2.f674b.getName());
                    a2.d.g(a2.c);
                    kVar.a(this.d, a2.d, a2.f673a);
                } else {
                    kVar.c(a2.d);
                }
            }
            this.f = a2;
        }
        return kVar;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f671a.size();
        k kVar = null;
        for (int i = 0; i < size; i++) {
            a aVar = this.f671a.get(i);
            aVar.d = this.c.a(aVar.f673a);
            if (aVar.d != null && !aVar.d.x()) {
                if (aVar.f673a.equals(currentTabTag)) {
                    this.f = aVar;
                } else {
                    if (kVar == null) {
                        kVar = this.c.a();
                    }
                    kVar.b(aVar.d);
                }
            }
        }
        this.g = true;
        k a2 = a(currentTabTag, kVar);
        if (a2 != null) {
            a2.b();
            this.c.b();
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.curTab);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.curTab = getCurrentTabTag();
        return savedState;
    }

    @Deprecated
    public void onTabChanged(String str) {
        if (this.g) {
            k a2 = a(str, (k) null);
            if (a2 != null) {
                a2.b();
            }
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.e;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.e = onTabChangeListener;
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
