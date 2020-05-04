package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.a.a.a;
import androidx.core.a.a.f;

/* compiled from: TintTypedArray */
public class au {

    /* renamed from: a  reason: collision with root package name */
    private final Context f349a;

    /* renamed from: b  reason: collision with root package name */
    private final TypedArray f350b;
    private TypedValue c;

    private au(Context context, TypedArray typedArray) {
        this.f349a = context;
        this.f350b = typedArray;
    }

    public static au a(Context context, int i, int[] iArr) {
        return new au(context, context.obtainStyledAttributes(i, iArr));
    }

    public static au a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new au(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static au a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new au(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public float a(int i, float f) {
        return this.f350b.getFloat(i, f);
    }

    public int a() {
        return this.f350b.length();
    }

    public int a(int i, int i2) {
        return this.f350b.getInt(i, i2);
    }

    public Typeface a(int i, int i2, f.a aVar) {
        int resourceId = this.f350b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return f.a(this.f349a, resourceId, this.c, i2, aVar);
    }

    public Drawable a(int i) {
        if (this.f350b.hasValue(i)) {
            int resourceId = this.f350b.getResourceId(i, 0);
            if (resourceId != 0) {
                return a.b(this.f349a, resourceId);
            }
        }
        return this.f350b.getDrawable(i);
    }

    public boolean a(int i, boolean z) {
        return this.f350b.getBoolean(i, z);
    }

    public int b(int i, int i2) {
        return this.f350b.getColor(i, i2);
    }

    public Drawable b(int i) {
        if (!this.f350b.hasValue(i)) {
            return null;
        }
        int resourceId = this.f350b.getResourceId(i, 0);
        if (resourceId != 0) {
            return i.b().a(this.f349a, resourceId, true);
        }
        return null;
    }

    public void b() {
        this.f350b.recycle();
    }

    public int c(int i, int i2) {
        return this.f350b.getInteger(i, i2);
    }

    public CharSequence c(int i) {
        return this.f350b.getText(i);
    }

    public int d(int i, int i2) {
        return this.f350b.getDimensionPixelOffset(i, i2);
    }

    public String d(int i) {
        return this.f350b.getString(i);
    }

    public int e(int i, int i2) {
        return this.f350b.getDimensionPixelSize(i, i2);
    }

    public ColorStateList e(int i) {
        if (this.f350b.hasValue(i)) {
            int resourceId = this.f350b.getResourceId(i, 0);
            if (resourceId != 0) {
                ColorStateList a2 = a.a(this.f349a, resourceId);
                if (a2 != null) {
                    return a2;
                }
            }
        }
        return this.f350b.getColorStateList(i);
    }

    public int f(int i, int i2) {
        return this.f350b.getLayoutDimension(i, i2);
    }

    public CharSequence[] f(int i) {
        return this.f350b.getTextArray(i);
    }

    public int g(int i, int i2) {
        return this.f350b.getResourceId(i, i2);
    }

    public boolean g(int i) {
        return this.f350b.hasValue(i);
    }
}
