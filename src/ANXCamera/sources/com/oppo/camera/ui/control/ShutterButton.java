package com.oppo.camera.ui.control;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.oppo.camera.ui.RotateImageView;
import com.oppo.camera.ui.d;

public class ShutterButton extends RotateImageView {

    /* renamed from: a  reason: collision with root package name */
    protected OnShutterButtonListener f2606a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2607b;
    /* access modifiers changed from: private */
    public boolean c = false;
    private d d = null;
    private GestureDetector e;
    private MyGestureListener f = new MyGestureListener();

    private class MyGestureListener implements GestureDetector.OnGestureListener {
        private MyGestureListener() {
        }

        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
            boolean unused = ShutterButton.this.c = true;
            if (ShutterButton.this.f2606a != null) {
                ShutterButton.this.f2606a.b(ShutterButton.this);
            }
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public interface OnShutterButtonListener {
        void H();

        void I();

        void a(ShutterButton shutterButton);

        void a(ShutterButton shutterButton, boolean z);

        void b(ShutterButton shutterButton);

        void c(ShutterButton shutterButton);

        boolean u();
    }

    public ShutterButton(Context context) {
        super(context);
    }

    public ShutterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShutterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        OnShutterButtonListener onShutterButtonListener = this.f2606a;
        if (onShutterButtonListener != null) {
            onShutterButtonListener.a(this, z);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        d dVar = this.d;
        if (dVar != null && dVar.d()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 5 || actionMasked == 0) {
                return false;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        final boolean isPressed = isPressed();
        if (isPressed != this.f2607b) {
            if (!isPressed) {
                post(new Runnable() {
                    public void run() {
                        ShutterButton.this.a(isPressed);
                    }
                });
            } else {
                a(isPressed);
            }
            this.f2607b = isPressed;
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.oppo.camera.d.a("ShutterButton", "onTouchEvent, isEnabled: " + isEnabled() + ", event.getAction: " + motionEvent.getAction() + ", getY: " + motionEvent.getY() + ", getRawY: " + motionEvent.getRawY());
        OnShutterButtonListener onShutterButtonListener = this.f2606a;
        if (onShutterButtonListener != null && !onShutterButtonListener.u()) {
            return super.onTouchEvent(motionEvent);
        }
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.c) {
            OnShutterButtonListener onShutterButtonListener2 = this.f2606a;
            if (onShutterButtonListener2 != null) {
                onShutterButtonListener2.c(this);
            }
            this.c = false;
        }
        if (motionEvent.getAction() == 0) {
            OnShutterButtonListener onShutterButtonListener3 = this.f2606a;
            if (onShutterButtonListener3 != null) {
                onShutterButtonListener3.H();
            }
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            OnShutterButtonListener onShutterButtonListener4 = this.f2606a;
            if (onShutterButtonListener4 != null) {
                onShutterButtonListener4.I();
            }
        }
        if (this.e == null) {
            this.e = new GestureDetector(getContext(), this.f);
        }
        if (isLongClickable() || motionEvent.getAction() == 1) {
            this.e.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        OnShutterButtonListener onShutterButtonListener = this.f2606a;
        if (onShutterButtonListener != null) {
            onShutterButtonListener.a(this);
        }
        return performClick;
    }

    public boolean performLongClick() {
        return false;
    }

    public void setCameraUIListener(d dVar) {
        this.d = dVar;
    }

    public void setOnShutterButtonListener(OnShutterButtonListener onShutterButtonListener) {
        this.f2606a = onShutterButtonListener;
    }
}
