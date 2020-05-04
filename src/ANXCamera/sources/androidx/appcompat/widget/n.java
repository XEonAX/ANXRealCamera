package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.g.t;
import androidx.core.widget.l;

/* compiled from: AppCompatImageView */
public class n extends ImageView implements t, l {

    /* renamed from: a  reason: collision with root package name */
    private final e f394a;

    /* renamed from: b  reason: collision with root package name */
    private final m f395b;

    public n(Context context) {
        this(context, (AttributeSet) null);
    }

    public n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public n(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f394a = new e(this);
        this.f394a.a(attributeSet, i);
        this.f395b = new m(this);
        this.f395b.a(attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f394a;
        if (eVar != null) {
            eVar.c();
        }
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f394a;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f394a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        m mVar = this.f395b;
        if (mVar != null) {
            return mVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        m mVar = this.f395b;
        if (mVar != null) {
            return mVar.c();
        }
        return null;
    }

    public boolean hasOverlappingRendering() {
        return this.f395b.a() && super.hasOverlappingRendering();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f394a;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f394a;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setImageResource(int i) {
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.a(i);
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f394a;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f394a;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.a(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        m mVar = this.f395b;
        if (mVar != null) {
            mVar.a(mode);
        }
    }
}
