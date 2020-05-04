package com.color.support.widget;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.f;
import androidx.core.g.a.c;
import color.support.v7.appcompat.R;

public class ColorLoadProgress extends f {
    private static final int[] g = {R.attr.color_state_default};
    private static final int[] h = {R.attr.color_state_wait};
    private static final int[] i = {R.attr.color_state_fail};
    private static final int[] j = {R.attr.color_state_ing};
    private static final DecelerateInterpolator r = new DecelerateInterpolator();

    /* renamed from: a  reason: collision with root package name */
    public int f1569a;

    /* renamed from: b  reason: collision with root package name */
    public int f1570b;
    public int c;
    protected boolean e;
    protected float f;
    private int k;
    private Drawable l;
    private boolean m;
    private b n;
    private b o;
    private a p;
    private final AccessibilityManager q;

    /* renamed from: com.color.support.widget.ColorLoadProgress$1  reason: invalid class name */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorLoadProgress f1571a;

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1571a.f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f1571a.invalidate();
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (AnonymousClass1) null);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int mProgress;
        int mState;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mState = ((Integer) parcel.readValue((ClassLoader) null)).intValue();
            this.mProgress = ((Integer) parcel.readValue((ClassLoader) null)).intValue();
        }

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 r2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "CompoundButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " mState = " + this.mState + " mProgress = " + this.mProgress + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.mState));
            parcel.writeValue(Integer.valueOf(this.mProgress));
        }
    }

    private class a implements Runnable {
        private a() {
        }

        /* synthetic */ a(ColorLoadProgress colorLoadProgress, AnonymousClass1 r2) {
            this();
        }

        public void run() {
            ColorLoadProgress.this.sendAccessibilityEvent(4);
        }
    }

    public interface b {
        void a(ColorLoadProgress colorLoadProgress, int i);
    }

    private void b() {
        a aVar = this.p;
        if (aVar == null) {
            this.p = new a(this, (AnonymousClass1) null);
        } else {
            removeCallbacks(aVar);
        }
        postDelayed(this.p, 10);
    }

    public void a() {
        int i2 = this.f1569a;
        if (i2 == 0) {
            setState(1);
        } else if (i2 == 1) {
            setState(2);
        } else if (i2 == 2) {
            setState(1);
        } else if (i2 == 3) {
            setState(1);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2) {
        AccessibilityManager accessibilityManager = this.q;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && c.a(this.q)) {
            b();
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.l != null) {
            this.l.setState(getDrawableState());
            invalidate();
        }
    }

    public int getMax() {
        return this.c;
    }

    public int getProgress() {
        return this.f1570b;
    }

    public int getState() {
        return this.f1569a;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (getState() == 0) {
            mergeDrawableStates(onCreateDrawableState, g);
        }
        if (getState() == 1) {
            mergeDrawableStates(onCreateDrawableState, j);
        }
        if (getState() == 2) {
            mergeDrawableStates(onCreateDrawableState, h);
        }
        if (getState() == 3) {
            mergeDrawableStates(onCreateDrawableState, i);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        a aVar = this.p;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setState(savedState.mState);
        setProgress(savedState.mProgress);
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        setFreezesText(true);
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mState = getState();
        savedState.mProgress = this.f1570b;
        return savedState;
    }

    public boolean performClick() {
        a();
        return super.performClick();
    }

    public void setButtonDrawable(int i2) {
        if (i2 == 0 || i2 != this.k) {
            this.k = i2;
            Drawable drawable = null;
            if (this.k != 0) {
                drawable = getResources().getDrawable(this.k);
            }
            setButtonDrawable(drawable);
        }
    }

    public void setButtonDrawable(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = this.l;
            if (drawable2 != null) {
                drawable2.setCallback((Drawable.Callback) null);
                unscheduleDrawable(this.l);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
            this.l = drawable;
            this.l.setState((int[]) null);
            setMinHeight(this.l.getIntrinsicHeight());
        }
        refreshDrawableState();
    }

    public void setMax(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 != this.c) {
            this.c = i2;
            if (this.f1570b > i2) {
                this.f1570b = i2;
            }
            invalidate();
        }
    }

    public void setOnStateChangeListener(b bVar) {
        this.n = bVar;
    }

    /* access modifiers changed from: package-private */
    public void setOnStateChangeWidgetListener(b bVar) {
        this.o = bVar;
    }

    public void setProgress(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.c;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 != this.f1570b) {
            this.f1570b = i2;
        }
        if (this.e) {
            this.e = false;
        }
        invalidate();
        a(i2);
    }

    public void setState(int i2) {
        if (this.f1569a != i2) {
            this.f1569a = i2;
            refreshDrawableState();
            if (!this.m) {
                this.m = true;
                b bVar = this.n;
                if (bVar != null) {
                    bVar.a(this, this.f1569a);
                }
                b bVar2 = this.o;
                if (bVar2 != null) {
                    bVar2.a(this, this.f1569a);
                }
                this.m = false;
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.l;
    }
}
