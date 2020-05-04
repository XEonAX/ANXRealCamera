package androidx.core.g;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* compiled from: PointerIconCompat */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private Object f570a;

    private s(Object obj) {
        this.f570a = obj;
    }

    public static s a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new s(PointerIcon.getSystemIcon(context, i)) : new s((Object) null);
    }

    public Object a() {
        return this.f570a;
    }
}
