package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.preference.SwitchPreference;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.widget.ColorRoundImageView;
import com.color.support.widget.ColorSwitch;

public class ColorSwitchPreference extends SwitchPreference {

    /* renamed from: b  reason: collision with root package name */
    private final a f1528b;
    private boolean c;
    private Drawable d;
    private boolean e;
    private ColorSwitch f;
    private boolean g;
    private int h;
    private float i;
    private int j;
    private int k;
    private CharSequence l;

    private class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ColorSwitchPreference.this.b() != z) {
                if (!ColorSwitchPreference.this.d(Boolean.valueOf(z))) {
                    compoundButton.setChecked(!z);
                } else {
                    ColorSwitchPreference.this.e(z);
                }
            }
        }
    }

    public ColorSwitchPreference(Context context) {
        this(context, (AttributeSet) null);
    }

    public ColorSwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceStyle);
    }

    public ColorSwitchPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ColorSwitchPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.f1528b = new a();
        this.c = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i2, 0);
        this.c = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.c);
        this.d = obtainStyledAttributes.getDrawable(R.styleable.ColorPreference_colorDividerDrawable);
        this.e = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorEnalbeClickSpan, false);
        this.g = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_hasBorder, false);
        this.h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorPreference_preference_icon_radius, 14);
        this.l = obtainStyledAttributes.getText(R.styleable.ColorPreference_colorAssignment);
        obtainStyledAttributes.recycle();
        this.i = context.getResources().getDisplayMetrics().density;
        float f2 = this.i;
        this.j = (int) ((14.0f * f2) / 3.0f);
        this.k = (int) ((f2 * 36.0f) / 3.0f);
    }

    /* access modifiers changed from: private */
    public boolean d(Object obj) {
        if (H() == null) {
            return true;
        }
        return H().onPreferenceChange(this, obj);
    }

    public void a(l lVar) {
        View a2 = lVar.a(R.id.color_preference);
        if (a2 != null) {
            a2.setSoundEffectsEnabled(false);
            a2.setHapticFeedbackEnabled(false);
        }
        View a3 = lVar.a(16908352);
        boolean z = a3 instanceof ColorSwitch;
        if (z) {
            ColorSwitch colorSwitch = (ColorSwitch) a3;
            colorSwitch.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) null);
            this.f = colorSwitch;
        }
        super.a(lVar);
        if (z) {
            ColorSwitch colorSwitch2 = (ColorSwitch) a3;
            colorSwitch2.d();
            colorSwitch2.setOnCheckedChangeListener(this.f1528b);
        }
        if (this.e) {
            final TextView textView = (TextView) lVar.a(16908304);
            if (textView != null) {
                textView.setHighlightColor(J().getResources().getColor(17170445));
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                textView.setOnTouchListener(new View.OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        int actionMasked = motionEvent.getActionMasked();
                        int selectionStart = textView.getSelectionStart();
                        int selectionEnd = textView.getSelectionEnd();
                        int offsetForPosition = textView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                        boolean z = selectionStart == selectionEnd || offsetForPosition <= selectionStart || offsetForPosition >= selectionEnd;
                        if (actionMasked != 0) {
                            if (actionMasked == 1 || actionMasked == 3) {
                                textView.setPressed(false);
                                textView.postInvalidateDelayed(70);
                            }
                        } else if (z) {
                            return false;
                        } else {
                            textView.setPressed(true);
                            textView.invalidate();
                        }
                        return false;
                    }
                });
            }
        }
        View findViewById = lVar.f916a.findViewById(16908294);
        if (findViewById != null && (findViewById instanceof ColorRoundImageView)) {
            if (findViewById.getHeight() != 0) {
                Drawable drawable = ((ColorRoundImageView) findViewById).getDrawable();
                if (drawable != null) {
                    this.h = drawable.getIntrinsicHeight() / 6;
                    int i2 = this.h;
                    int i3 = this.j;
                    if (i2 < i3) {
                        this.h = i3;
                    } else {
                        int i4 = this.k;
                        if (i2 > i4) {
                            this.h = i4;
                        }
                    }
                }
            }
            ColorRoundImageView colorRoundImageView = (ColorRoundImageView) findViewById;
            colorRoundImageView.setHasBorder(this.g);
            colorRoundImageView.setBorderRectRadius(this.h);
        }
        TextView textView2 = (TextView) lVar.f916a.findViewById(R.id.assignment);
        if (textView2 != null) {
            CharSequence c2 = c();
            if (!TextUtils.isEmpty(c2)) {
                textView2.setText(c2);
                textView2.setVisibility(0);
                return;
            }
            textView2.setVisibility(8);
        }
    }

    public CharSequence c() {
        return this.l;
    }

    /* access modifiers changed from: protected */
    public void g() {
        g(true);
        h(true);
        super.g();
    }

    public void g(boolean z) {
        ColorSwitch colorSwitch = this.f;
        if (colorSwitch != null) {
            colorSwitch.setShouldPlaySound(z);
        }
    }

    public void h(boolean z) {
        ColorSwitch colorSwitch = this.f;
        if (colorSwitch != null) {
            colorSwitch.setTactileFeedbackEnabled(z);
        }
    }
}
