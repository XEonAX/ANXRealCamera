package co.polarr.renderer.textureview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import co.polarr.renderer.render.b;
import co.polarr.renderer.render.d;

public class GLTextureView extends TextureView {

    /* renamed from: a  reason: collision with root package name */
    private d f1290a;

    /* renamed from: b  reason: collision with root package name */
    private c f1291b;

    public GLTextureView(Context context) {
        super(context);
        a();
    }

    public GLTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public GLTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public void a() {
        this.f1291b = new c();
        this.f1291b.start();
        setSurfaceTextureListener(this.f1291b);
        b();
    }

    public void b() {
        if (this.f1290a == null) {
            b bVar = new b(getContext(), getResources(), this.f1291b);
            this.f1291b.a(bVar);
            this.f1290a = new d(bVar) {
                /* access modifiers changed from: protected */
                public Context b() {
                    return GLTextureView.this.getContext();
                }
            };
        }
    }

    public d getRenderDelegate() {
        return this.f1290a;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1291b.a();
    }
}
