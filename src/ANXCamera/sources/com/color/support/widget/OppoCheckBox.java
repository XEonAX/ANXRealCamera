package com.color.support.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.widget.ba;
import androidx.appcompat.widget.f;
import color.support.v7.appcompat.R;

public class OppoCheckBox extends f {
    private static final int[] h = {R.attr.oppo_state_allSelect};
    private static final int[] i = {R.attr.oppo_state_partSelect};

    /* renamed from: a  reason: collision with root package name */
    private int f1660a;

    /* renamed from: b  reason: collision with root package name */
    private int f1661b;
    private boolean c;
    private Drawable e;
    private a f;
    private a g;

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
        int state;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.state = ((Integer) parcel.readValue((ClassLoader) null)).intValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "CompoundButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " state=" + this.state + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.state));
        }
    }

    public interface a {
        void a(OppoCheckBox oppoCheckBox, int i);
    }

    public void a() {
        int i2 = 2;
        if (this.f1660a >= 2) {
            i2 = 0;
        }
        setState(i2);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.e != null) {
            this.e.setState(getDrawableState());
            invalidate();
        }
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        if (ba.a(this)) {
            return compoundPaddingLeft;
        }
        Drawable drawable = this.e;
        return drawable != null ? compoundPaddingLeft + drawable.getIntrinsicWidth() : compoundPaddingLeft;
    }

    public int getCompoundPaddingRight() {
        int compoundPaddingRight = super.getCompoundPaddingRight();
        if (!ba.a(this)) {
            return compoundPaddingRight;
        }
        Drawable drawable = this.e;
        return drawable != null ? compoundPaddingRight + drawable.getIntrinsicWidth() : compoundPaddingRight;
    }

    @ViewDebug.ExportedProperty
    public int getState() {
        return this.f1660a;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (getState() == 1) {
            mergeDrawableStates(onCreateDrawableState, i);
        }
        if (getState() == 2) {
            mergeDrawableStates(onCreateDrawableState, h);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.e;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int i2 = 0;
            int height = gravity != 16 ? gravity != 80 ? 0 : getHeight() - intrinsicHeight : (getHeight() - intrinsicHeight) / 2;
            int i3 = intrinsicHeight + height;
            if (ba.a(this)) {
                i2 = getWidth() - intrinsicWidth;
            }
            if (ba.a(this)) {
                intrinsicWidth = getWidth();
            }
            drawable.setBounds(i2, height, intrinsicWidth, i3);
            drawable.draw(canvas);
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(OppoCheckBox.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(OppoCheckBox.class.getName());
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setState(savedState.state);
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        setFreezesText(true);
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.state = getState();
        return savedState;
    }

    public boolean performClick() {
        a();
        return super.performClick();
    }

    public void setButtonDrawable(int i2) {
        if (i2 == 0 || i2 != this.f1661b) {
            this.f1661b = i2;
            Drawable drawable = null;
            if (this.f1661b != 0) {
                drawable = getResources().getDrawable(this.f1661b);
            }
            setButtonDrawable(drawable);
        }
    }

    public void setButtonDrawable(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = this.e;
            if (drawable2 != null) {
                drawable2.setCallback((Drawable.Callback) null);
                unscheduleDrawable(this.e);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
            this.e = drawable;
            this.e.setState((int[]) null);
            setMinHeight(this.e.getIntrinsicHeight());
        }
        refreshDrawableState();
    }

    public void setOnStateChangeListener(a aVar) {
        this.f = aVar;
    }

    /* access modifiers changed from: package-private */
    public void setOnStateChangeWidgetListener(a aVar) {
        this.g = aVar;
    }

    public void setState(int i2) {
        if (this.f1660a != i2) {
            this.f1660a = i2;
            refreshDrawableState();
            if (!this.c) {
                this.c = true;
                a aVar = this.f;
                if (aVar != null) {
                    aVar.a(this, this.f1660a);
                }
                a aVar2 = this.g;
                if (aVar2 != null) {
                    aVar2.a(this, this.f1660a);
                }
                this.c = false;
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.e;
    }
}
