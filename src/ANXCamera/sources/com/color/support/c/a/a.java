package com.color.support.c.a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.g.a.d;
import com.google.protobuf.nano.MessageNano;
import java.util.List;

/* compiled from: ColorViewExplorerByTouchHelper */
public class a extends androidx.customview.a.a {
    private final Rect c = new Rect();
    private View d = null;
    private C0046a e = null;

    /* renamed from: com.color.support.c.a.a$a  reason: collision with other inner class name */
    /* compiled from: ColorViewExplorerByTouchHelper */
    public interface C0046a {
        int a();

        int a(float f, float f2);

        CharSequence a(int i);

        void a(int i, int i2, boolean z);

        void a(int i, Rect rect);

        int b();

        CharSequence c();

        int d();
    }

    public a(View view) {
        super(view);
        this.d = view;
    }

    private void a(int i, Rect rect) {
        if (i >= 0 && i < this.e.b()) {
            this.e.a(i, rect);
        }
    }

    /* access modifiers changed from: protected */
    public int a(float f, float f2) {
        int a2 = this.e.a(f, f2);
        return a2 >= 0 ? a2 : MessageNano.UNSET_ENUM_VALUE;
    }

    /* access modifiers changed from: protected */
    public void a(int i, AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setContentDescription(this.e.a(i));
    }

    /* access modifiers changed from: protected */
    public void a(int i, d dVar) {
        a(i, this.c);
        dVar.e(this.e.a(i));
        dVar.b(this.c);
        if (this.e.c() != null) {
            dVar.b(this.e.c());
        }
        dVar.a(16);
        if (i == this.e.a()) {
            dVar.e(true);
        }
        if (i == this.e.d()) {
            dVar.g(false);
        }
    }

    public void a(C0046a aVar) {
        this.e = aVar;
    }

    /* access modifiers changed from: protected */
    public void a(List<Integer> list) {
        for (int i = 0; i < this.e.b(); i++) {
            list.add(Integer.valueOf(i));
        }
    }

    /* access modifiers changed from: protected */
    public boolean b(int i, int i2, Bundle bundle) {
        if (i2 != 16) {
            return false;
        }
        this.e.a(i, 16, false);
        return true;
    }
}
