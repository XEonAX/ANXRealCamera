package com.color.support.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.g.a.d;
import color.support.v7.appcompat.R;
import com.google.protobuf.nano.MessageNano;
import com.sensetime.stmobile.sticker_module_types.STStickerMakeupParamType;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ColorLockPatternView extends View {
    private int A;
    private int B;
    private final Interpolator C;
    private e D;
    private boolean E;
    private Drawable F;
    private Drawable G;
    private ValueAnimator H;
    private boolean I;
    private Context J;
    private AccessibilityManager K;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final b[][] f1578a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1579b;
    /* access modifiers changed from: private */
    public float c;
    private final Paint d;
    private final Paint e;
    private d f;
    /* access modifiers changed from: private */
    public final ArrayList<a> g;
    /* access modifiers changed from: private */
    public final boolean[][] h;
    private float i;
    private float j;
    private long k;
    private c l;
    private boolean m;
    private boolean n;
    private boolean o;
    /* access modifiers changed from: private */
    public boolean p;
    /* access modifiers changed from: private */
    public float q;
    /* access modifiers changed from: private */
    public float r;
    /* access modifiers changed from: private */
    public float s;
    private final float t;
    private final Path u;
    private final Rect v;
    private final Rect w;
    private int x;
    private int y;
    private int z;

    private static class SavedState extends View.BaseSavedState {
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
        private final int mDisplayMode;
        private final boolean mInStealthMode;
        private final boolean mInputEnabled;
        private final String mSerializedPattern;
        private final boolean mTactileFeedbackEnabled;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mSerializedPattern = parcel.readString();
            this.mDisplayMode = parcel.readInt();
            this.mInputEnabled = ((Boolean) parcel.readValue((ClassLoader) null)).booleanValue();
            this.mInStealthMode = ((Boolean) parcel.readValue((ClassLoader) null)).booleanValue();
            this.mTactileFeedbackEnabled = ((Boolean) parcel.readValue((ClassLoader) null)).booleanValue();
        }

        private SavedState(Parcelable parcelable, String str, int i, boolean z, boolean z2, boolean z3) {
            super(parcelable);
            this.mSerializedPattern = str;
            this.mDisplayMode = i;
            this.mInputEnabled = z;
            this.mInStealthMode = z2;
            this.mTactileFeedbackEnabled = z3;
        }

        public int getDisplayMode() {
            return this.mDisplayMode;
        }

        public String getSerializedPattern() {
            return this.mSerializedPattern;
        }

        public boolean isInStealthMode() {
            return this.mInStealthMode;
        }

        public boolean isInputEnabled() {
            return this.mInputEnabled;
        }

        public boolean isTactileFeedbackEnabled() {
            return this.mTactileFeedbackEnabled;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mSerializedPattern);
            parcel.writeInt(this.mDisplayMode);
            parcel.writeValue(Boolean.valueOf(this.mInputEnabled));
            parcel.writeValue(Boolean.valueOf(this.mInStealthMode));
            parcel.writeValue(Boolean.valueOf(this.mTactileFeedbackEnabled));
        }
    }

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final a[][] f1592a = c();
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final int f1593b;
        /* access modifiers changed from: private */
        public final int c;

        private a(int i, int i2) {
            b(i, i2);
            this.f1593b = i;
            this.c = i2;
        }

        public static a a(int i, int i2) {
            b(i, i2);
            return f1592a[i][i2];
        }

        private static void b(int i, int i2) {
            if (i < 0 || i > 2) {
                throw new IllegalArgumentException("row must be in range 0-2");
            } else if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("column must be in range 0-2");
            }
        }

        private static a[][] c() {
            a[][] aVarArr = (a[][]) Array.newInstance(a.class, new int[]{3, 3});
            for (int i = 0; i < 3; i++) {
                for (int i2 = 0; i2 < 3; i2++) {
                    aVarArr[i][i2] = new a(i, i2);
                }
            }
            return aVarArr;
        }

        public int a() {
            return this.f1593b;
        }

        public int b() {
            return this.c;
        }

        public String toString() {
            return "(row=" + this.f1593b + ",clmn=" + this.c + ")";
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        float f1594a;

        /* renamed from: b  reason: collision with root package name */
        float f1595b;
        float c;
        public float d;
        public float e;
        public ValueAnimator f;
        float g;
        float h;
        float i;
        float j;
        boolean k;
    }

    public enum c {
        Correct,
        Animate,
        Wrong,
        FingerprintMatch,
        FingerprintNoMatch
    }

    public interface d {
        void a();

        void a(List<a> list);

        void b();

        void b(List<a> list);
    }

    private final class e extends androidx.customview.a.a {
        final /* synthetic */ ColorLockPatternView c;
        private Rect d;
        private final SparseArray<a> e;

        class a {

            /* renamed from: a  reason: collision with root package name */
            CharSequence f1596a;
        }

        private int b(float f, float f2) {
            int b2 = this.c.a(f2);
            if (b2 < 0) {
                return MessageNano.UNSET_ENUM_VALUE;
            }
            int c2 = this.c.b(f);
            if (c2 < 0) {
                return MessageNano.UNSET_ENUM_VALUE;
            }
            return this.c.h[b2][c2] ? (b2 * 3) + c2 + 1 : MessageNano.UNSET_ENUM_VALUE;
        }

        private boolean f(int i) {
            if (i == Integer.MIN_VALUE) {
                return false;
            }
            int i2 = i - 1;
            return !this.c.h[i2 / 3][i2 % 3];
        }

        private Rect g(int i) {
            int i2 = i - 1;
            Rect rect = this.d;
            int i3 = i2 / 3;
            int i4 = i2 % 3;
            b bVar = this.c.f1578a[i3][i4];
            float a2 = this.c.b(i4);
            float b2 = this.c.c(i3);
            float f = this.c.s * this.c.q * 0.5f;
            float h = this.c.r * this.c.q * 0.5f;
            rect.left = (int) (a2 - h);
            rect.right = (int) (a2 + h);
            rect.top = (int) (b2 - f);
            rect.bottom = (int) (b2 + f);
            return rect;
        }

        private CharSequence h(int i) {
            return this.c.getResources().getString(R.string.lockscreen_access_pattern_cell_added_verbose, new Object[]{Integer.valueOf(i)});
        }

        /* access modifiers changed from: protected */
        public int a(float f, float f2) {
            return b(f, f2);
        }

        /* access modifiers changed from: protected */
        public void a(int i, AccessibilityEvent accessibilityEvent) {
            a aVar = this.e.get(i);
            if (aVar != null) {
                accessibilityEvent.getText().add(aVar.f1596a);
            }
        }

        /* access modifiers changed from: protected */
        public void a(int i, androidx.core.g.a.d dVar) {
            dVar.c(h(i));
            dVar.e(h(i));
            if (this.c.p) {
                dVar.a(true);
                if (f(i)) {
                    dVar.a(d.a.e);
                    dVar.f(f(i));
                }
            }
            dVar.b(g(i));
        }

        /* access modifiers changed from: protected */
        public void a(List<Integer> list) {
            if (this.c.p) {
                for (int i = 1; i < 10; i++) {
                    list.add(Integer.valueOf(i));
                }
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
            if (!this.c.p) {
                accessibilityEvent.setContentDescription(this.c.getContext().getText(R.string.lockscreen_access_pattern_area));
            }
        }

        /* access modifiers changed from: package-private */
        public boolean e(int i) {
            a(i);
            a(i, 1);
            return true;
        }
    }

    /* access modifiers changed from: private */
    public int a(float f2) {
        float f3 = this.s;
        float f4 = this.q * f3;
        float paddingTop = ((float) getPaddingTop()) + ((f3 - f4) / 2.0f);
        for (int i2 = 0; i2 < 3; i2++) {
            float f5 = (((float) i2) * f3) + paddingTop;
            if (f2 >= f5 && f2 <= f5 + f4) {
                return i2;
            }
        }
        return -1;
    }

    private int a(boolean z2) {
        if (this.l == c.Wrong || this.l == c.FingerprintNoMatch) {
            return this.y;
        }
        if (this.l == c.Correct || this.l == c.Animate || this.l == c.FingerprintMatch) {
            return this.z;
        }
        if (!z2 || this.n || this.p) {
            return this.x;
        }
        throw new IllegalStateException("unknown display mode " + this.l);
    }

    private a a(float f2, float f3) {
        a b2 = b(f2, f3);
        a aVar = null;
        if (b2 == null) {
            return null;
        }
        ArrayList<a> arrayList = this.g;
        if (!arrayList.isEmpty()) {
            int i2 = 1;
            a aVar2 = arrayList.get(arrayList.size() - 1);
            int a2 = b2.f1593b - aVar2.f1593b;
            int b3 = b2.c - aVar2.c;
            int a3 = aVar2.f1593b;
            int b4 = aVar2.c;
            if (Math.abs(a2) == 2 && Math.abs(b3) != 1) {
                a3 = aVar2.f1593b + (a2 > 0 ? 1 : -1);
            }
            if (Math.abs(b3) == 2 && Math.abs(a2) != 1) {
                int b5 = aVar2.c;
                if (b3 <= 0) {
                    i2 = -1;
                }
                b4 = b5 + i2;
            }
            aVar = a.a(a3, b4);
        }
        if (aVar != null && !this.h[aVar.f1593b][aVar.c]) {
            a(aVar);
        }
        a(b2);
        if (this.o) {
            j();
        }
        return b2;
    }

    private void a() {
        if (this.I) {
            performHapticFeedback(304, 3);
        } else {
            performHapticFeedback(300, 3);
        }
    }

    private void a(int i2) {
        announceForAccessibility(this.J.getString(i2));
    }

    private void a(Canvas canvas, float f2, float f3, float f4, float f5, float f6, float f7) {
        canvas.save();
        int intrinsicWidth = this.F.getIntrinsicWidth();
        float f8 = (float) (intrinsicWidth / 2);
        int i2 = (int) (f2 - f8);
        int i3 = (int) (f3 - f8);
        canvas.scale(f4, f4, f2, f3);
        this.F.setTint(a(true));
        this.F.setBounds(i2, i3, i2 + intrinsicWidth, intrinsicWidth + i3);
        this.F.setAlpha((int) (f5 * 255.0f));
        this.F.draw(canvas);
        canvas.restore();
        canvas.save();
        int intrinsicWidth2 = this.G.getIntrinsicWidth();
        float f9 = (float) (intrinsicWidth2 / 2);
        int i4 = (int) (f2 - f9);
        int i5 = (int) (f3 - f9);
        canvas.scale(f6, f6, f2, f3);
        this.G.setTint(a(true));
        this.G.setBounds(i4, i5, i4 + intrinsicWidth2, intrinsicWidth2 + i5);
        this.G.setAlpha((int) (f7 * 255.0f));
        this.G.draw(canvas);
        canvas.restore();
    }

    private void a(Canvas canvas, float f2, float f3, float f4, boolean z2, float f5) {
        this.d.setColor(this.x);
        this.d.setAlpha((int) (f5 * 255.0f));
        canvas.drawCircle(f2, f3, f4, this.d);
    }

    private void a(MotionEvent motionEvent) {
        float f2 = (float) this.f1579b;
        int historySize = motionEvent.getHistorySize();
        this.w.setEmpty();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < historySize + 1) {
            float historicalX = i2 < historySize ? motionEvent.getHistoricalX(i2) : motionEvent.getX();
            float historicalY = i2 < historySize ? motionEvent.getHistoricalY(i2) : motionEvent.getY();
            a a2 = a(historicalX, historicalY);
            int size = this.g.size();
            if (a2 != null && size == 1) {
                setPatternInProgress(true);
                e();
            }
            float abs = Math.abs(historicalX - this.i);
            float abs2 = Math.abs(historicalY - this.j);
            if (abs > 0.0f || abs2 > 0.0f) {
                z2 = true;
            }
            if (this.p && size > 0) {
                a aVar = this.g.get(size - 1);
                float b2 = b(aVar.c);
                float c2 = c(aVar.f1593b);
                float min = Math.min(b2, historicalX) - f2;
                float max = Math.max(b2, historicalX) + f2;
                float min2 = Math.min(c2, historicalY) - f2;
                float max2 = Math.max(c2, historicalY) + f2;
                if (a2 != null) {
                    float f3 = this.r * 0.5f;
                    float f4 = this.s * 0.5f;
                    float b3 = b(a2.c);
                    float c3 = c(a2.f1593b);
                    min = Math.min(b3 - f3, min);
                    max = Math.max(b3 + f3, max);
                    min2 = Math.min(c3 - f4, min2);
                    max2 = Math.max(c3 + f4, max2);
                }
                this.w.union(Math.round(min), Math.round(min2), Math.round(max), Math.round(max2));
            }
            i2++;
        }
        this.i = motionEvent.getX();
        this.j = motionEvent.getY();
        if (z2) {
            this.v.union(this.w);
            invalidate(this.v);
            this.v.set(this.w);
        }
    }

    private void a(a aVar) {
        this.h[aVar.a()][aVar.b()] = true;
        this.g.add(aVar);
        if (!this.n) {
            b(aVar);
        }
        d();
    }

    private void a(final b bVar) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(460);
        animatorSet.setInterpolator(new PathInterpolator(0.0f, 0.0f, 0.1f, 1.0f));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 7.0f});
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                bVar.h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ColorLockPatternView.this.invalidate();
            }
        });
        ValueAnimator ofPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(new PropertyValuesHolder[]{PropertyValuesHolder.ofKeyframe("alpha", new Keyframe[]{Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.5f, this.t), Keyframe.ofFloat(1.0f, 0.0f)})});
        ofPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                bVar.j = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ColorLockPatternView.this.invalidate();
            }
        });
        animatorSet.play(ofFloat).with(ofPropertyValuesHolder);
        animatorSet.start();
    }

    private void a(final b bVar, float f2, float f3, float f4, float f5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        final b bVar2 = bVar;
        final float f6 = f2;
        final float f7 = f4;
        final float f8 = f3;
        final float f9 = f5;
        AnonymousClass3 r1 = new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                b bVar = bVar2;
                float f2 = 1.0f - floatValue;
                bVar.d = (f6 * f2) + (f7 * floatValue);
                bVar.e = (f2 * f8) + (floatValue * f9);
                ColorLockPatternView.this.invalidate();
            }
        };
        ofFloat.addUpdateListener(r1);
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                bVar.f = null;
            }
        });
        ofFloat.setInterpolator(this.C);
        ofFloat.setDuration(100);
        ofFloat.start();
        bVar.f = ofFloat;
    }

    /* access modifiers changed from: private */
    public float b(int i2) {
        float f2 = this.r;
        return ((float) getPaddingLeft()) + (((float) i2) * f2) + (f2 / 2.0f);
    }

    /* access modifiers changed from: private */
    public int b(float f2) {
        float f3 = this.r;
        float f4 = this.q * f3;
        float paddingLeft = ((float) getPaddingLeft()) + ((f3 - f4) / 2.0f);
        for (int i2 = 0; i2 < 3; i2++) {
            float f5 = (((float) i2) * f3) + paddingLeft;
            if (f2 >= f5 && f2 <= f5 + f4) {
                return i2;
            }
        }
        return -1;
    }

    private a b(float f2, float f3) {
        int a2 = a(f3);
        if (a2 < 0) {
            return null;
        }
        int b2 = b(f2);
        if (b2 >= 0 && !this.h[a2][b2]) {
            return a.a(a2, b2);
        }
        return null;
    }

    private void b() {
        this.H = ValueAnimator.ofPropertyValuesHolder(new PropertyValuesHolder[]{PropertyValuesHolder.ofKeyframe("pathAlpha", new Keyframe[]{Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.2f, 0.35f), Keyframe.ofFloat(0.4f, 1.0f), Keyframe.ofFloat(0.6f, 0.15f), Keyframe.ofFloat(0.8f, 0.5f), Keyframe.ofFloat(1.0f, 0.0f)})});
        this.H.setDuration(1000);
        this.H.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float unused = ColorLockPatternView.this.c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                Iterator it = ColorLockPatternView.this.g.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    b bVar = ColorLockPatternView.this.f1578a[aVar.f1593b][aVar.c];
                    bVar.i = ColorLockPatternView.this.c;
                    bVar.k = ColorLockPatternView.this.c <= 0.1f;
                }
                ColorLockPatternView.this.invalidate();
            }
        });
        this.H.start();
    }

    private void b(MotionEvent motionEvent) {
        this.c = 1.0f;
        h();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        a a2 = a(x2, y2);
        if (a2 != null) {
            setPatternInProgress(true);
            this.l = c.Correct;
            e();
        } else if (this.p) {
            setPatternInProgress(false);
            g();
        }
        if (a2 != null) {
            float b2 = b(a2.c);
            float c2 = c(a2.f1593b);
            float f2 = this.r / 2.0f;
            float f3 = this.s / 2.0f;
            invalidate((int) (b2 - f2), (int) (c2 - f3), (int) (b2 + f2), (int) (c2 + f3));
        }
        this.i = x2;
        this.j = y2;
    }

    private void b(a aVar) {
        b bVar = this.f1578a[aVar.f1593b][aVar.c];
        a(bVar);
        b(bVar);
        a(bVar, this.i, this.j, b(aVar.c), c(aVar.f1593b));
    }

    private void b(final b bVar) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setInterpolator(new PathInterpolator(0.3f, 0.0f, 0.7f, 0.0f));
        ofFloat.setDuration(230);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                bVar.i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ofFloat.start();
    }

    /* access modifiers changed from: private */
    public float c(int i2) {
        float f2 = this.s;
        return ((float) getPaddingTop()) + (((float) i2) * f2) + (f2 / 2.0f);
    }

    private void c() {
        ValueAnimator ofPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(new PropertyValuesHolder[]{PropertyValuesHolder.ofKeyframe("pathAlpha", new Keyframe[]{Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.2f, 0.35f), Keyframe.ofFloat(0.4f, 1.0f), Keyframe.ofFloat(0.6f, 0.15f), Keyframe.ofFloat(0.8f, 0.5f), Keyframe.ofFloat(1.0f, 0.0f)})});
        ofPropertyValuesHolder.setDuration(1000);
        ofPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                for (int i = 0; i < 3; i++) {
                    for (int i2 = 0; i2 < 3; i2++) {
                        b bVar = ColorLockPatternView.this.f1578a[i][i2];
                        bVar.i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        bVar.k = bVar.i <= 0.1f;
                    }
                }
                ColorLockPatternView.this.invalidate();
            }
        });
        ofPropertyValuesHolder.start();
    }

    private void d() {
        d dVar = this.f;
        if (dVar != null) {
            dVar.a(this.g);
        }
        this.D.a();
    }

    private void e() {
        a(R.string.lockscreen_access_pattern_start);
        d dVar = this.f;
        if (dVar != null) {
            dVar.a();
        }
    }

    private void f() {
        a(R.string.lockscreen_access_pattern_detected);
        d dVar = this.f;
        if (dVar != null) {
            dVar.b(this.g);
        }
    }

    private void g() {
        a(R.string.lockscreen_access_pattern_cleared);
        d dVar = this.f;
        if (dVar != null) {
            dVar.b();
        }
    }

    private void h() {
        this.g.clear();
        i();
        this.l = c.Correct;
        invalidate();
    }

    private void i() {
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                this.h[i2][i3] = false;
            }
        }
    }

    private void j() {
        if (this.I) {
            performHapticFeedback(303);
        } else {
            performHapticFeedback(1);
        }
    }

    private void k() {
        if (!this.g.isEmpty()) {
            setPatternInProgress(false);
            l();
            f();
            invalidate();
        }
    }

    private void l() {
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                b bVar = this.f1578a[i2][i3];
                if (bVar.f != null) {
                    bVar.f.cancel();
                    bVar.d = Float.MIN_VALUE;
                    bVar.e = Float.MIN_VALUE;
                }
            }
        }
    }

    private void setPatternInProgress(boolean z2) {
        this.p = z2;
        this.D.a();
    }

    public void a(c cVar, List<a> list) {
        this.g.clear();
        this.g.addAll(list);
        i();
        for (a next : list) {
            this.h[next.a()][next.b()] = true;
        }
        setDisplayMode(cVar);
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.D.a(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    public b[][] getCellStates() {
        return this.f1578a;
    }

    @Deprecated
    public Animator getFailAnimator() {
        return ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
    }

    @Deprecated
    public Animator getSuccessAnimator() {
        return ValueAnimator.ofInt(new int[]{255, 0});
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.H;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.H.removeAllListeners();
            this.H = null;
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f2;
        b bVar;
        float f3;
        ArrayList<a> arrayList = this.g;
        int size = arrayList.size();
        boolean[][] zArr = this.h;
        if (this.l == c.Animate) {
            int elapsedRealtime = ((int) (SystemClock.elapsedRealtime() - this.k)) % ((size + 1) * STStickerMakeupParamType.ST_STICKER_PARAM_MAKEUP_FLOAT_SCALE);
            int i2 = elapsedRealtime / STStickerMakeupParamType.ST_STICKER_PARAM_MAKEUP_FLOAT_SCALE;
            i();
            for (int i3 = 0; i3 < i2; i3++) {
                a aVar = arrayList.get(i3);
                zArr[aVar.a()][aVar.b()] = true;
            }
            if (i2 > 0 && i2 < size) {
                float f4 = ((float) (elapsedRealtime % STStickerMakeupParamType.ST_STICKER_PARAM_MAKEUP_FLOAT_SCALE)) / 700.0f;
                a aVar2 = arrayList.get(i2 - 1);
                float b2 = b(aVar2.c);
                float c2 = c(aVar2.f1593b);
                a aVar3 = arrayList.get(i2);
                this.i = b2 + ((b(aVar3.c) - b2) * f4);
                this.j = c2 + (f4 * (c(aVar3.f1593b) - c2));
            }
            invalidate();
        }
        Path path = this.u;
        path.rewind();
        if (!this.n) {
            this.e.setColor(a(true));
            this.e.setAlpha((int) (this.c * 255.0f));
            float f5 = 0.0f;
            float f6 = 0.0f;
            int i4 = 0;
            boolean z2 = false;
            while (i4 < size) {
                a aVar4 = arrayList.get(i4);
                if (!zArr[aVar4.f1593b][aVar4.c]) {
                    break;
                }
                f5 = b(aVar4.c);
                f6 = c(aVar4.f1593b);
                if (i4 == 0) {
                    path.rewind();
                    path.moveTo(f5, f6);
                }
                if (i4 != 0) {
                    b bVar2 = this.f1578a[aVar4.f1593b][aVar4.c];
                    if (bVar2.d == Float.MIN_VALUE || bVar2.e == Float.MIN_VALUE) {
                        path.lineTo(f5, f6);
                    } else {
                        path.lineTo(bVar2.d, bVar2.e);
                    }
                }
                i4++;
                z2 = true;
            }
            if ((this.p || this.l == c.Animate) && z2) {
                path.moveTo(f5, f6);
                path.lineTo(this.i, this.j);
            }
            canvas.drawPath(path, this.e);
        } else {
            Canvas canvas2 = canvas;
        }
        int i5 = 0;
        while (true) {
            if (i5 < 3) {
                float c3 = c(i5);
                int i6 = 0;
                for (int i7 = 3; i6 < i7; i7 = 3) {
                    b bVar3 = this.f1578a[i5][i6];
                    float b3 = b(i6);
                    float f7 = bVar3.f1594a;
                    boolean z3 = zArr[i5][i6];
                    if (z3 || this.l == c.FingerprintNoMatch) {
                        f2 = f7;
                        f3 = b3;
                        bVar = bVar3;
                        a(canvas, b3, ((float) ((int) c3)) + f7, bVar3.g, bVar3.i, bVar3.h, bVar3.j);
                    } else {
                        f2 = f7;
                        f3 = b3;
                        bVar = bVar3;
                    }
                    if (bVar.k) {
                        a(canvas, (float) ((int) f3), ((float) ((int) c3)) + f2, bVar.f1595b, z3, bVar.c);
                    }
                    i6++;
                }
                i5++;
            } else {
                return;
            }
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.K.isTouchExplorationEnabled()) {
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
        setMeasuredDimension(this.A, this.B);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        a(c.Correct, d.a(savedState.getSerializedPattern()));
        this.l = c.values()[savedState.getDisplayMode()];
        this.m = savedState.isInputEnabled();
        this.n = savedState.isInStealthMode();
        this.o = savedState.isTactileFeedbackEnabled();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState(), d.a((List<a>) this.g), this.l.ordinal(), this.m, this.n, this.o);
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        this.r = ((float) ((i2 - getPaddingLeft()) - getPaddingRight())) / 3.0f;
        this.s = ((float) ((i3 - getPaddingTop()) - getPaddingBottom())) / 3.0f;
        this.D.a();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.m || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            ValueAnimator valueAnimator = this.H;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.H.end();
            }
            b(motionEvent);
            return true;
        } else if (action == 1) {
            k();
            return true;
        } else if (action == 2) {
            a(motionEvent);
            return true;
        } else if (action == 3) {
            if (this.p) {
                setPatternInProgress(false);
                h();
                g();
            }
            return true;
        } else if (action != 6 || ((motionEvent.getAction() & 65280) >> 8) != 0) {
            return false;
        } else {
            k();
            return true;
        }
    }

    public void setDisplayMode(c cVar) {
        this.l = cVar;
        if (cVar == c.Animate) {
            if (this.g.size() != 0) {
                this.k = SystemClock.elapsedRealtime();
                a aVar = this.g.get(0);
                this.i = b(aVar.b());
                this.j = c(aVar.a());
                i();
            } else {
                throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
            }
        }
        if (cVar == c.Wrong) {
            if (this.g.size() > 1) {
                a();
            }
            b();
        }
        if (cVar == c.FingerprintNoMatch) {
            c();
        }
        invalidate();
    }

    public void setInStealthMode(boolean z2) {
        this.n = z2;
    }

    public void setLockPassword(boolean z2) {
        this.E = z2;
    }

    public void setOnPatternListener(d dVar) {
        this.f = dVar;
    }

    public void setTactileFeedbackEnabled(boolean z2) {
        this.o = z2;
    }
}
