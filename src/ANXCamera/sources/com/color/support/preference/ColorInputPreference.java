package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.d.d;
import com.color.support.widget.ColorEditText;

public class ColorInputPreference extends ColorPreference {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public ColorEditText f1497a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ImageView f1498b;
    /* access modifiers changed from: private */
    public boolean c;
    /* access modifiers changed from: private */
    public a d;
    /* access modifiers changed from: private */
    public CharSequence e;
    private CharSequence f;
    private Context g;
    private View h;
    private boolean i;
    /* access modifiers changed from: private */
    public boolean j;
    /* access modifiers changed from: private */
    public boolean k;

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
        String mText;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mText = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mText);
        }
    }

    private class a implements TextWatcher {
        private a() {
        }

        public void afterTextChanged(Editable editable) {
            if (!editable.toString().contains("...") && ColorInputPreference.this.k) {
                CharSequence unused = ColorInputPreference.this.e = editable.toString();
            }
            ColorInputPreference colorInputPreference = ColorInputPreference.this;
            colorInputPreference.a(true, TextUtils.isEmpty(colorInputPreference.e));
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ColorInputPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorInputPreferenceStyle);
    }

    public ColorInputPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ColorInputPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.g = context;
        this.f1497a = new ColorEditText(context, attributeSet);
        this.f1497a.setId(16908297);
        boolean z = false;
        this.f1497a.setBackgroundResource(0);
        this.f1497a.a();
        this.f1497a.setSingleLine(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorInputPreference, i2, 0);
        this.e = obtainStyledAttributes.getText(R.styleable.ColorInputPreference_colorContent);
        this.f = obtainStyledAttributes.getText(R.styleable.ColorInputPreference_colorHint);
        this.k = obtainStyledAttributes.getBoolean(R.styleable.ColorInputPreference_colorEllipsize, true);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.TextView, i2, 0);
        if (obtainStyledAttributes.getBoolean(R.styleable.TextView_android_selectAllOnFocus, false)) {
            this.f1497a.postDelayed(new Runnable() {
                public void run() {
                    ColorInputPreference.this.f1497a.selectAll();
                }
            }, 100);
        }
        obtainStyledAttributes2.recycle();
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i2, 0);
        this.i = obtainStyledAttributes3.getText(R.styleable.Preference_android_title) != null ? true : z;
        obtainStyledAttributes3.recycle();
        if (this.i) {
            this.f1497a.setGravity(8388629);
            color.support.a.a.a.a(this.f1497a, 6);
            return;
        }
        this.f1497a.setGravity(8388627);
        color.support.a.a.a.a(this.f1497a, 5);
    }

    /* access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        ImageView imageView = this.f1498b;
        if (imageView != null) {
            if (this.i) {
                imageView.setVisibility(8);
            } else if (!z || z2) {
                this.f1498b.setVisibility(4);
            } else {
                imageView.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean a(char c2) {
        return (c2 == 0 || c2 == 9 || c2 == 10 || c2 == 13 || (c2 >= ' ' && c2 <= 55295) || ((c2 >= 57344 && c2 <= 65533) || (c2 >= 0 && c2 <= 65535))) ? false : true;
    }

    /* access modifiers changed from: protected */
    public Object a(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    /* access modifiers changed from: protected */
    public void a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.a(savedState.getSuperState());
        c((CharSequence) savedState.mText);
    }

    public void a(l lVar) {
        super.a(lVar);
        this.h = lVar.a(R.id.color_preference);
        ViewGroup viewGroup = (ViewGroup) this.h.findViewById(R.id.edittext_container);
        if (viewGroup != null) {
            if (!this.f1497a.equals((EditText) viewGroup.findViewById(16908297))) {
                ViewParent parent = this.f1497a.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.f1497a);
                }
                viewGroup.removeAllViews();
                viewGroup.addView(this.f1497a, -1, -2);
            }
        }
        this.f1498b = (ImageView) this.h.findViewById(16908313);
        if (this.f1497a != null) {
            ImageView imageView = this.f1498b;
            if (imageView != null) {
                d.a(imageView, false);
                if (this.i) {
                    this.f1498b.setVisibility(8);
                } else {
                    this.f1498b.setVisibility(4);
                    this.f1497a.setTextSize(0, ((TextView) this.h.findViewById(16908310)).getTextSize());
                    this.f1498b.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            ColorInputPreference.this.f1497a.setText("");
                            ColorInputPreference.this.f1497a.requestFocus();
                            ColorInputPreference.this.f1498b.setVisibility(4);
                        }
                    });
                }
                if (this.f1497a.getTransformationMethod() instanceof PasswordTransformationMethod) {
                    this.k = false;
                }
                final CharSequence b2 = b();
                if (!TextUtils.isEmpty(b2)) {
                    this.f1497a.post(new Runnable() {
                        public void run() {
                            String str;
                            int width = (ColorInputPreference.this.f1497a.getWidth() - ColorInputPreference.this.f1497a.getCompoundPaddingLeft()) - ColorInputPreference.this.f1497a.getCompoundPaddingRight();
                            String charSequence = b2.toString();
                            int breakText = ColorInputPreference.this.f1497a.getPaint().breakText(charSequence, true, (float) width, (float[]) null);
                            if (breakText == charSequence.length() || !ColorInputPreference.this.k) {
                                boolean unused = ColorInputPreference.this.j = false;
                            } else {
                                if (ColorInputPreference.this.a(charSequence.charAt(breakText))) {
                                    str = charSequence.substring(0, breakText - 2) + "...";
                                } else {
                                    str = charSequence.substring(0, breakText - 1) + "...";
                                }
                                charSequence = str;
                                boolean unused2 = ColorInputPreference.this.j = true;
                            }
                            ColorInputPreference.this.f1497a.setText(charSequence);
                        }
                    });
                }
                CharSequence c2 = c();
                if (!TextUtils.isEmpty(c2)) {
                    this.f1497a.setHint(c2);
                }
                if (this.c) {
                    this.f1497a.requestFocus();
                } else {
                    this.f1497a.clearFocus();
                }
                this.f1497a.setEnabled(y());
                this.f1497a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    public void onFocusChange(View view, boolean z) {
                        String str;
                        EditText editText = (EditText) view;
                        boolean unused = ColorInputPreference.this.c = z;
                        if (ColorInputPreference.this.d == null) {
                            ColorInputPreference colorInputPreference = ColorInputPreference.this;
                            a unused2 = colorInputPreference.d = new a();
                        }
                        CharSequence e = ColorInputPreference.this.e;
                        boolean z2 = true;
                        if (z) {
                            if (ColorInputPreference.this.j) {
                                int selectionStart = ColorInputPreference.this.f1497a.getSelectionStart();
                                int selectionEnd = ColorInputPreference.this.f1497a.getSelectionEnd();
                                if (!(e != null && selectionStart == 0 && selectionEnd == e.length())) {
                                    z2 = false;
                                }
                                editText.setText(ColorInputPreference.this.e);
                                if (z2) {
                                    editText.selectAll();
                                }
                            }
                            editText.addTextChangedListener(ColorInputPreference.this.d);
                        } else {
                            editText.removeTextChangedListener(ColorInputPreference.this.d);
                            ColorInputPreference colorInputPreference2 = ColorInputPreference.this;
                            if (colorInputPreference2.b((Object) colorInputPreference2.e) && ColorInputPreference.this.k) {
                                ColorInputPreference colorInputPreference3 = ColorInputPreference.this;
                                colorInputPreference3.c(colorInputPreference3.e);
                            }
                            if (e != null) {
                                int width = (ColorInputPreference.this.f1497a.getWidth() - ColorInputPreference.this.f1497a.getCompoundPaddingLeft()) - ColorInputPreference.this.f1497a.getCompoundPaddingRight();
                                String charSequence = e.toString();
                                int breakText = editText.getPaint().breakText(charSequence, true, (float) width, (float[]) null);
                                if (breakText == charSequence.length() || !ColorInputPreference.this.k) {
                                    boolean unused3 = ColorInputPreference.this.j = false;
                                } else {
                                    if (ColorInputPreference.this.a(charSequence.charAt(breakText))) {
                                        str = charSequence.substring(0, breakText - 2) + "...";
                                    } else {
                                        str = charSequence.substring(0, breakText - 1) + "...";
                                    }
                                    boolean unused4 = ColorInputPreference.this.j = true;
                                    editText.setText(str);
                                }
                            }
                        }
                        ColorInputPreference colorInputPreference4 = ColorInputPreference.this;
                        colorInputPreference4.a(z, TextUtils.isEmpty(colorInputPreference4.e));
                    }
                });
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(boolean z, Object obj) {
        if (!TextUtils.isEmpty(this.e)) {
            c((CharSequence) z ? e(this.e.toString()) : (String) obj);
        }
    }

    public CharSequence b() {
        if (!this.k) {
            ColorEditText colorEditText = this.f1497a;
            if (colorEditText != null) {
                return colorEditText.getText();
            }
        }
        return this.e;
    }

    public CharSequence c() {
        return this.f;
    }

    public void c(CharSequence charSequence) {
        if (!this.k) {
            ColorEditText colorEditText = this.f1497a;
            if (colorEditText != null) {
                colorEditText.setText(charSequence);
                this.e = charSequence;
                return;
            }
        }
        if (!TextUtils.equals(this.e, charSequence)) {
            i();
        }
        boolean j2 = j();
        this.e = charSequence;
        if (charSequence != null) {
            d(charSequence.toString());
        }
        boolean j3 = j();
        if (j3 != j2) {
            b(j3);
        }
    }

    public boolean j() {
        return TextUtils.isEmpty(this.e) || super.j();
    }

    /* access modifiers changed from: protected */
    public Parcelable k() {
        Parcelable k2 = super.k();
        if (D()) {
            return k2;
        }
        SavedState savedState = new SavedState(k2);
        CharSequence charSequence = this.e;
        if (charSequence != null) {
            savedState.mText = charSequence.toString();
        }
        return savedState;
    }
}
