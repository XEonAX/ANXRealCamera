package com.color.support.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.l;
import color.support.v7.appcompat.R;
import com.color.support.widget.ColorSwitch;

public class ColorSwitchPreferenceCompat extends SwitchPreferenceCompat {

    /* renamed from: b  reason: collision with root package name */
    private final a f1532b;
    private boolean c;
    private Drawable d;
    private boolean e;
    private ColorSwitch f;

    private class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ColorSwitchPreferenceCompat.this.b() != z) {
                if (!ColorSwitchPreferenceCompat.this.d(Boolean.valueOf(z))) {
                    compoundButton.setChecked(!z);
                } else {
                    ColorSwitchPreferenceCompat.this.e(z);
                }
            }
        }
    }

    public ColorSwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceCompatStyle);
    }

    public ColorSwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ColorSwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f1532b = new a();
        this.c = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i, 0);
        this.c = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.c);
        this.d = obtainStyledAttributes.getDrawable(R.styleable.ColorPreference_colorDividerDrawable);
        this.e = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorEnalbeClickSpan, false);
        obtainStyledAttributes.recycle();
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
        }
        View a3 = lVar.a(R.id.switchWidget);
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
            colorSwitch2.setOnCheckedChangeListener(this.f1532b);
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
    }

    /* access modifiers changed from: protected */
    public void g() {
        ColorSwitch colorSwitch = this.f;
        if (colorSwitch != null) {
            colorSwitch.setShouldPlaySound(true);
        }
        super.g();
    }
}
