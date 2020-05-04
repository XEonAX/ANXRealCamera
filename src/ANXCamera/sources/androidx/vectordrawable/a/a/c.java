package androidx.vectordrawable.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.a.a.g;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: AnimatedVectorDrawableCompat */
public class c extends h implements b {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<Object> f1017a;

    /* renamed from: b  reason: collision with root package name */
    final Drawable.Callback f1018b;
    private a d;
    private Context e;
    private ArgbEvaluator f;
    private Animator.AnimatorListener g;

    /* compiled from: AnimatedVectorDrawableCompat */
    private static class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f1020a;

        /* renamed from: b  reason: collision with root package name */
        i f1021b;
        AnimatorSet c;
        ArrayList<Animator> d;
        androidx.b.a<Animator, String> e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f1020a = aVar.f1020a;
                i iVar = aVar.f1021b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f1021b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f1021b = (i) constantState.newDrawable();
                    }
                    this.f1021b = (i) this.f1021b.mutate();
                    this.f1021b.setCallback(callback);
                    this.f1021b.setBounds(aVar.f1021b.getBounds());
                    this.f1021b.a(false);
                }
                ArrayList<Animator> arrayList = aVar.d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.d = new ArrayList<>(size);
                    this.e = new androidx.b.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.d.get(i);
                        Animator clone = animator.clone();
                        String str = aVar.e.get(animator);
                        clone.setTarget(this.f1021b.a(str));
                        this.d.add(clone);
                        this.e.put(clone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.c == null) {
                this.c = new AnimatorSet();
            }
            this.c.playTogether(this.d);
        }

        public int getChangingConfigurations() {
            return this.f1020a;
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* compiled from: AnimatedVectorDrawableCompat */
    private static class b extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f1022a;

        public b(Drawable.ConstantState constantState) {
            this.f1022a = constantState;
        }

        public boolean canApplyTheme() {
            return this.f1022a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.f1022a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            c cVar = new c();
            cVar.c = this.f1022a.newDrawable();
            cVar.c.setCallback(cVar.f1018b);
            return cVar;
        }

        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.c = this.f1022a.newDrawable(resources);
            cVar.c.setCallback(cVar.f1018b);
            return cVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.c = this.f1022a.newDrawable(resources, theme);
            cVar.c.setCallback(cVar.f1018b);
            return cVar;
        }
    }

    c() {
        this((Context) null, (a) null, (Resources) null);
    }

    private c(Context context) {
        this(context, (a) null, (Resources) null);
    }

    private c(Context context, a aVar, Resources resources) {
        this.f = null;
        this.g = null;
        this.f1017a = null;
        this.f1018b = new Drawable.Callback() {
            public void invalidateDrawable(Drawable drawable) {
                c.this.invalidateSelf();
            }

            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                c.this.scheduleSelf(runnable, j);
            }

            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                c.this.unscheduleSelf(runnable);
            }
        };
        this.e = context;
        if (aVar != null) {
            this.d = aVar;
        } else {
            this.d = new a(context, aVar, this.f1018b, resources);
        }
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    private void a(Animator animator) {
        if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            if (childAnimations != null) {
                for (int i = 0; i < childAnimations.size(); i++) {
                    a(childAnimations.get(i));
                }
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f == null) {
                    this.f = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.d.f1021b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        if (this.d.d == null) {
            this.d.d = new ArrayList<>();
            this.d.e = new androidx.b.a<>();
        }
        this.d.d.add(animator);
        this.d.e.put(animator, str);
    }

    public void applyTheme(Resources.Theme theme) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, theme);
        }
    }

    public boolean canApplyTheme() {
        if (this.c != null) {
            return androidx.core.graphics.drawable.a.d(this.c);
        }
        return false;
    }

    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public void draw(Canvas canvas) {
        if (this.c != null) {
            this.c.draw(canvas);
            return;
        }
        this.d.f1021b.draw(canvas);
        if (this.d.c.isStarted()) {
            invalidateSelf();
        }
    }

    public int getAlpha() {
        return this.c != null ? androidx.core.graphics.drawable.a.c(this.c) : this.d.f1021b.getAlpha();
    }

    public int getChangingConfigurations() {
        return this.c != null ? this.c.getChangingConfigurations() : super.getChangingConfigurations() | this.d.f1020a;
    }

    public ColorFilter getColorFilter() {
        return this.c != null ? androidx.core.graphics.drawable.a.e(this.c) : this.d.f1021b.getColorFilter();
    }

    public Drawable.ConstantState getConstantState() {
        if (this.c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.c.getConstantState());
    }

    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.c != null ? this.c.getIntrinsicHeight() : this.d.f1021b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.c != null ? this.c.getIntrinsicWidth() : this.d.f1021b.getIntrinsicWidth();
    }

    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    public int getOpacity() {
        return this.c != null ? this.c.getOpacity() : this.d.f1021b.getOpacity();
    }

    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, (Resources.Theme) null);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a2 = g.a(resources, theme, attributeSet, a.e);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i a3 = i.a(resources, resourceId, theme);
                        a3.a(false);
                        a3.setCallback(this.f1018b);
                        if (this.d.f1021b != null) {
                            this.d.f1021b.setCallback((Drawable.Callback) null);
                        }
                        this.d.f1021b = a3;
                    }
                    a2.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, a.f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.e;
                        if (context != null) {
                            a(string, e.a(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.d.a();
    }

    public boolean isAutoMirrored() {
        return this.c != null ? androidx.core.graphics.drawable.a.b(this.c) : this.d.f1021b.isAutoMirrored();
    }

    public boolean isRunning() {
        return this.c != null ? ((AnimatedVectorDrawable) this.c).isRunning() : this.d.c.isRunning();
    }

    public boolean isStateful() {
        return this.c != null ? this.c.isStateful() : this.d.f1021b.isStateful();
    }

    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    public Drawable mutate() {
        if (this.c != null) {
            this.c.mutate();
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        if (this.c != null) {
            this.c.setBounds(rect);
        } else {
            this.d.f1021b.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return this.c != null ? this.c.setLevel(i) : this.d.f1021b.setLevel(i);
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        return this.c != null ? this.c.setState(iArr) : this.d.f1021b.setState(iArr);
    }

    public void setAlpha(int i) {
        if (this.c != null) {
            this.c.setAlpha(i);
        } else {
            this.d.f1021b.setAlpha(i);
        }
    }

    public void setAutoMirrored(boolean z) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, z);
        } else {
            this.d.f1021b.setAutoMirrored(z);
        }
    }

    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.c != null) {
            this.c.setColorFilter(colorFilter);
        } else {
            this.d.f1021b.setColorFilter(colorFilter);
        }
    }

    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    public void setTint(int i) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, i);
        } else {
            this.d.f1021b.setTint(i);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, colorStateList);
        } else {
            this.d.f1021b.setTintList(colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, mode);
        } else {
            this.d.f1021b.setTintMode(mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        if (this.c != null) {
            return this.c.setVisible(z, z2);
        }
        this.d.f1021b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    public void start() {
        if (this.c != null) {
            ((AnimatedVectorDrawable) this.c).start();
        } else if (!this.d.c.isStarted()) {
            this.d.c.start();
            invalidateSelf();
        }
    }

    public void stop() {
        if (this.c != null) {
            ((AnimatedVectorDrawable) this.c).stop();
        } else {
            this.d.c.end();
        }
    }
}
