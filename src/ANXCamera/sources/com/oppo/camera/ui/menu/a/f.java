package com.oppo.camera.ui.menu.a;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: FaceBeautyItemDecoration */
class f extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private int f2713a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2714b = 0;
    private int c = 0;
    private int d = 0;

    public f(int i, int i2, int i3) {
        a(i, i2 / 2, i3);
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public void a(int i, int i2, int i3) {
        this.f2713a = i;
        this.f2714b = i2;
        this.c = i3;
        this.d = i3;
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        int f = recyclerView.f(view);
        boolean z = 1 == recyclerView.getLayoutDirection();
        if (f == 0) {
            rect.left = z ? this.f2714b : this.c;
            rect.right = z ? this.c : this.f2714b;
        } else if (this.f2713a - 1 == f) {
            rect.left = z ? this.d : this.f2714b;
            rect.right = z ? this.f2714b : this.d;
        } else {
            int i = this.f2714b;
            rect.left = i;
            rect.right = i;
        }
    }
}
