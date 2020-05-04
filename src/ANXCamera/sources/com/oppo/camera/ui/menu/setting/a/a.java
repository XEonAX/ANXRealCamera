package com.oppo.camera.ui.menu.setting.a;

import android.app.Activity;
import android.view.MenuItem;
import androidx.appcompat.app.e;

/* compiled from: ActivityDelegate */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f2815a;

    /* renamed from: b  reason: collision with root package name */
    private final com.oppo.camera.ui.menu.setting.a f2816b = ((com.oppo.camera.ui.menu.setting.a) this.f2815a);

    public a(Activity activity) {
        this.f2815a = activity;
    }

    public void a() {
    }

    public void a(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.f2815a.finish();
        }
    }

    public void a(e eVar) {
        b.a(this.f2815a, this.f2816b.c());
    }

    public void b(e eVar) {
        androidx.appcompat.app.a a2 = eVar.a();
        if (a2 != null) {
            a2.a(this.f2816b.a());
        }
        if (this.f2816b.M_()) {
            c.a(this.f2815a);
        }
    }
}
