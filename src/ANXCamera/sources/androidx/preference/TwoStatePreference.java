package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;

public abstract class TwoStatePreference extends Preference {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f834a;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence f835b;
    private CharSequence c;
    private boolean d;
    private boolean e;

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
        boolean mChecked;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mChecked = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mChecked ? 1 : 0);
        }
    }

    public TwoStatePreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* access modifiers changed from: protected */
    public Object a(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    /* access modifiers changed from: protected */
    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        e(savedState.mChecked);
    }

    /* access modifiers changed from: protected */
    public void a(Object obj) {
        if (obj == null) {
            obj = false;
        }
        e(d(((Boolean) obj).booleanValue()));
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0049  */
    /* JADX WARNING: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    public void b(View view) {
        int i;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            boolean z = true;
            if (!this.f834a || TextUtils.isEmpty(this.f835b)) {
                if (!this.f834a && !TextUtils.isEmpty(this.c)) {
                    textView.setText(this.c);
                }
                if (z) {
                    CharSequence n = n();
                    if (!TextUtils.isEmpty(n)) {
                        textView.setText(n);
                        z = false;
                    }
                }
                i = 8;
                if (!z) {
                    i = 0;
                }
                if (i == textView.getVisibility()) {
                    textView.setVisibility(i);
                    return;
                }
                return;
            }
            textView.setText(this.f835b);
            z = false;
            if (z) {
            }
            i = 8;
            if (!z) {
            }
            if (i == textView.getVisibility()) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(l lVar) {
        b(lVar.a(16908304));
    }

    public boolean b() {
        return this.f834a;
    }

    public void e(CharSequence charSequence) {
        this.f835b = charSequence;
        if (b()) {
            i();
        }
    }

    public void e(boolean z) {
        boolean z2 = this.f834a != z;
        if (z2 || !this.d) {
            this.f834a = z;
            this.d = true;
            c(z);
            if (z2) {
                b(j());
                i();
            }
        }
    }

    public void f(CharSequence charSequence) {
        this.c = charSequence;
        if (!b()) {
            i();
        }
    }

    public void f(boolean z) {
        this.e = z;
    }

    /* access modifiers changed from: protected */
    public void g() {
        super.g();
        boolean z = !b();
        if (b((Object) Boolean.valueOf(z))) {
            e(z);
        }
    }

    public boolean j() {
        return (this.e ? this.f834a : !this.f834a) || super.j();
    }

    /* access modifiers changed from: protected */
    public Parcelable k() {
        Parcelable k = super.k();
        if (D()) {
            return k;
        }
        SavedState savedState = new SavedState(k);
        savedState.mChecked = b();
        return savedState;
    }
}
