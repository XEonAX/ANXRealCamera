package co.polarr.renderer.filters.a;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.c;
import co.polarr.renderer.entities.Context;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.util.LinkedHashMap;

public class b extends a {
    private static final String defaultVertexShader = "vertex.glsl";
    protected String H;

    /* renamed from: a  reason: collision with root package name */
    private String f1167a;

    /* renamed from: b  reason: collision with root package name */
    private LinkedHashMap<String, Float> f1168b = new LinkedHashMap<>();

    protected b(Resources resources, String str, Context context) {
        super(context, resources);
        this.f1167a = str;
        this.H = defaultVertexShader;
    }

    /* access modifiers changed from: protected */
    public void a(int i, int i2) {
    }

    public void a(Context context) {
        this.u = context;
    }

    public void a(String str, Object obj) {
        this.f1168b.put(str, (Float) obj);
    }

    /* access modifiers changed from: protected */
    public void a(String[] strArr) {
        float f;
        LinkedHashMap<String, Float> linkedHashMap;
        if (strArr != null) {
            for (String str : strArr) {
                if (c.f1152a.containsKey(str)) {
                    linkedHashMap = this.f1168b;
                    f = ((Float) c.f1152a.get(str)).floatValue();
                } else {
                    linkedHashMap = this.f1168b;
                    f = 0.0f;
                }
                linkedHashMap.put(str, Float.valueOf(f));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        Context context = this.u;
        float[] fArr = Context.backgroundColor;
        GLES20.glClearColor(fArr[0], fArr[1], fArr[2], 1.0f);
        GLES20.glClear(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR);
    }

    /* access modifiers changed from: protected */
    public void b_() {
        b(this.H, this.f1167a);
    }

    public boolean c() {
        if (this.f1168b.isEmpty()) {
            return false;
        }
        for (String next : this.f1168b.keySet()) {
            Object a2 = c.a(next, this.u.renderStates);
            if (a2 == null) {
                a2 = this.f1168b.get(next);
            }
            if (((Float) c.f1152a.get(next)).floatValue() != Float.parseFloat(a2.toString())) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        if (!this.f1168b.isEmpty()) {
            for (String next : this.f1168b.keySet()) {
                int glGetUniformLocation = GLES20.glGetUniformLocation(this.x, next);
                Object a2 = c.a(next, this.u.renderStates);
                GLES20.glUniform1f(glGetUniformLocation, a2 != null ? Float.parseFloat(a2.toString()) : this.f1168b.get(next).floatValue());
            }
        }
    }
}
