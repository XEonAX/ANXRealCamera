package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.appcompat.R;
import androidx.core.g.t;

/* compiled from: AppCompatImageButton */
public class l extends ImageButton implements t, androidx.core.widget.l {

    /* renamed from: a  reason: collision with root package name */
    private final e f390a;

    /* renamed from: b  reason: collision with root package name */
    private final m f391b;

    public l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public l(Context context, AttributeSet attributeSet, int i) {
        super(ar.a(context), attributeSet, i);
        this.f390a = new e(this);
        this.f390a.a(attributeSet, i);
        this.f391b = new m(this);
        this.f391b.a(attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f390a;
        if (eVar != null) {
            eVar.c();
        }
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f390a;
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f390a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        m mVar = this.f391b;
        if (mVar != null) {
            return mVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        m mVar = this.f391b;
        if (mVar != null) {
            return mVar.c();
        }
        return null;
    }

    public boolean hasOverlappingRendering() {
        return this.f391b.a() && super.hasOverlappingRendering();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f390a;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f390a;
        if (eVar != null) {
            eVar.a(i);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setImageResource(int i) {
        this.f391b.a(i);
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f390a;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f390a;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.a(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        m mVar = this.f391b;
        if (mVar != null) {
            mVar.a(mode);
        }
    }
}
