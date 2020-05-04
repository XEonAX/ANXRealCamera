package com.color.support.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.g.a.d;
import androidx.customview.a.a;
import java.util.List;

public class ColorNumericKeyboard extends View {
    private AnimatorSet A;
    /* access modifiers changed from: private */
    public AnimatorSet B;
    private boolean C;
    private Animator.AnimatorListener D;
    private PatternExploreByTouchHelper E;
    private final AccessibilityManager F;

    /* renamed from: a  reason: collision with root package name */
    private Paint f1613a;

    /* renamed from: b  reason: collision with root package name */
    private Cell f1614b;
    private int c;
    private OnClickItemListener d;
    private int e;
    /* access modifiers changed from: private */
    public int f;
    private int g;
    private boolean h;
    private boolean i;
    private Cell[][] j;
    private Drawable k;
    private Drawable l;
    /* access modifiers changed from: private */
    public int[] m;
    private TextPaint n;
    private Paint.FontMetricsInt o;
    private Paint.FontMetricsInt p;
    private Paint q;
    private float r;
    private float s;
    private TextPaint t;
    private float u;
    private float v;
    private float w;
    private float x;
    /* access modifiers changed from: private */
    public SideStyle y;
    /* access modifiers changed from: private */
    public SideStyle z;

    /* renamed from: com.color.support.widget.ColorNumericKeyboard$1  reason: invalid class name */
    class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ColorNumericKeyboard f1615a;

        public void onAnimationEnd(Animator animator) {
            this.f1615a.B.start();
        }
    }

    public class Cell {

        /* renamed from: a  reason: collision with root package name */
        int f1616a;

        /* renamed from: b  reason: collision with root package name */
        int f1617b;
        String c;

        public int getColumn() {
            return this.f1617b;
        }

        public int getRow() {
            return this.f1616a;
        }

        public String toString() {
            return "row " + this.f1616a + "column " + this.f1617b;
        }
    }

    public interface OnClickItemListener {
        void a();

        void a(int i);

        void b();
    }

    @Deprecated
    public interface OnItemTouchListener {
    }

    @Deprecated
    public interface OnTouchTextListener {
    }

    @Deprecated
    public interface OnTouchUpListener {
    }

    private final class PatternExploreByTouchHelper extends a {
        final /* synthetic */ ColorNumericKeyboard c;
        private Rect d;

        private int b(float f, float f2) {
            Cell a2 = this.c.a(f, f2);
            if (a2 == null) {
                return -1;
            }
            int column = a2.getColumn() + (a2.getRow() * 3);
            if (column == 9) {
                ColorNumericKeyboard colorNumericKeyboard = this.c;
                if (colorNumericKeyboard.a(colorNumericKeyboard.y)) {
                    column = -1;
                }
            }
            if (column != 11) {
                return column;
            }
            ColorNumericKeyboard colorNumericKeyboard2 = this.c;
            if (colorNumericKeyboard2.a(colorNumericKeyboard2.z)) {
                return -1;
            }
            return column;
        }

        private Rect g(int i) {
            int i2;
            Rect rect = this.d;
            int i3 = 0;
            if (i != -1) {
                Cell a2 = this.c.a(i / 3, i % 3);
                i3 = (int) this.c.c(a2.f1617b);
                i2 = (int) this.c.d(a2.f1616a);
            } else {
                i2 = 0;
            }
            rect.left = i3 - this.c.f;
            rect.right = i3 + this.c.f;
            rect.top = i2 - this.c.f;
            rect.bottom = i2 + this.c.f;
            return rect;
        }

        /* access modifiers changed from: protected */
        public int a(float f, float f2) {
            return b(f, f2);
        }

        /* access modifiers changed from: protected */
        public void a(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.getText().add(f(i));
        }

        /* access modifiers changed from: protected */
        public void a(int i, d dVar) {
            dVar.e(f(i));
            dVar.a(d.a.e);
            dVar.f(true);
            dVar.b(g(i));
        }

        /* access modifiers changed from: protected */
        public void a(List<Integer> list) {
            for (int i = 0; i < getItemCounts(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        /* access modifiers changed from: protected */
        public boolean b(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            return e(i);
        }

        public void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
        }

        /* access modifiers changed from: package-private */
        public boolean e(int i) {
            a(i);
            if (this.c.isEnabled()) {
                this.c.b(i);
                this.c.announceForAccessibility(f(i));
            }
            a(i, 1);
            return true;
        }

        public CharSequence f(int i) {
            if (i == 9) {
                ColorNumericKeyboard colorNumericKeyboard = this.c;
                if (!colorNumericKeyboard.a(colorNumericKeyboard.y)) {
                    return this.c.y.e;
                }
            }
            if (i == 11) {
                ColorNumericKeyboard colorNumericKeyboard2 = this.c;
                if (!colorNumericKeyboard2.a(colorNumericKeyboard2.z)) {
                    return this.c.z.e;
                }
            }
            if (i == -1) {
                return getClass().getSimpleName();
            }
            return this.c.m[i] + "";
        }

        public int getItemCounts() {
            ColorNumericKeyboard colorNumericKeyboard = this.c;
            int i = colorNumericKeyboard.a(colorNumericKeyboard.y) ? 10 : 11;
            ColorNumericKeyboard colorNumericKeyboard2 = this.c;
            return colorNumericKeyboard2.a(colorNumericKeyboard2.z) ? i - 1 : i;
        }
    }

    public static class SideStyle {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public Drawable f1618a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public String f1619b;
        /* access modifiers changed from: private */
        public int c;
        /* access modifiers changed from: private */
        public float d;
        /* access modifiers changed from: private */
        public String e;

        public static class Builder {
        }
    }

    private int a(float f2) {
        for (int i2 = 0; i2 < 4; i2++) {
            int d2 = (int) d(i2);
            int i3 = this.e;
            float f3 = this.s;
            int i4 = (int) (((float) (d2 + (i3 / 2))) + (f3 / 2.0f));
            if (((float) ((int) (((float) (d2 - (i3 / 2))) - (f3 / 2.0f)))) <= f2 && f2 <= ((float) i4)) {
                return i2;
            }
        }
        return -1;
    }

    private int a(Cell cell) {
        this.c = (cell.getRow() * 3) + cell.getColumn();
        if (this.c == 9 && a(this.y)) {
            this.c = -1;
        }
        if (this.c == 11 && a(this.z)) {
            this.c = -1;
        }
        return this.c;
    }

    /* access modifiers changed from: private */
    public Cell a(float f2, float f3) {
        int a2 = a(f3);
        if (a2 < 0) {
            return null;
        }
        int b2 = b(f2);
        if (b2 < 0) {
            return null;
        }
        return a(a2, b2);
    }

    private void a() {
        if (this.C) {
            performHapticFeedback(303);
        } else {
            performHapticFeedback(301);
        }
    }

    private void a(Canvas canvas) {
        Cell cell = this.f1614b;
        if (cell != null) {
            float c2 = c(cell.f1617b);
            float d2 = d(this.f1614b.f1616a);
            if (a(this.f1614b) != -1) {
                int i2 = this.f;
                int i3 = (int) (c2 - ((float) i2));
                int i4 = (int) (d2 - ((float) i2));
                int i5 = (int) (((float) i2) + c2);
                int i6 = (int) (((float) i2) + d2);
                canvas.save();
                float f2 = this.x;
                canvas.scale(f2, f2, c2, d2);
                this.k.setAlpha((int) (this.v * 255.0f));
                this.k.setBounds(i3, i4, i5, i6);
                this.k.draw(canvas);
                canvas.restore();
                canvas.save();
                float f3 = this.w;
                canvas.scale(f3, f3, c2, d2);
                this.l.setBounds(i3, i4, i5, i6);
                this.l.setAlpha((int) (this.u * 255.0f));
                this.l.draw(canvas);
                canvas.restore();
            }
        }
    }

    private void a(Canvas canvas, int i2) {
        float f2 = this.r;
        float measuredWidth = (((float) getMeasuredWidth()) - f2) / 2.0f;
        float f3 = (float) ((this.e + this.g) * (i2 + 1));
        canvas.drawLine(measuredWidth, f3, measuredWidth + f2, f3, this.q);
    }

    private void a(Canvas canvas, int i2, int i3) {
        Cell cell = this.j[i3][i2];
        float c2 = c(i2);
        float d2 = d(i3);
        int i4 = (i3 * 3) + i2;
        if (i4 == 9) {
            a(this.y, canvas, c2, d2);
        } else if (i4 == 11) {
            a(this.z, canvas, c2, d2);
        } else if (i4 != -1) {
            float measureText = this.n.measureText(cell.c);
            canvas.drawText(cell.c, c2 - (measureText / 2.0f), d2 - ((float) ((this.o.descent + this.o.ascent) / 2)), this.n);
        }
    }

    private void a(SideStyle sideStyle, Canvas canvas, float f2, float f3) {
        if (!a(sideStyle)) {
            if (sideStyle.f1618a != null) {
                int intrinsicWidth = (int) (f2 - ((float) (sideStyle.f1618a.getIntrinsicWidth() / 2)));
                int intrinsicHeight = (int) (f3 - ((float) (sideStyle.f1618a.getIntrinsicHeight() / 2)));
                sideStyle.f1618a.setBounds(intrinsicWidth, intrinsicHeight, sideStyle.f1618a.getIntrinsicWidth() + intrinsicWidth, sideStyle.f1618a.getIntrinsicHeight() + intrinsicHeight);
                sideStyle.f1618a.draw(canvas);
            } else if (!TextUtils.isEmpty(sideStyle.f1619b)) {
                this.t.setTextSize(sideStyle.d);
                this.t.setColor(sideStyle.c);
                float measureText = this.t.measureText(sideStyle.f1619b);
                this.p = this.t.getFontMetricsInt();
                canvas.drawText(sideStyle.f1619b, f2 - (measureText / 2.0f), f3 - ((float) ((this.p.descent + this.p.ascent) / 2)), this.t);
            }
        }
    }

    private boolean a(int i2) {
        return this.v > 0.0f && (1 == i2 || 3 == i2 || i2 == 0);
    }

    private boolean a(MotionEvent motionEvent) {
        return motionEvent.getPointerId(motionEvent.getActionIndex()) > 0;
    }

    /* access modifiers changed from: private */
    public boolean a(SideStyle sideStyle) {
        return sideStyle == null || (sideStyle.f1618a == null && TextUtils.isEmpty(sideStyle.f1619b));
    }

    private int b(float f2) {
        for (int i2 = 0; i2 < 3; i2++) {
            int c2 = (int) c(i2);
            int i3 = this.e;
            int i4 = this.g;
            int i5 = c2 + (i3 / 2) + (i4 / 2);
            if (((float) ((c2 - (i3 / 2)) - (i4 / 2))) <= f2 && f2 <= ((float) i5)) {
                return i2;
            }
        }
        return -1;
    }

    private void b() {
        playSoundEffect(0);
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        OnClickItemListener onClickItemListener = this.d;
        if (onClickItemListener != null) {
            if (i2 >= 0 && i2 <= 8) {
                onClickItemListener.a(i2 + 1);
            }
            if (i2 == 10) {
                this.d.a(0);
            }
            if (i2 == 9) {
                this.d.a();
            }
            if (i2 == 11) {
                this.d.b();
            }
        }
    }

    private void b(int i2, int i3) {
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException("row must be in range 0-3");
        } else if (i3 < 0 || i3 > 2) {
            throw new IllegalArgumentException("column must be in range 0-2");
        }
    }

    private void b(MotionEvent motionEvent) {
        if (this.F.isTouchExplorationEnabled()) {
            this.f1614b = a(motionEvent.getX(), motionEvent.getY());
            Cell cell = this.f1614b;
            if (cell != null) {
                int a2 = a(cell);
                this.E.a();
                if (this.h && a2 != -1) {
                    a();
                }
            } else {
                this.c = -1;
            }
        }
        c();
        if (!(a(motionEvent.getY()) == -1 || b(motionEvent.getX()) == -1)) {
            b(this.c);
        }
        if (this.c != -1 && isEnabled() && !hasOnClickListeners()) {
            b();
        }
        invalidate();
    }

    /* access modifiers changed from: private */
    public float c(int i2) {
        float f2 = (float) (this.e + this.g);
        return ((float) getPaddingLeft()) + (f2 / 2.0f) + (f2 * ((float) i2)) + ((float) (this.f / 2));
    }

    private void c() {
        if (this.A.isRunning()) {
            this.A.addListener(this.D);
        } else {
            this.B.start();
        }
    }

    private void c(MotionEvent motionEvent) {
        if (!this.F.isTouchExplorationEnabled()) {
            this.f1614b = a(motionEvent.getX(), motionEvent.getY());
            Cell cell = this.f1614b;
            if (cell != null) {
                int a2 = a(cell);
                this.E.a();
                if (this.h && a2 != -1) {
                    a();
                }
            } else {
                this.c = -1;
            }
        }
        this.A.removeListener(this.D);
        if (this.B.isRunning()) {
            this.B.end();
        }
        if (this.A.isRunning()) {
            this.A.end();
        }
        this.A.start();
        invalidate();
    }

    /* access modifiers changed from: private */
    public float d(int i2) {
        float f2 = (float) this.e;
        return ((float) getPaddingTop()) + (f2 / 2.0f) + ((float) (this.f / 2)) + (f2 * ((float) i2)) + (this.s * ((float) (i2 + 1)));
    }

    private void setBlurAlpha(float f2) {
        this.u = f2;
        invalidate();
    }

    private void setBlurScale(float f2) {
        this.w = f2;
        invalidate();
    }

    private void setNormalAlpha(float f2) {
        this.v = f2;
        invalidate();
    }

    private void setNormalScale(float f2) {
        this.x = f2;
        invalidate();
    }

    public synchronized Cell a(int i2, int i3) {
        b(i2, i3);
        return this.j[i2][i3];
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.E.a(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    @Deprecated
    public int getTouchIndex() {
        return 0;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1613a != null) {
            this.f1613a = null;
        }
        if (this.f1614b != null) {
            this.f1614b = null;
        }
        this.i = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        for (int i2 = -1; i2 < 4; i2++) {
            a(canvas, i2);
        }
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 3; i4++) {
                a(canvas, i4, i3);
            }
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.F.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7) {
                motionEvent.setAction(2);
            } else if (action == 9) {
                motionEvent.setAction(0);
            } else if (action == 10) {
                motionEvent.setAction(1);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4 = this.e;
        int i5 = this.f;
        setMeasuredDimension(((this.g + i4) * 3) + i5, ((int) (((float) (i4 * 4)) + (this.s * 5.0f))) + i5);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        int action = motionEvent.getAction();
        if (!isEnabled()) {
            if (a(action)) {
                c();
            }
            return false;
        }
        if (action == 0) {
            this.i = true;
            c(motionEvent);
        } else if (action == 1) {
            this.i = false;
            b(motionEvent);
        } else if (action != 2) {
            if (action == 3) {
                this.i = false;
                b(motionEvent);
            } else if (action == 6) {
                this.i = false;
                b(motionEvent);
            }
        }
        return true;
    }

    public void setEnabled(boolean z2) {
        if (!z2 && this.i) {
            Paint paint = this.f1613a;
            if (paint != null) {
                paint.setAlpha(0);
                this.i = false;
                invalidate();
            }
        }
        super.setEnabled(z2);
    }

    @Deprecated
    public void setHasFinishButton(boolean z2) {
    }

    @Deprecated
    public void setItemTouchListener(OnItemTouchListener onItemTouchListener) {
    }

    public void setLeftStyle(SideStyle sideStyle) {
        this.y = sideStyle;
        this.E.a(9);
        invalidate();
    }

    public void setOnClickItemListener(OnClickItemListener onClickItemListener) {
        this.d = onClickItemListener;
    }

    public void setRightStyle(SideStyle sideStyle) {
        this.z = sideStyle;
        this.E.a(11);
        invalidate();
    }

    public void setTactileFeedbackEnabled(boolean z2) {
        this.h = z2;
    }

    @Deprecated
    public void setTouchTextListener(OnTouchTextListener onTouchTextListener) {
    }

    @Deprecated
    public void setTouchUpListener(OnTouchUpListener onTouchUpListener) {
    }

    @Deprecated
    public void setType(int i2) {
    }
}
