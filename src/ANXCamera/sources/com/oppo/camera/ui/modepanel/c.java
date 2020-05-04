package com.oppo.camera.ui.modepanel;

import android.app.Activity;
import android.view.ViewGroup;
import com.oppo.camera.ui.modepanel.d;

/* compiled from: ModePanelUIControl */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Activity f2846a = null;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f2847b = null;
    private d c = null;
    private d.a d = null;

    public c(Activity activity, ViewGroup viewGroup) {
        this.f2846a = activity;
        this.f2847b = viewGroup;
    }

    private void b() {
        if (this.c == null) {
            this.c = new d(this.f2846a, this.f2847b);
            this.c.a(this.d);
        }
    }

    public void a(d.a aVar) {
        this.d = aVar;
    }

    public void a(String str) {
        b();
        this.c.a(str);
    }

    public void a(boolean z) {
        b();
        this.c.a(0, z);
    }

    public boolean a() {
        d dVar = this.c;
        if (dVar != null) {
            return dVar.a();
        }
        return false;
    }

    public void b(boolean z) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(8, z);
        }
    }
}
