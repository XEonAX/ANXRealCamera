package co.polarr.renderer.render;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class GLRenderView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public static int f1270a = 30;

    /* renamed from: b  reason: collision with root package name */
    private d f1271b;
    private GLSurfaceView c;

    public GLRenderView(Context context) {
        super(context);
        a();
    }

    public GLRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public GLRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public void a() {
        if (this.f1271b == null) {
            Context context = getContext();
            this.c = new GLSurfaceView(context);
            b bVar = new b(context, getResources(), this.c);
            this.f1271b = new d(bVar) {
                /* access modifiers changed from: protected */
                public Context b() {
                    return GLRenderView.this.getContext();
                }
            };
            this.c.setEGLContextClientVersion(2);
            this.c.setRenderer(bVar);
            addView(this.c, -1, -1);
        }
    }

    public d getRenderDelegate() {
        return this.f1271b;
    }
}
