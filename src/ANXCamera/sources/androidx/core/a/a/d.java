package androidx.core.a.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: GradientColorInflaterCompat */
final class d {

    /* compiled from: GradientColorInflaterCompat */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int[] f468a;

        /* renamed from: b  reason: collision with root package name */
        final float[] f469b;

        a(int i, int i2) {
            this.f468a = new int[]{i, i2};
            this.f469b = new float[]{0.0f, 1.0f};
        }

        a(int i, int i2, int i3) {
            this.f468a = new int[]{i, i2, i3};
            this.f469b = new float[]{0.0f, 0.5f, 1.0f};
        }

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f468a = new int[size];
            this.f469b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f468a[i] = list.get(i).intValue();
                this.f469b[i] = list2.get(i).floatValue();
            }
        }
    }

    private static Shader.TileMode a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    static Shader a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            Resources.Theme theme2 = theme;
            TypedArray a2 = g.a(resources, theme2, attributeSet, R.styleable.GradientColor);
            float a3 = g.a(a2, xmlPullParser2, "startX", R.styleable.GradientColor_android_startX, 0.0f);
            float a4 = g.a(a2, xmlPullParser2, "startY", R.styleable.GradientColor_android_startY, 0.0f);
            float a5 = g.a(a2, xmlPullParser2, "endX", R.styleable.GradientColor_android_endX, 0.0f);
            float a6 = g.a(a2, xmlPullParser2, "endY", R.styleable.GradientColor_android_endY, 0.0f);
            float a7 = g.a(a2, xmlPullParser2, "centerX", R.styleable.GradientColor_android_centerX, 0.0f);
            float a8 = g.a(a2, xmlPullParser2, "centerY", R.styleable.GradientColor_android_centerY, 0.0f);
            int a9 = g.a(a2, xmlPullParser2, "type", R.styleable.GradientColor_android_type, 0);
            int b2 = g.b(a2, xmlPullParser2, "startColor", R.styleable.GradientColor_android_startColor, 0);
            boolean a10 = g.a(xmlPullParser2, "centerColor");
            int b3 = g.b(a2, xmlPullParser2, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
            int b4 = g.b(a2, xmlPullParser2, "endColor", R.styleable.GradientColor_android_endColor, 0);
            int a11 = g.a(a2, xmlPullParser2, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
            float f = a7;
            float a12 = g.a(a2, xmlPullParser2, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, 0.0f);
            a2.recycle();
            a a13 = a(b(resources, xmlPullParser, attributeSet, theme), b2, b4, a10, b3);
            if (a9 == 1) {
                float f2 = f;
                if (a12 > 0.0f) {
                    int[] iArr = a13.f468a;
                    RadialGradient radialGradient = new RadialGradient(f2, a8, a12, iArr, a13.f469b, a(a11));
                    return radialGradient;
                }
                throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
            } else if (a9 != 2) {
                LinearGradient linearGradient = new LinearGradient(a3, a4, a5, a6, a13.f468a, a13.f469b, a(a11));
                return linearGradient;
            } else {
                return new SweepGradient(f, a8, a13.f468a, a13.f469b);
            }
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
    }

    private static a a(a aVar, int i, int i2, boolean z, int i3) {
        return aVar != null ? aVar : z ? new a(i, i3, i2) : new a(i, i2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0084, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r9.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    private static a b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                break;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                break;
            } else if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray a2 = g.a(resources, theme, attributeSet, R.styleable.GradientColorItem);
                boolean hasValue = a2.hasValue(R.styleable.GradientColorItem_android_color);
                boolean hasValue2 = a2.hasValue(R.styleable.GradientColorItem_android_offset);
                if (!hasValue || !hasValue2) {
                } else {
                    int color2 = a2.getColor(R.styleable.GradientColorItem_android_color, 0);
                    float f = a2.getFloat(R.styleable.GradientColorItem_android_offset, 0.0f);
                    a2.recycle();
                    arrayList2.add(Integer.valueOf(color2));
                    arrayList.add(Float.valueOf(f));
                }
            }
        }
        if (arrayList2.size() > 0) {
            return new a((List<Integer>) arrayList2, (List<Float>) arrayList);
        }
        return null;
    }
}
