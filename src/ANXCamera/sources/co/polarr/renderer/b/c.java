package co.polarr.renderer.b;

import android.opengl.Matrix;
import co.polarr.renderer.entities.Context;

public class c {

    /* renamed from: a  reason: collision with root package name */
    private static float f1118a = -1.0f;

    public static float a(Context context, int i, int i2, boolean z, float[] fArr) {
        if (context.imageTexture == null) {
            return 1.0f;
        }
        float[] b2 = b(context);
        float[] fArr2 = context.margins;
        float f = context.margin;
        if (fArr == null) {
            fArr = a(context);
        }
        return Math.min(1.0f, Math.min(((((float) i) - ((fArr2[0] + fArr2[2]) * d(context))) - f) / ((context.cropMode || z) ? fArr[0] : b2[2]), ((((float) i2) - ((fArr2[1] + fArr2[3]) * d(context))) - f) / ((context.cropMode || z) ? fArr[1] : b2[3])));
    }

    public static void a(Context context, float f, float f2) {
        float max = Math.max(100.0f, f);
        float max2 = Math.max(100.0f, f2);
        context.fov = (float) Math.tan((double) 0.3926991f);
        context.invFov = -1.0f / context.fov;
        float[] a2 = h.a();
        h.a(a2, 0.7853982f, 1, 0.1f, 1000);
        Matrix.scaleM(a2, 0, a2, 0, 1.0f / (max / 2.0f), 1.0f / (max2 / 2.0f), 1.0f);
        context.perspectiveMatrix = a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0042  */
    public static float[] a(Context context) {
        int i;
        if (context.imageTexture == null) {
            return new float[]{0.0f, 0.0f};
        }
        if (context.renderStates.containsKey("rotate90")) {
            try {
                i = (int) ((Float) context.renderStates.get("rotate90")).floatValue();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (Math.abs(i) % 2 <= 0) {
                return new float[]{(float) context.imageTexture.e, (float) context.imageTexture.d};
            }
            return new float[]{(float) context.imageTexture.d, (float) context.imageTexture.e};
        }
        i = 0;
        if (Math.abs(i) % 2 <= 0) {
        }
    }

    public static float[] b(Context context) {
        if (context.imageTexture == null) {
            return new float[]{0.0f, 0.0f, 1.0f, 1.0f};
        }
        float[] a2 = a(context);
        float f = a2[0];
        float f2 = a2[1];
        float[] fArr = (float[]) co.polarr.renderer.c.a("crop", context.renderStates);
        if (fArr == null) {
            fArr = new float[]{0.0f, 0.0f, 1.0f, 1.0f};
        }
        return new float[]{fArr[0] * f, fArr[1] * f2, fArr[2] * f, fArr[3] * f2};
    }

    public static void c(Context context) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        Context context2 = context;
        if (context2.imageTexture != null) {
            float[] fArr = (float[]) co.polarr.renderer.c.a("crop", context2.renderStates);
            float[] b2 = b(context);
            float f7 = (((float) context2.imageTexture.d) * context2.screen.zoom) / context2.cropScale;
            float f8 = (((float) context2.imageTexture.e) * context2.screen.zoom) / context2.cropScale;
            float floatValue = context2.rotation + context2.screen.rotation[2] + ((float) (((int) ((Float) context2.renderStates.get("rotate90")).floatValue()) * 90));
            float[] a2 = a(context);
            if (context2.cropMode) {
                f5 = (float) Math.round(f8 / 2.0f);
                f2 = context2.screen.rotation[0];
                f = context2.screen.rotation[1];
                f3 = 0.0f;
                f4 = (float) Math.round(f7 / 2.0f);
                f6 = 0.0f;
            } else {
                f4 = (float) Math.round((b2[2] / 2.0f) * context2.screen.zoom);
                f5 = (float) Math.round((b2[3] / 2.0f) * context2.screen.zoom);
                f3 = context2.screen.zoom * (((1.0f - fArr[2]) / 2.0f) - fArr[0]) * a2[0];
                f6 = context2.screen.zoom * (((1.0f - fArr[3]) / 2.0f) - fArr[1]) * a2[1];
                f2 = 0.0f;
                f = 0.0f;
            }
            float[] fArr2 = context2.margins;
            float d = ((-context2.screen.offset[0]) + context2.screen.center[0]) - (((fArr2[0] - fArr2[2]) * d(context)) / 2.0f);
            float d2 = ((-context2.screen.offset[1]) - context2.screen.center[1]) - (((fArr2[1] - fArr2[3]) * d(context)) / 2.0f);
            context2.overlay.imageWidth = a2[0];
            context2.overlay.imageHeight = a2[1];
            context2.overlay.width = f7;
            context2.overlay.height = f8;
            context2.overlay.rotation = floatValue;
            Object a3 = co.polarr.renderer.c.a("flip_x", context2.renderStates);
            boolean booleanValue = a3 instanceof Boolean ? ((Boolean) a3).booleanValue() : false;
            Object a4 = co.polarr.renderer.c.a("flip_y", context2.renderStates);
            boolean booleanValue2 = a4 instanceof Boolean ? ((Boolean) a4).booleanValue() : false;
            int i = -1;
            context2.overlay.flipX = booleanValue ? -1 : 1;
            Context.Overlay overlay = context2.overlay;
            if (!booleanValue2) {
                i = 1;
            }
            overlay.flipY = i;
            context2.overlay.tx = f3 + d;
            context2.overlay.ty = d2 - f6;
            float[] fArr3 = {d, d2, context2.invFov};
            float[] fArr4 = {f4, f5, 1.0f};
            float[] fArr5 = {context2.overlay.tx, context2.overlay.ty, context2.invFov};
            float[] fArr6 = {f7 * ((float) context2.overlay.flipX) * 0.5f, f8 * ((float) context2.overlay.flipY) * 0.5f, 1.0f};
            float[] fArr7 = context2.screenMatrix;
            Matrix.setIdentityM(fArr7, 0);
            Matrix.rotateM(fArr7, 0, context2.perspectiveMatrix, 0, (float) (-context2.screen.orientation), 0.0f, 0.0f, 1.0f);
            Matrix.translateM(context2.overlayMatrix, 0, context2.perspectiveMatrix, 0, fArr5[0], fArr5[1], fArr5[2]);
            Matrix.translateM(fArr7, 0, context2.perspectiveMatrix, 0, fArr3[0], fArr3[1], fArr3[2]);
            if (context2.cropMode) {
                Matrix.rotateM(fArr7, 0, fArr7, 0, -floatValue, 0.0f, 0.0f, 1.0f);
                Matrix.scaleM(fArr7, 0, fArr7, 0, fArr4[0], fArr4[1], fArr4[2]);
                Matrix.rotateM(fArr7, 0, fArr7, 0, f2, 1.0f, 0.0f, 0.0f);
                Matrix.rotateM(fArr7, 0, fArr7, 0, f, 0.0f, 1.0f, 0.0f);
            } else {
                Matrix.scaleM(fArr7, 0, fArr7, 0, fArr4[0], fArr4[1], fArr4[2]);
            }
            Matrix.rotateM(context2.overlayMatrix, 0, context2.overlayMatrix, 0, -floatValue, 0.0f, 0.0f, 1.0f);
            Matrix.scaleM(context2.overlayMatrix, 0, context2.overlayMatrix, 0, fArr6[0], fArr6[1], fArr6[2]);
            h.a(fArr7, false, true);
        }
    }

    public static float d(Context context) {
        if (f1118a == -1.0f) {
            f1118a = context.resources.getDisplayMetrics().density;
        }
        return f1118a;
    }
}
