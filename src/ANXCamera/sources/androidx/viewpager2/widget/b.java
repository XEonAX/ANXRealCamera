package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ConcurrentModificationException;
import java.util.List;

/* compiled from: CompositeOnPageChangeCallback */
final class b extends ViewPager2.b {

    /* renamed from: a  reason: collision with root package name */
    private final List<ViewPager2.b> f1071a;

    private void a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    public void a(int i) {
        try {
            for (ViewPager2.b a2 : this.f1071a) {
                a2.a(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    public void a(int i, float f, int i2) {
        try {
            for (ViewPager2.b a2 : this.f1071a) {
                a2.a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    public void b(int i) {
        try {
            for (ViewPager2.b b2 : this.f1071a) {
                b2.b(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }
}
