package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: AnimateLayoutChangeDetector */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ViewGroup.MarginLayoutParams f1068a = new ViewGroup.MarginLayoutParams(-1, -1);

    /* renamed from: b  reason: collision with root package name */
    private LinearLayoutManager f1069b;

    static {
        f1068a.setMargins(0, 0, 0, 0);
    }

    a(LinearLayoutManager linearLayoutManager) {
        this.f1069b = linearLayoutManager;
    }

    private static boolean a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (a(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean b() {
        int i;
        int i2;
        int i3;
        int i4;
        int z = this.f1069b.z();
        if (z == 0) {
            return true;
        }
        boolean z2 = this.f1069b.h() == 0;
        int[][] iArr = (int[][]) Array.newInstance(int.class, new int[]{z, 2});
        int i5 = 0;
        while (i5 < z) {
            View i6 = this.f1069b.i(i5);
            if (i6 != null) {
                ViewGroup.LayoutParams layoutParams = i6.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f1068a;
                int[] iArr2 = iArr[i5];
                if (z2) {
                    i2 = i6.getLeft();
                    i = marginLayoutParams.leftMargin;
                } else {
                    i2 = i6.getTop();
                    i = marginLayoutParams.topMargin;
                }
                iArr2[0] = i2 - i;
                int[] iArr3 = iArr[i5];
                if (z2) {
                    i4 = i6.getRight();
                    i3 = marginLayoutParams.rightMargin;
                } else {
                    i4 = i6.getBottom();
                    i3 = marginLayoutParams.bottomMargin;
                }
                iArr3[1] = i4 + i3;
                i5++;
            } else {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
        }
        Arrays.sort(iArr, new Comparator<int[]>() {
            /* renamed from: a */
            public int compare(int[] iArr, int[] iArr2) {
                return iArr[0] - iArr2[0];
            }
        });
        for (int i7 = 1; i7 < z; i7++) {
            if (iArr[i7 - 1][1] != iArr[i7][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[z - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    private boolean c() {
        int z = this.f1069b.z();
        for (int i = 0; i < z; i++) {
            if (a(this.f1069b.i(i))) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return (!b() || this.f1069b.z() <= 1) && c();
    }
}
