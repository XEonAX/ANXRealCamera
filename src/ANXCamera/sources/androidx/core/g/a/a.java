package androidx.core.g.a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: AccessibilityClickableSpanCompat */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    private final int f542a;

    /* renamed from: b  reason: collision with root package name */
    private final d f543b;
    private final int c;

    public a(int i, d dVar, int i2) {
        this.f542a = i;
        this.f543b = dVar;
        this.c = i2;
    }

    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f542a);
        this.f543b.a(this.c, bundle);
    }
}
