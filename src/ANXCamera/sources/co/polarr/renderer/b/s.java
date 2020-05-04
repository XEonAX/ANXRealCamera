package co.polarr.renderer.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.text.TextPaint;
import co.polarr.renderer.entities.TextItem;
import co.polarr.renderer.render.f;
import java.util.ArrayList;
import java.util.List;

public class s {

    static class a {

        /* renamed from: a  reason: collision with root package name */
        float f1148a;

        /* renamed from: b  reason: collision with root package name */
        float f1149b;
        String[] c;
        Float[] d;

        a() {
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        float f1150a;

        /* renamed from: b  reason: collision with root package name */
        RectF f1151b;
        float c;
        float d;
        float e;
        float f;
        float[] g;
        float[] h;
        public TextItem i;
        public int j;
    }

    private static float a(Canvas canvas, Paint paint, String str, float f, float f2, float f3, float f4, String str2) {
        if (str.isEmpty()) {
            return 0.0f;
        }
        while (true) {
            String substring = str.substring(0, 1);
            str = str.substring(1);
            canvas.drawText(substring, f, paint.getFontMetrics().descent + f2, paint);
            float a2 = str.isEmpty() ? 0.0f : a(str, paint);
            f += (f3 - a2) + f4;
            if (str.isEmpty()) {
                return f;
            }
            f3 = a2;
        }
    }

    public static float a(String str, Paint paint) {
        return paint.measureText(str, 0, str.length());
    }

    private static Bitmap a(Context context, AssetManager assetManager, TextItem textItem, co.polarr.renderer.entities.Context context2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        Canvas canvas;
        Float[] fArr;
        Bitmap bitmap;
        Context context3 = context;
        AssetManager assetManager2 = assetManager;
        TextItem textItem2 = textItem;
        b a2 = a(context3, assetManager2, textItem2, context2.imageTexture.d);
        RectF rectF = a2.f1151b;
        float f6 = a2.f;
        float f7 = a2.d;
        float[] fArr2 = a2.g;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(g.a(context3, assetManager2, textItem2, a2.j));
        textPaint.setTextSize(a2.c);
        a a3 = a(context3, assetManager2, textItem2, a2);
        String[] strArr = a3.c;
        Float[] fArr3 = a3.d;
        float f8 = a3.f1148a;
        float f9 = a3.f1149b;
        float f10 = (float) ((int) (rectF.left + f8 + rectF.right));
        float f11 = (float) ((int) f9);
        float max = Math.max(fArr2[0] * f10, fArr2[1] * f11);
        float min = Math.min(max, (float) 2048) / max;
        float[] fArr4 = {Math.abs(fArr2[0] * min), Math.abs(min * fArr2[1])};
        int i = (int) (f10 * fArr4[0]);
        int i2 = (int) (f11 * fArr4[1]);
        if (i == 0 || i2 == 0) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        canvas2.scale(fArr4[0], fArr4[1]);
        float f12 = rectF.left;
        float length = ((f9 / 2.0f) - ((((float) (strArr.length - 1)) * f7) / 2.0f)) - (rectF.bottom / 2.0f);
        Bitmap bitmap2 = createBitmap;
        textPaint.setColor(Color.argb((int) (a2.h[3] * 255.0f), (int) (a2.h[0] * 255.0f), (int) (a2.h[1] * 255.0f), (int) (a2.h[2] * 255.0f)));
        if (textItem2.type != null && textItem2.type.equalsIgnoreCase("artwork")) {
            Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
            length += fontMetrics.descent - fontMetrics.leading;
        }
        if (textItem2.mode.equals("outline")) {
            textPaint.setStyle(Paint.Style.STROKE);
            textPaint.setStrokeWidth(a2.e);
        } else {
            textPaint.setStyle(Paint.Style.FILL);
        }
        if (textItem2.align.equals("justify")) {
            int i3 = 0;
            while (i3 < strArr.length) {
                String str = strArr[i3];
                float length2 = f8 - (((float) str.length()) * f6);
                float f13 = length + (((float) i3) * f7);
                if (fArr3[i3].floatValue() < length2) {
                    String[] split = str.split("/\\s/g");
                    float[] a4 = a(split, textPaint);
                    float f14 = 0.0f;
                    for (float f15 : a4) {
                        f14 += f15;
                    }
                    float length3 = (length2 - f14) / ((float) (split.length - 1));
                    float f16 = f12;
                    int i4 = 0;
                    while (i4 < split.length) {
                        String str2 = split[i4];
                        float f17 = a4[i4];
                        Canvas canvas3 = canvas2;
                        String str3 = str2;
                        int i5 = i4;
                        float f18 = f16;
                        Bitmap bitmap3 = bitmap2;
                        float a5 = a(canvas2, textPaint, str3, f18, f13, f17, f6, textItem2.mode);
                        i4 = i5 + 1;
                        fArr3 = fArr3;
                        canvas2 = canvas3;
                        a4 = a4;
                        f8 = f8;
                        f12 = f12;
                        length = length;
                        f16 = a5 + length3 + f6;
                    }
                    bitmap = bitmap2;
                    f3 = length;
                    canvas = canvas2;
                    f5 = f8;
                    fArr = fArr3;
                    f4 = f12;
                } else {
                    bitmap = bitmap2;
                    f3 = length;
                    canvas = canvas2;
                    f5 = f8;
                    fArr = fArr3;
                    f4 = f12;
                    a(canvas, textPaint, str, f4, f13, fArr[i3].floatValue(), f6, textItem2.mode);
                }
                i3++;
                length = f3;
                bitmap2 = bitmap;
                fArr3 = fArr;
                canvas2 = canvas;
                f8 = f5;
                f12 = f4;
            }
            return bitmap2;
        }
        Bitmap bitmap4 = bitmap2;
        float f19 = length;
        Canvas canvas4 = canvas2;
        float f20 = f8;
        Float[] fArr5 = fArr3;
        float f21 = f12;
        for (int i6 = 0; i6 < strArr.length; i6++) {
            String str4 = strArr[i6];
            float floatValue = fArr5[i6].floatValue();
            float length4 = f20 - (((float) str4.length()) * f6);
            String str5 = textItem2.align;
            char c = 65535;
            int hashCode = str5.hashCode();
            if (hashCode != -1364013995) {
                if (hashCode == 108511772 && str5.equals("right")) {
                    c = 0;
                }
            } else if (str5.equals("center")) {
                c = 1;
            }
            if (c == 0) {
                f2 = (f21 + length4) - floatValue;
            } else if (c != 1) {
                f = f21;
                a(canvas4, textPaint, str4, f, f19 + (((float) i6) * f7), floatValue, f6, textItem2.mode);
            } else {
                f2 = f21 + ((length4 - floatValue) / 2.0f);
            }
            f = f2;
            a(canvas4, textPaint, str4, f, f19 + (((float) i6) * f7), floatValue, f6, textItem2.mode);
        }
        return bitmap4;
    }

    public static a a(Context context, AssetManager assetManager, TextItem textItem, b bVar) {
        RectF rectF = bVar.f1151b;
        float f = bVar.f;
        float f2 = bVar.d;
        float f3 = bVar.f1150a;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(g.a(context, assetManager, textItem, bVar.j));
        textPaint.setTextSize(bVar.c);
        String[] a2 = a(context, assetManager, textItem.text.replaceAll("/ +$/g", ""), bVar);
        ArrayList arrayList = new ArrayList();
        float f4 = 0.0f;
        for (String str : a2) {
            float a3 = a(str, (Paint) textPaint);
            f4 = Math.max(f4, (((float) str.length()) * f) + a3);
            arrayList.add(Float.valueOf(a3));
        }
        float length = (float) a2.length;
        float f5 = rectF.bottom;
        if (f3 > 0.0f) {
            f4 = Math.max(f4, f3);
        }
        a aVar = new a();
        aVar.f1148a = f4;
        aVar.f1149b = (f2 * length) + f5;
        aVar.c = a2;
        aVar.d = (Float[]) arrayList.toArray(new Float[arrayList.size()]);
        return aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00ea  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ed  */
    public static b a(Context context, AssetManager assetManager, TextItem textItem, int i) {
        RectF rectF;
        float f;
        int i2;
        float f2 = 0.0f;
        if (textItem.type == null || !textItem.type.equalsIgnoreCase("artwork")) {
            float f3 = (float) i;
            f = textItem.fontSize * f3 * 0.1f;
            float f4 = 0.2f * f;
            rectF = new RectF(0.0f, Math.max(0.0f, 1.2f - textItem.lineHeight) * f, f4, f4);
            if (textItem.wrap > 0.0f) {
                f2 = (f3 * textItem.wrap) - (rectF.left + rectF.right);
            }
        } else {
            f = textItem.fontSize * ((float) i) * 0.3f;
            rectF = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        }
        int i3 = 0;
        if (textItem.fontStyle != null) {
            String str = textItem.fontStyle;
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1657669071) {
                if (hashCode != -1178781136) {
                    if (hashCode == -1039745817 && str.equals("normal")) {
                        c = 0;
                    }
                } else if (str.equals("italic")) {
                    c = 1;
                }
            } else if (str.equals("oblique")) {
                c = 2;
            }
            if (c != 0 && (c == 1 || c == 2)) {
                i3 = 2;
            }
        }
        if (textItem.fontWeight != null && (textItem.fontWeight.equals("bold") || textItem.fontWeight.equals("900"))) {
            if (i3 == 0) {
                i2 = 1;
            } else if (i3 == 2) {
                i2 = 3;
            }
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTypeface(g.a(context, assetManager, textItem, i2));
            textPaint.setTextSize(f);
            b bVar = new b();
            bVar.f1150a = f2;
            bVar.f1151b = rectF;
            bVar.c = f;
            bVar.d = textItem.lineHeight * f;
            bVar.e = 0.01f * f;
            bVar.f = f * textItem.letterSpacing;
            bVar.g = textItem.scale == null ? textItem.scale : new float[]{1.0f, 1.0f};
            bVar.h = textItem.f1156color == null ? textItem.f1156color : new float[]{1.0f, 1.0f, 1.0f, 1.0f};
            bVar.i = (TextItem) k.a(k.a(textItem), TextItem.class);
            bVar.j = i2;
            return bVar;
        }
        i2 = i3;
        TextPaint textPaint2 = new TextPaint(1);
        textPaint2.setTypeface(g.a(context, assetManager, textItem, i2));
        textPaint2.setTextSize(f);
        b bVar2 = new b();
        bVar2.f1150a = f2;
        bVar2.f1151b = rectF;
        bVar2.c = f;
        bVar2.d = textItem.lineHeight * f;
        bVar2.e = 0.01f * f;
        bVar2.f = f * textItem.letterSpacing;
        bVar2.g = textItem.scale == null ? textItem.scale : new float[]{1.0f, 1.0f};
        bVar2.h = textItem.f1156color == null ? textItem.f1156color : new float[]{1.0f, 1.0f, 1.0f, 1.0f};
        bVar2.i = (TextItem) k.a(k.a(textItem), TextItem.class);
        bVar2.j = i2;
        return bVar2;
    }

    public static f a(Context context, AssetManager assetManager, TextItem textItem, co.polarr.renderer.entities.Context context2, f fVar) {
        int i;
        if (fVar != null) {
            GLES20.glBindTexture(3553, fVar.c);
            i = 0;
        } else {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            co.polarr.renderer.render.b.b(iArr[0]);
            GLES20.glBindTexture(3553, iArr[0]);
            i = iArr[0];
        }
        GLES20.glPixelStorei(3317, 1);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        Bitmap a2 = a(context, assetManager, textItem, context2);
        GLUtils.texImage2D(3553, 0, 6408, a2, 0);
        if (fVar == null) {
            fVar = i.c(i, 6408, a2.getWidth(), a2.getHeight());
        } else {
            fVar.d = a2.getWidth();
            fVar.e = a2.getHeight();
        }
        a2.recycle();
        return fVar;
    }

    private static String a(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
            if (i != list.size() - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static float[] a(TextItem textItem, co.polarr.renderer.entities.Context context, f fVar) {
        TextItem textItem2 = textItem;
        co.polarr.renderer.entities.Context context2 = context;
        f fVar2 = fVar;
        float f = (float) fVar2.d;
        float f2 = (float) fVar2.e;
        float f3 = ((float) context2.imageTexture.d) / ((float) context2.imageTexture.e);
        float[] fArr = textItem2.orientation % 2.0f != 0.0f ? new float[]{(float) context2.imageTexture.e, (float) context2.imageTexture.d} : new float[]{(float) context2.imageTexture.d, (float) context2.imageTexture.e};
        float f4 = fArr[0];
        float f5 = fArr[1];
        float[] a2 = h.a();
        float[] a3 = h.a();
        float[] a4 = h.a();
        Matrix.orthoM(a3, 0, f4 / -2.0f, f4 / 2.0f, f5 / -2.0f, f5 / 2.0f, -1.0f, 1.0f);
        Matrix.invertM(a4, 0, a3, 0);
        if (textItem2.position == null) {
            textItem2.position = new float[]{0.0f, 0.0f};
        }
        Matrix.translateM(a2, 0, (textItem2.position[0] - 0.5f) * 2.0f, (textItem2.position[1] - 0.5f) * 2.0f * f3, 0.0f);
        float[] fArr2 = a2;
        Matrix.multiplyMM(a2, 0, a2, 0, a3, 0);
        float[] fArr3 = fArr2;
        Matrix.rotateM(fArr3, 0, textItem2.angle + textItem2.orientation, 0.0f, 0.0f, 1.0f);
        Matrix.multiplyMM(fArr3, 0, fArr2, 0, a4, 0);
        Matrix.scaleM(fArr2, 0, f / ((float) context2.imageTexture.d), f2 / ((float) context2.imageTexture.e), 1.0f);
        return fArr2;
    }

    private static float[] a(String[] strArr, TextPaint textPaint) {
        float[] fArr = new float[strArr.length];
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            fArr[i2] = a(strArr[i], (Paint) textPaint);
            i++;
            i2++;
        }
        return fArr;
    }

    public static String[] a(Context context, AssetManager assetManager, String str, b bVar) {
        String str2 = str;
        b bVar2 = bVar;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(g.a(context, assetManager, bVar2.i, bVar2.j));
        textPaint.setTextSize(bVar2.c);
        float f = bVar2.f;
        float f2 = bVar2.f1150a;
        float f3 = 0.0f;
        if (f2 == 0.0f) {
            return str2.split("\n");
        }
        ArrayList arrayList = new ArrayList();
        float a2 = a(" ", (Paint) textPaint);
        float f4 = (float) ((int) f2);
        String[] split = str2.split("\n");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str3 = split[i];
            ArrayList arrayList2 = new ArrayList();
            float f5 = f3;
            int i2 = 0;
            for (String str4 : str3.split(" ")) {
                float a3 = a(str4, (Paint) textPaint) + (((float) str4.length()) * f);
                f5 += a3;
                if (f5 <= f4) {
                    f5 += a2 + f;
                } else if (i2 > 0) {
                    arrayList.add(a((List<String>) arrayList2, " "));
                    arrayList2.clear();
                    f5 = a3;
                }
                arrayList2.add(str4);
                i2++;
            }
            i++;
            f3 = 0.0f;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
