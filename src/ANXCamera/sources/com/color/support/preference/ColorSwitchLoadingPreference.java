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

public class ColorSwitchLoadingPreference extends SwitchPreferenceCompat {

    /* renamed from: b  reason: collision with root package name */
    View f1524b;
    private ColorSwitch c;
    private final a d;
    private boolean e;
    private Drawable f;
    private boolean g;
    private ColorSwitch.a h;

    private class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ColorSwitchLoadingPreference.this.d(Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                ColorSwitchLoadingPreference.this.e(z);
            }
        }
    }

    public ColorSwitchLoadingPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.colorSwitchLoadPreferenceStyle);
    }

    public ColorSwitchLoadingPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ColorSwitchLoadingPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.d = new a();
        this.e = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPreference, i, 0);
        this.e = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorShowDivider, this.e);
        this.f = obtainStyledAttributes.getDrawable(R.styleable.ColorPreference_colorDividerDrawable);
        this.g = obtainStyledAttributes.getBoolean(R.styleable.ColorPreference_colorEnalbeClickSpan, false);
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
            a2.setHapticFeedbackEnabled(false);
        }
        this.f1524b = lVar.a(R.id.switchWidget);
        View view = this.f1524b;
        if (view instanceof ColorSwitch) {
            ColorSwitch colorSwitch = (ColorSwitch) view;
            colorSwitch.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) null);
            this.c = colorSwitch;
        }
        super.a(lVar);
        View view2 = this.f1524b;
        if (view2 instanceof ColorSwitch) {
            ColorSwitch colorSwitch2 = (ColorSwitch) view2;
            colorSwitch2.setLoadingStyle(true);
            colorSwitch2.d();
            colorSwitch2.setOnLoadingStateChangedListener(this.h);
            colorSwitch2.setOnCheckedChangeListener(this.d);
        }
        if (this.g) {
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
        ColorSwitch colorSwitch = this.c;
        if (colorSwitch != null) {
            colorSwitch.setShouldPlaySound(true);
            this.c.setTactileFeedbackEnabled(true);
            this.c.b();
        }
    }
}
