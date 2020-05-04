package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.a.a.g;
import androidx.preference.Preference;

public class ListPreference extends DialogPreference {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence[] f812a;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence[] f813b;
    private String c;
    private String d;
    private boolean e;

    private static class SavedState extends Preference.BaseSavedState {
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
        String mValue;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mValue = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mValue);
        }
    }

    public static final class a implements Preference.e<ListPreference> {

        /* renamed from: a  reason: collision with root package name */
        private static a f814a;

        private a() {
        }

        public static a a() {
            if (f814a == null) {
                f814a = new a();
            }
            return f814a;
        }

        public CharSequence a(ListPreference listPreference) {
            return TextUtils.isEmpty(listPreference.p()) ? listPreference.J().getString(R.string.not_set) : listPreference.p();
        }
    }

    public ListPreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.a(context, R.attr.dialogPreferenceStyle, 16842897));
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPreference, i, i2);
        this.f812a = g.d(obtainStyledAttributes, R.styleable.ListPreference_entries, R.styleable.ListPreference_android_entries);
        this.f813b = g.d(obtainStyledAttributes, R.styleable.ListPreference_entryValues, R.styleable.ListPreference_android_entryValues);
        if (g.a(obtainStyledAttributes, R.styleable.ListPreference_useSimpleSummaryProvider, R.styleable.ListPreference_useSimpleSummaryProvider, false)) {
            a((Preference.e) a.a());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i, i2);
        this.d = g.b(obtainStyledAttributes2, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        obtainStyledAttributes2.recycle();
    }

    private int h() {
        return b(this.c);
    }

    /* access modifiers changed from: protected */
    public Object a(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    /* access modifiers changed from: protected */
    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        a(savedState.mValue);
    }

    public void a(CharSequence charSequence) {
        super.a(charSequence);
        if (charSequence == null && this.d != null) {
            this.d = null;
        } else if (charSequence != null && !charSequence.equals(this.d)) {
            this.d = charSequence.toString();
        }
    }

    /* access modifiers changed from: protected */
    public void a(Object obj) {
        a(e((String) obj));
    }

    public void a(String str) {
        boolean z = !TextUtils.equals(this.c, str);
        if (z || !this.e) {
            this.c = str;
            this.e = true;
            d(str);
            if (z) {
                i();
            }
        }
    }

    public int b(String str) {
        if (str == null) {
            return -1;
        }
        CharSequence[] charSequenceArr = this.f813b;
        if (charSequenceArr == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.f813b[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public Parcelable k() {
        Parcelable k = super.k();
        if (D()) {
            return k;
        }
        SavedState savedState = new SavedState(k);
        savedState.mValue = o();
        return savedState;
    }

    public CharSequence[] l() {
        return this.f812a;
    }

    public CharSequence[] m() {
        return this.f813b;
    }

    public CharSequence n() {
        if (G() != null) {
            return G().a(this);
        }
        Object p = p();
        CharSequence n = super.n();
        String str = this.d;
        if (str == null) {
            return n;
        }
        Object[] objArr = new Object[1];
        if (p == null) {
            p = "";
        }
        objArr[0] = p;
        String format = String.format(str, objArr);
        if (TextUtils.equals(format, n)) {
            return n;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    public String o() {
        return this.c;
    }

    public CharSequence p() {
        int h = h();
        if (h >= 0) {
            CharSequence[] charSequenceArr = this.f812a;
            if (charSequenceArr != null) {
                return charSequenceArr[h];
            }
        }
        return null;
    }
}
