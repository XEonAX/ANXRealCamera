package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* compiled from: PageTransformerAdapter */
final class d extends ViewPager2.b {

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayoutManager f1073a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager2.c f1074b;

    /* access modifiers changed from: package-private */
    public ViewPager2.c a() {
        return this.f1074b;
    }

    public void a(int i) {
    }

    public void a(int i, float f, int i2) {
        if (this.f1074b != null) {
            float f2 = -f;
            int i3 = 0;
            while (i3 < this.f1073a.z()) {
                View i4 = this.f1073a.i(i3);
                if (i4 != null) {
                    this.f1074b.a(i4, ((float) (this.f1073a.d(i4) - i)) + f2);
                    i3++;
                } else {
                    throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", new Object[]{Integer.valueOf(i3), Integer.valueOf(this.f1073a.z())}));
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(ViewPager2.c cVar) {
        this.f1074b = cVar;
    }

    public void b(int i) {
    }
}
