package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* compiled from: TintResources */
class at extends al {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f348a;

    public at(Context context, Resources resources) {
        super(resources);
        this.f348a = new WeakReference<>(context);
    }

    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = (Context) this.f348a.get();
        if (!(drawable == null || context == null)) {
            ak.a().a(context, i, drawable);
        }
        return drawable;
    }
}
