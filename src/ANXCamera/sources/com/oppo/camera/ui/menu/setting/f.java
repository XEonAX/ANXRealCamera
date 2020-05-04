package com.oppo.camera.ui.menu.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.oppo.camera.ui.d;
import com.oppo.camera.ui.menu.a;
import com.oppo.camera.ui.menu.i;

/* compiled from: CameraMenuOptionSecondLevel */
public class f extends CameraMenuOption implements View.OnClickListener {
    private i k = null;

    public f(Context context, d dVar, int i) {
        super(context, (a) null, (e) null, dVar, i, (String) null);
    }

    public View A() {
        return this.k;
    }

    public void a(int i, boolean z) {
        i iVar = this.k;
        if (iVar != null) {
            iVar.a(i, z);
        }
        super.a(i, z);
    }

    public void a(Bitmap bitmap, boolean z) {
        i iVar = this.k;
        if (iVar != null) {
            iVar.a(bitmap, z);
        }
    }

    public void a(View view) {
        this.k = (i) view;
    }

    public void b() {
        this.k = new i(this.e, this.i);
        this.k.setOnClickListener(this);
    }

    public void b(boolean z) {
        i iVar = this.k;
        if (iVar != null) {
            iVar.setSelectState(z);
        }
    }

    public void h(String str) {
        i iVar = this.k;
        if (iVar != null) {
            iVar.setItemText(str);
            this.k.setContentDescription(str);
        }
    }

    public void onClick(View view) {
        if (this.h != null) {
            this.h.a(this);
        }
    }

    /* access modifiers changed from: protected */
    public boolean p() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void r() {
        i iVar = this.k;
        if (iVar != null) {
            iVar.a();
            super.r();
            a((View) null);
        }
    }

    public int s() {
        i iVar = this.k;
        return iVar != null ? iVar.getViewWidth() : super.s();
    }

    public int t() {
        i iVar = this.k;
        return iVar != null ? iVar.getViewHeight() : super.t();
    }
}
