package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.g.a.d;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager extends RecyclerView.i implements RecyclerView.s.b {
    private SavedState A;
    private int B;
    private final Rect C = new Rect();
    private final a D = new a();
    private boolean E = false;
    private boolean F = true;
    private int[] G;
    private final Runnable H = new Runnable() {
        public void run() {
            StaggeredGridLayoutManager.this.b();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    c[] f918a;

    /* renamed from: b  reason: collision with root package name */
    m f919b;
    m c;
    boolean d = false;
    boolean e = false;
    int f = -1;
    int g = MessageNano.UNSET_ENUM_VALUE;
    LazySpanLookup h = new LazySpanLookup();
    private int i = -1;
    private int j;
    private int k;
    private final i l;
    private BitSet m;
    private int n = 2;
    private boolean o;
    private boolean z;

    static class LazySpanLookup {

        /* renamed from: a  reason: collision with root package name */
        int[] f921a;

        /* renamed from: b  reason: collision with root package name */
        List<FullSpanItem> f922b;

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() {
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* renamed from: a */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.mPosition = parcel.readInt();
                this.mGapDir = parcel.readInt();
                this.mHasUnwantedGapAfter = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.mGapPerSpan = new int[readInt];
                    parcel.readIntArray(this.mGapPerSpan);
                }
            }

            public int describeContents() {
                return 0;
            }

            /* access modifiers changed from: package-private */
            public int getGapForSpan(int i) {
                int[] iArr = this.mGapPerSpan;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.mPosition);
                parcel.writeInt(this.mGapDir);
                parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
                int[] iArr = this.mGapPerSpan;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.mGapPerSpan);
            }
        }

        LazySpanLookup() {
        }

        private void c(int i, int i2) {
            List<FullSpanItem> list = this.f922b;
            if (list != null) {
                int i3 = i + i2;
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f922b.get(size);
                    if (fullSpanItem.mPosition >= i) {
                        if (fullSpanItem.mPosition < i3) {
                            this.f922b.remove(size);
                        } else {
                            fullSpanItem.mPosition -= i2;
                        }
                    }
                }
            }
        }

        private void d(int i, int i2) {
            List<FullSpanItem> list = this.f922b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f922b.get(size);
                    if (fullSpanItem.mPosition >= i) {
                        fullSpanItem.mPosition += i2;
                    }
                }
            }
        }

        private int g(int i) {
            if (this.f922b == null) {
                return -1;
            }
            FullSpanItem f = f(i);
            if (f != null) {
                this.f922b.remove(f);
            }
            int size = this.f922b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f922b.get(i2).mPosition >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            this.f922b.remove(i2);
            return this.f922b.get(i2).mPosition;
        }

        /* access modifiers changed from: package-private */
        public int a(int i) {
            List<FullSpanItem> list = this.f922b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f922b.get(size).mPosition >= i) {
                        this.f922b.remove(size);
                    }
                }
            }
            return b(i);
        }

        public FullSpanItem a(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.f922b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f922b.get(i4);
                if (fullSpanItem.mPosition >= i2) {
                    return null;
                }
                if (fullSpanItem.mPosition >= i && (i3 == 0 || fullSpanItem.mGapDir == i3 || (z && fullSpanItem.mHasUnwantedGapAfter))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            int[] iArr = this.f921a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f922b = null;
        }

        /* access modifiers changed from: package-private */
        public void a(int i, int i2) {
            int[] iArr = this.f921a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                e(i3);
                int[] iArr2 = this.f921a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f921a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                c(i, i2);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i, c cVar) {
            e(i);
            this.f921a[i] = cVar.e;
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f922b == null) {
                this.f922b = new ArrayList();
            }
            int size = this.f922b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f922b.get(i);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.f922b.remove(i);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.f922b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f922b.add(fullSpanItem);
        }

        /* access modifiers changed from: package-private */
        public int b(int i) {
            int[] iArr = this.f921a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int g = g(i);
            if (g == -1) {
                int[] iArr2 = this.f921a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f921a.length;
            }
            int i2 = g + 1;
            Arrays.fill(this.f921a, i, i2, -1);
            return i2;
        }

        /* access modifiers changed from: package-private */
        public void b(int i, int i2) {
            int[] iArr = this.f921a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                e(i3);
                int[] iArr2 = this.f921a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f921a, i, i3, -1);
                d(i, i2);
            }
        }

        /* access modifiers changed from: package-private */
        public int c(int i) {
            int[] iArr = this.f921a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* access modifiers changed from: package-private */
        public int d(int i) {
            int length = this.f921a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        /* access modifiers changed from: package-private */
        public void e(int i) {
            int[] iArr = this.f921a;
            if (iArr == null) {
                this.f921a = new int[(Math.max(i, 10) + 1)];
                Arrays.fill(this.f921a, -1);
            } else if (i >= iArr.length) {
                this.f921a = new int[d(i)];
                System.arraycopy(iArr, 0, this.f921a, 0, iArr.length);
                int[] iArr2 = this.f921a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        public FullSpanItem f(int i) {
            List<FullSpanItem> list = this.f922b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f922b.get(size);
                if (fullSpanItem.mPosition == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            this.mSpanOffsetsSize = parcel.readInt();
            int i = this.mSpanOffsetsSize;
            if (i > 0) {
                this.mSpanOffsets = new int[i];
                parcel.readIntArray(this.mSpanOffsets);
            }
            this.mSpanLookupSize = parcel.readInt();
            int i2 = this.mSpanLookupSize;
            if (i2 > 0) {
                this.mSpanLookup = new int[i2];
                parcel.readIntArray(this.mSpanLookup);
            }
            boolean z = false;
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1 ? true : z;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }

        public int describeContents() {
            return 0;
        }

        /* access modifiers changed from: package-private */
        public void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        /* access modifiers changed from: package-private */
        public void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    class a {

        /* renamed from: a  reason: collision with root package name */
        int f923a;

        /* renamed from: b  reason: collision with root package name */
        int f924b;
        boolean c;
        boolean d;
        boolean e;
        int[] f;

        a() {
            a();
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.f923a = -1;
            this.f924b = MessageNano.UNSET_ENUM_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i) {
            if (this.c) {
                this.f924b = StaggeredGridLayoutManager.this.f919b.d() - i;
            } else {
                this.f924b = StaggeredGridLayoutManager.this.f919b.c() + i;
            }
        }

        /* access modifiers changed from: package-private */
        public void a(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f;
            if (iArr == null || iArr.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.f918a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = cVarArr[i].a((int) MessageNano.UNSET_ENUM_VALUE);
            }
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.f924b = this.c ? StaggeredGridLayoutManager.this.f919b.d() : StaggeredGridLayoutManager.this.f919b.c();
        }
    }

    public static class b extends RecyclerView.j {

        /* renamed from: a  reason: collision with root package name */
        c f925a;

        /* renamed from: b  reason: collision with root package name */
        boolean f926b;

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public boolean a() {
            return this.f926b;
        }

        public final int b() {
            c cVar = this.f925a;
            if (cVar == null) {
                return -1;
            }
            return cVar.e;
        }
    }

    class c {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<View> f927a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        int f928b = MessageNano.UNSET_ENUM_VALUE;
        int c = MessageNano.UNSET_ENUM_VALUE;
        int d = 0;
        final int e;

        c(int i) {
            this.e = i;
        }

        /* access modifiers changed from: package-private */
        public int a(int i) {
            int i2 = this.f928b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f927a.size() == 0) {
                return i;
            }
            a();
            return this.f928b;
        }

        /* access modifiers changed from: package-private */
        public int a(int i, int i2, boolean z) {
            return a(i, i2, false, false, z);
        }

        /* access modifiers changed from: package-private */
        public int a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int c2 = StaggeredGridLayoutManager.this.f919b.c();
            int d2 = StaggeredGridLayoutManager.this.f919b.d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f927a.get(i);
                int a2 = StaggeredGridLayoutManager.this.f919b.a(view);
                int b2 = StaggeredGridLayoutManager.this.f919b.b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? a2 < d2 : a2 <= d2;
                if (!z3 ? b2 > c2 : b2 >= c2) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.d(view);
                        }
                        if (a2 < c2 || b2 > d2) {
                            return StaggeredGridLayoutManager.this.d(view);
                        }
                    } else if (a2 >= c2 && b2 <= d2) {
                        return StaggeredGridLayoutManager.this.d(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        public View a(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.f927a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f927a.get(size);
                    if ((StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.d(view2) >= i) || ((!StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.d(view2) <= i) || !view2.hasFocusable())) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f927a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.f927a.get(i3);
                    if ((StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.d(view3) <= i) || ((!StaggeredGridLayoutManager.this.d && StaggeredGridLayoutManager.this.d(view3) >= i) || !view3.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            View view = this.f927a.get(0);
            b c2 = c(view);
            this.f928b = StaggeredGridLayoutManager.this.f919b.a(view);
            if (c2.f926b) {
                LazySpanLookup.FullSpanItem f2 = StaggeredGridLayoutManager.this.h.f(c2.f());
                if (f2 != null && f2.mGapDir == -1) {
                    this.f928b -= f2.getGapForSpan(this.e);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(View view) {
            b c2 = c(view);
            c2.f925a = this;
            this.f927a.add(0, view);
            this.f928b = MessageNano.UNSET_ENUM_VALUE;
            if (this.f927a.size() == 1) {
                this.c = MessageNano.UNSET_ENUM_VALUE;
            }
            if (c2.d() || c2.e()) {
                this.d += StaggeredGridLayoutManager.this.f919b.e(view);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(boolean z, int i) {
            int b2 = z ? b((int) MessageNano.UNSET_ENUM_VALUE) : a((int) MessageNano.UNSET_ENUM_VALUE);
            e();
            if (b2 != Integer.MIN_VALUE) {
                if (z && b2 < StaggeredGridLayoutManager.this.f919b.d()) {
                    return;
                }
                if (z || b2 <= StaggeredGridLayoutManager.this.f919b.c()) {
                    if (i != Integer.MIN_VALUE) {
                        b2 += i;
                    }
                    this.c = b2;
                    this.f928b = b2;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public int b() {
            int i = this.f928b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            a();
            return this.f928b;
        }

        /* access modifiers changed from: package-private */
        public int b(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f927a.size() == 0) {
                return i;
            }
            c();
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public void b(View view) {
            b c2 = c(view);
            c2.f925a = this;
            this.f927a.add(view);
            this.c = MessageNano.UNSET_ENUM_VALUE;
            if (this.f927a.size() == 1) {
                this.f928b = MessageNano.UNSET_ENUM_VALUE;
            }
            if (c2.d() || c2.e()) {
                this.d += StaggeredGridLayoutManager.this.f919b.e(view);
            }
        }

        /* access modifiers changed from: package-private */
        public b c(View view) {
            return (b) view.getLayoutParams();
        }

        /* access modifiers changed from: package-private */
        public void c() {
            ArrayList<View> arrayList = this.f927a;
            View view = arrayList.get(arrayList.size() - 1);
            b c2 = c(view);
            this.c = StaggeredGridLayoutManager.this.f919b.b(view);
            if (c2.f926b) {
                LazySpanLookup.FullSpanItem f2 = StaggeredGridLayoutManager.this.h.f(c2.f());
                if (f2 != null && f2.mGapDir == 1) {
                    this.c += f2.getGapForSpan(this.e);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void c(int i) {
            this.f928b = i;
            this.c = i;
        }

        /* access modifiers changed from: package-private */
        public int d() {
            int i = this.c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            c();
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public void d(int i) {
            int i2 = this.f928b;
            if (i2 != Integer.MIN_VALUE) {
                this.f928b = i2 + i;
            }
            int i3 = this.c;
            if (i3 != Integer.MIN_VALUE) {
                this.c = i3 + i;
            }
        }

        /* access modifiers changed from: package-private */
        public void e() {
            this.f927a.clear();
            f();
            this.d = 0;
        }

        /* access modifiers changed from: package-private */
        public void f() {
            this.f928b = MessageNano.UNSET_ENUM_VALUE;
            this.c = MessageNano.UNSET_ENUM_VALUE;
        }

        /* access modifiers changed from: package-private */
        public void g() {
            int size;
            View remove = this.f927a.remove(this.f927a.size() - 1);
            b c2 = c(remove);
            c2.f925a = null;
            if (c2.d() || c2.e()) {
                this.d -= StaggeredGridLayoutManager.this.f919b.e(remove);
            }
            if (size == 1) {
                this.f928b = MessageNano.UNSET_ENUM_VALUE;
            }
            this.c = MessageNano.UNSET_ENUM_VALUE;
        }

        /* access modifiers changed from: package-private */
        public void h() {
            View remove = this.f927a.remove(0);
            b c2 = c(remove);
            c2.f925a = null;
            if (this.f927a.size() == 0) {
                this.c = MessageNano.UNSET_ENUM_VALUE;
            }
            if (c2.d() || c2.e()) {
                this.d -= StaggeredGridLayoutManager.this.f919b.e(remove);
            }
            this.f928b = MessageNano.UNSET_ENUM_VALUE;
        }

        public int i() {
            return this.d;
        }

        public int j() {
            return StaggeredGridLayoutManager.this.d ? a(this.f927a.size() - 1, -1, true) : a(0, this.f927a.size(), true);
        }

        public int k() {
            return StaggeredGridLayoutManager.this.d ? a(0, this.f927a.size(), true) : a(this.f927a.size() - 1, -1, true);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        RecyclerView.i.b a2 = a(context, attributeSet, i2, i3);
        b(a2.f899a);
        a(a2.f900b);
        a(a2.c);
        this.l = new i();
        q();
    }

    private void P() {
        if (this.c.h() != 1073741824) {
            int z2 = z();
            float f2 = 0.0f;
            for (int i2 = 0; i2 < z2; i2++) {
                View i3 = i(i2);
                float e2 = (float) this.c.e(i3);
                if (e2 >= f2) {
                    if (((b) i3.getLayoutParams()).a()) {
                        e2 = (e2 * 1.0f) / ((float) this.i);
                    }
                    f2 = Math.max(f2, e2);
                }
            }
            int i4 = this.k;
            int round = Math.round(f2 * ((float) this.i));
            if (this.c.h() == Integer.MIN_VALUE) {
                round = Math.min(round, this.c.f());
            }
            f(round);
            if (this.k != i4) {
                for (int i5 = 0; i5 < z2; i5++) {
                    View i6 = i(i5);
                    b bVar = (b) i6.getLayoutParams();
                    if (!bVar.f926b) {
                        if (!j() || this.j != 1) {
                            int i7 = bVar.f925a.e * this.k;
                            int i8 = bVar.f925a.e * i4;
                            if (this.j == 1) {
                                i6.offsetLeftAndRight(i7 - i8);
                            } else {
                                i6.offsetTopAndBottom(i7 - i8);
                            }
                        } else {
                            i6.offsetLeftAndRight(((-((this.i - 1) - bVar.f925a.e)) * this.k) - ((-((this.i - 1) - bVar.f925a.e)) * i4));
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARNING: type inference failed for: r9v4 */
    private int a(RecyclerView.p pVar, i iVar, RecyclerView.t tVar) {
        c cVar;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z2;
        RecyclerView.p pVar2 = pVar;
        i iVar2 = iVar;
        ? r9 = 0;
        this.m.set(0, this.i, true);
        int i6 = this.l.i ? iVar2.e == 1 ? Integer.MAX_VALUE : MessageNano.UNSET_ENUM_VALUE : iVar2.e == 1 ? iVar2.g + iVar2.f985b : iVar2.f - iVar2.f985b;
        a(iVar2.e, i6);
        int d2 = this.e ? this.f919b.d() : this.f919b.c();
        boolean z3 = false;
        while (iVar.a(tVar) && (this.l.i || !this.m.isEmpty())) {
            View a2 = iVar2.a(pVar2);
            b bVar = (b) a2.getLayoutParams();
            int f2 = bVar.f();
            int c2 = this.h.c(f2);
            boolean z4 = c2 == -1 ? true : r9;
            if (z4) {
                cVar = bVar.f926b ? this.f918a[r9] : a(iVar2);
                this.h.a(f2, cVar);
            } else {
                cVar = this.f918a[c2];
            }
            c cVar2 = cVar;
            bVar.f925a = cVar2;
            if (iVar2.e == 1) {
                b(a2);
            } else {
                b(a2, (int) r9);
            }
            a(a2, bVar, (boolean) r9);
            if (iVar2.e == 1) {
                int r = bVar.f926b ? r(d2) : cVar2.b(d2);
                int e2 = this.f919b.e(a2) + r;
                if (z4 && bVar.f926b) {
                    LazySpanLookup.FullSpanItem n2 = n(r);
                    n2.mGapDir = -1;
                    n2.mPosition = f2;
                    this.h.a(n2);
                }
                i2 = e2;
                i3 = r;
            } else {
                int q = bVar.f926b ? q(d2) : cVar2.a(d2);
                i3 = q - this.f919b.e(a2);
                if (z4 && bVar.f926b) {
                    LazySpanLookup.FullSpanItem o2 = o(q);
                    o2.mGapDir = 1;
                    o2.mPosition = f2;
                    this.h.a(o2);
                }
                i2 = q;
            }
            if (bVar.f926b && iVar2.d == -1) {
                if (z4) {
                    this.E = true;
                } else {
                    if (!(iVar2.e == 1 ? l() : m())) {
                        LazySpanLookup.FullSpanItem f3 = this.h.f(f2);
                        if (f3 != null) {
                            f3.mHasUnwantedGapAfter = true;
                        }
                        this.E = true;
                    }
                }
            }
            a(a2, bVar, iVar2);
            if (!j() || this.j != 1) {
                int c3 = bVar.f926b ? this.c.c() : (cVar2.e * this.k) + this.c.c();
                i5 = c3;
                i4 = this.c.e(a2) + c3;
            } else {
                int d3 = bVar.f926b ? this.c.d() : this.c.d() - (((this.i - 1) - cVar2.e) * this.k);
                i4 = d3;
                i5 = d3 - this.c.e(a2);
            }
            if (this.j == 1) {
                a(a2, i5, i3, i4, i2);
            } else {
                a(a2, i3, i5, i2, i4);
            }
            if (bVar.f926b) {
                a(this.l.e, i6);
            } else {
                a(cVar2, this.l.e, i6);
            }
            a(pVar2, this.l);
            if (this.l.h && a2.hasFocusable()) {
                if (bVar.f926b) {
                    this.m.clear();
                } else {
                    z2 = false;
                    this.m.set(cVar2.e, false);
                    r9 = z2;
                    z3 = true;
                }
            }
            z2 = false;
            r9 = z2;
            z3 = true;
        }
        int i7 = r9;
        if (!z3) {
            a(pVar2, this.l);
        }
        int c4 = this.l.e == -1 ? this.f919b.c() - q(this.f919b.c()) : r(this.f919b.d()) - this.f919b.d();
        return c4 > 0 ? Math.min(iVar2.f985b, c4) : i7;
    }

    private c a(i iVar) {
        int i2;
        int i3;
        int i4 = -1;
        if (t(iVar.e)) {
            i3 = this.i - 1;
            i2 = -1;
        } else {
            i3 = 0;
            i4 = this.i;
            i2 = 1;
        }
        c cVar = null;
        if (iVar.e == 1) {
            int i5 = Integer.MAX_VALUE;
            int c2 = this.f919b.c();
            while (i3 != i4) {
                c cVar2 = this.f918a[i3];
                int b2 = cVar2.b(c2);
                if (b2 < i5) {
                    cVar = cVar2;
                    i5 = b2;
                }
                i3 += i2;
            }
            return cVar;
        }
        int i6 = MessageNano.UNSET_ENUM_VALUE;
        int d2 = this.f919b.d();
        while (i3 != i4) {
            c cVar3 = this.f918a[i3];
            int a2 = cVar3.a(d2);
            if (a2 > i6) {
                cVar = cVar3;
                i6 = a2;
            }
            i3 += i2;
        }
        return cVar;
    }

    private void a(int i2, int i3) {
        for (int i4 = 0; i4 < this.i; i4++) {
            if (!this.f918a[i4].f927a.isEmpty()) {
                a(this.f918a[i4], i2, i3);
            }
        }
    }

    private void a(View view, int i2, int i3, boolean z2) {
        b(view, this.C);
        b bVar = (b) view.getLayoutParams();
        int b2 = b(i2, bVar.leftMargin + this.C.left, bVar.rightMargin + this.C.right);
        int b3 = b(i3, bVar.topMargin + this.C.top, bVar.bottomMargin + this.C.bottom);
        if (z2 ? a(view, b2, b3, (RecyclerView.j) bVar) : b(view, b2, b3, bVar)) {
            view.measure(b2, b3);
        }
    }

    private void a(View view, b bVar, i iVar) {
        if (iVar.e == 1) {
            if (bVar.f926b) {
                p(view);
            } else {
                bVar.f925a.b(view);
            }
        } else if (bVar.f926b) {
            q(view);
        } else {
            bVar.f925a.a(view);
        }
    }

    private void a(View view, b bVar, boolean z2) {
        if (bVar.f926b) {
            if (this.j == 1) {
                a(view, this.B, a(D(), B(), F() + H(), bVar.height, true), z2);
            } else {
                a(view, a(C(), A(), E() + G(), bVar.width, true), this.B, z2);
            }
        } else if (this.j == 1) {
            a(view, a(this.k, A(), 0, bVar.width, false), a(D(), B(), F() + H(), bVar.height, true), z2);
        } else {
            a(view, a(C(), A(), E() + G(), bVar.width, true), a(this.k, B(), 0, bVar.height, false), z2);
        }
    }

    private void a(RecyclerView.p pVar, int i2) {
        while (z() > 0) {
            View i3 = i(0);
            if (this.f919b.b(i3) <= i2 && this.f919b.c(i3) <= i2) {
                b bVar = (b) i3.getLayoutParams();
                if (bVar.f926b) {
                    int i4 = 0;
                    while (i4 < this.i) {
                        if (this.f918a[i4].f927a.size() != 1) {
                            i4++;
                        } else {
                            return;
                        }
                    }
                    for (int i5 = 0; i5 < this.i; i5++) {
                        this.f918a[i5].h();
                    }
                } else if (bVar.f925a.f927a.size() != 1) {
                    bVar.f925a.h();
                } else {
                    return;
                }
                a(i3, pVar);
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0161, code lost:
        if (b() != false) goto L_0x0165;
     */
    private void a(RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        a aVar = this.D;
        if (!(this.A == null && this.f == -1) && tVar.e() == 0) {
            c(pVar);
            aVar.a();
            return;
        }
        boolean z3 = true;
        boolean z4 = (aVar.e && this.f == -1 && this.A == null) ? false : true;
        if (z4) {
            aVar.a();
            if (this.A != null) {
                a(aVar);
            } else {
                r();
                aVar.c = this.e;
            }
            a(tVar, aVar);
            aVar.e = true;
        }
        if (this.A == null && this.f == -1 && !(aVar.c == this.o && j() == this.z)) {
            this.h.a();
            aVar.d = true;
        }
        if (z() > 0) {
            SavedState savedState = this.A;
            if (savedState == null || savedState.mSpanOffsetsSize < 1) {
                if (aVar.d) {
                    for (int i2 = 0; i2 < this.i; i2++) {
                        this.f918a[i2].e();
                        if (aVar.f924b != Integer.MIN_VALUE) {
                            this.f918a[i2].c(aVar.f924b);
                        }
                    }
                } else if (z4 || this.D.f == null) {
                    for (int i3 = 0; i3 < this.i; i3++) {
                        this.f918a[i3].a(this.e, aVar.f924b);
                    }
                    this.D.a(this.f918a);
                } else {
                    for (int i4 = 0; i4 < this.i; i4++) {
                        c cVar = this.f918a[i4];
                        cVar.e();
                        cVar.c(this.D.f[i4]);
                    }
                }
            }
        }
        a(pVar);
        this.l.f984a = false;
        this.E = false;
        f(this.c.f());
        b(aVar.f923a, tVar);
        if (aVar.c) {
            m(-1);
            a(pVar, this.l, tVar);
            m(1);
            this.l.c = aVar.f923a + this.l.d;
            a(pVar, this.l, tVar);
        } else {
            m(1);
            a(pVar, this.l, tVar);
            m(-1);
            this.l.c = aVar.f923a + this.l.d;
            a(pVar, this.l, tVar);
        }
        P();
        if (z() > 0) {
            if (this.e) {
                b(pVar, tVar, true);
                c(pVar, tVar, false);
            } else {
                c(pVar, tVar, true);
                b(pVar, tVar, false);
            }
        }
        if (z2 && !tVar.a()) {
            if (this.n != 0 && z() > 0 && (this.E || h() != null)) {
                a(this.H);
            }
        }
        z3 = false;
        if (tVar.a()) {
            this.D.a();
        }
        this.o = aVar.c;
        this.z = j();
        if (z3) {
            this.D.a();
            a(pVar, tVar, false);
        }
    }

    private void a(RecyclerView.p pVar, i iVar) {
        if (iVar.f984a && !iVar.i) {
            if (iVar.f985b == 0) {
                if (iVar.e == -1) {
                    b(pVar, iVar.g);
                } else {
                    a(pVar, iVar.f);
                }
            } else if (iVar.e == -1) {
                int p = iVar.f - p(iVar.f);
                b(pVar, p < 0 ? iVar.g : iVar.g - Math.min(p, iVar.f985b));
            } else {
                int s = s(iVar.g) - iVar.g;
                a(pVar, s < 0 ? iVar.f : Math.min(s, iVar.f985b) + iVar.f);
            }
        }
    }

    private void a(a aVar) {
        if (this.A.mSpanOffsetsSize > 0) {
            if (this.A.mSpanOffsetsSize == this.i) {
                for (int i2 = 0; i2 < this.i; i2++) {
                    this.f918a[i2].e();
                    int i3 = this.A.mSpanOffsets[i2];
                    if (i3 != Integer.MIN_VALUE) {
                        i3 += this.A.mAnchorLayoutFromEnd ? this.f919b.d() : this.f919b.c();
                    }
                    this.f918a[i2].c(i3);
                }
            } else {
                this.A.invalidateSpanInfo();
                SavedState savedState = this.A;
                savedState.mAnchorPosition = savedState.mVisibleAnchorPosition;
            }
        }
        this.z = this.A.mLastLayoutRTL;
        a(this.A.mReverseLayout);
        r();
        if (this.A.mAnchorPosition != -1) {
            this.f = this.A.mAnchorPosition;
            aVar.c = this.A.mAnchorLayoutFromEnd;
        } else {
            aVar.c = this.e;
        }
        if (this.A.mSpanLookupSize > 1) {
            this.h.f921a = this.A.mSpanLookup;
            this.h.f922b = this.A.mFullSpanItems;
        }
    }

    private void a(c cVar, int i2, int i3) {
        int i4 = cVar.i();
        if (i2 == -1) {
            if (cVar.b() + i4 <= i3) {
                this.m.set(cVar.e, false);
            }
        } else if (cVar.d() - i4 >= i3) {
            this.m.set(cVar.e, false);
        }
    }

    private boolean a(c cVar) {
        if (this.e) {
            if (cVar.d() < this.f919b.d()) {
                return !cVar.c(cVar.f927a.get(cVar.f927a.size() - 1)).f926b;
            }
        } else if (cVar.b() > this.f919b.c()) {
            return !cVar.c(cVar.f927a.get(0)).f926b;
        }
        return false;
    }

    private int b(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x004e  */
    private void b(int i2, RecyclerView.t tVar) {
        int i3;
        int i4;
        i iVar = this.l;
        boolean z2 = false;
        iVar.f985b = 0;
        iVar.c = i2;
        if (w()) {
            int c2 = tVar.c();
            if (c2 != -1) {
                if (this.e == (c2 < i2)) {
                    i4 = this.f919b.f();
                    i3 = 0;
                } else {
                    i3 = this.f919b.f();
                    i4 = 0;
                }
                if (!v()) {
                    this.l.f = this.f919b.c() - i3;
                    this.l.g = this.f919b.d() + i4;
                } else {
                    this.l.g = this.f919b.e() + i4;
                    this.l.f = -i3;
                }
                i iVar2 = this.l;
                iVar2.h = false;
                iVar2.f984a = true;
                if (this.f919b.h() == 0 && this.f919b.e() == 0) {
                    z2 = true;
                }
                iVar2.i = z2;
            }
        }
        i4 = 0;
        i3 = 0;
        if (!v()) {
        }
        i iVar22 = this.l;
        iVar22.h = false;
        iVar22.f984a = true;
        z2 = true;
        iVar22.i = z2;
    }

    private void b(RecyclerView.p pVar, int i2) {
        int z2 = z() - 1;
        while (z2 >= 0) {
            View i3 = i(z2);
            if (this.f919b.a(i3) >= i2 && this.f919b.d(i3) >= i2) {
                b bVar = (b) i3.getLayoutParams();
                if (bVar.f926b) {
                    int i4 = 0;
                    while (i4 < this.i) {
                        if (this.f918a[i4].f927a.size() != 1) {
                            i4++;
                        } else {
                            return;
                        }
                    }
                    for (int i5 = 0; i5 < this.i; i5++) {
                        this.f918a[i5].g();
                    }
                } else if (bVar.f925a.f927a.size() != 1) {
                    bVar.f925a.g();
                } else {
                    return;
                }
                a(i3, pVar);
                z2--;
            } else {
                return;
            }
        }
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int r = r(MessageNano.UNSET_ENUM_VALUE);
        if (r != Integer.MIN_VALUE) {
            int d2 = this.f919b.d() - r;
            if (d2 > 0) {
                int i2 = d2 - (-c(-d2, pVar, tVar));
                if (z2 && i2 > 0) {
                    this.f919b.a(i2);
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0046  */
    private void c(int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int o2 = this.e ? o() : p();
        if (i4 != 8) {
            i7 = i2 + i3;
        } else if (i2 < i3) {
            i7 = i3 + 1;
        } else {
            i5 = i2 + 1;
            i6 = i3;
            this.h.b(i6);
            if (i4 != 1) {
                this.h.b(i2, i3);
            } else if (i4 == 2) {
                this.h.a(i2, i3);
            } else if (i4 == 8) {
                this.h.a(i2, 1);
                this.h.b(i3, 1);
            }
            if (i5 <= o2) {
                if (i6 <= (this.e ? p() : o())) {
                    s();
                    return;
                }
                return;
            }
            return;
        }
        i5 = i7;
        i6 = i2;
        this.h.b(i6);
        if (i4 != 1) {
        }
        if (i5 <= o2) {
        }
    }

    private void c(RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int q = q(Integer.MAX_VALUE);
        if (q != Integer.MAX_VALUE) {
            int c2 = q - this.f919b.c();
            if (c2 > 0) {
                int c3 = c2 - c(c2, pVar, tVar);
                if (z2 && c3 > 0) {
                    this.f919b.a(-c3);
                }
            }
        }
    }

    private boolean c(RecyclerView.t tVar, a aVar) {
        aVar.f923a = this.o ? w(tVar.e()) : v(tVar.e());
        aVar.f924b = MessageNano.UNSET_ENUM_VALUE;
        return true;
    }

    private int f(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        return p.a(tVar, this.f919b, b(!this.F), c(!this.F), this, this.F, this.e);
    }

    private int i(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        return p.a(tVar, this.f919b, b(!this.F), c(!this.F), this, this.F);
    }

    private int j(RecyclerView.t tVar) {
        if (z() == 0) {
            return 0;
        }
        return p.b(tVar, this.f919b, b(!this.F), c(!this.F), this, this.F);
    }

    private void m(int i2) {
        i iVar = this.l;
        iVar.e = i2;
        int i3 = 1;
        if (this.e != (i2 == -1)) {
            i3 = -1;
        }
        iVar.d = i3;
    }

    private LazySpanLookup.FullSpanItem n(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.i];
        for (int i3 = 0; i3 < this.i; i3++) {
            fullSpanItem.mGapPerSpan[i3] = i2 - this.f918a[i3].b(i2);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem o(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.i];
        for (int i3 = 0; i3 < this.i; i3++) {
            fullSpanItem.mGapPerSpan[i3] = this.f918a[i3].a(i2) - i2;
        }
        return fullSpanItem;
    }

    private int p(int i2) {
        int a2 = this.f918a[0].a(i2);
        for (int i3 = 1; i3 < this.i; i3++) {
            int a3 = this.f918a[i3].a(i2);
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private void p(View view) {
        for (int i2 = this.i - 1; i2 >= 0; i2--) {
            this.f918a[i2].b(view);
        }
    }

    private int q(int i2) {
        int a2 = this.f918a[0].a(i2);
        for (int i3 = 1; i3 < this.i; i3++) {
            int a3 = this.f918a[i3].a(i2);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private void q() {
        this.f919b = m.a(this, this.j);
        this.c = m.a(this, 1 - this.j);
    }

    private void q(View view) {
        for (int i2 = this.i - 1; i2 >= 0; i2--) {
            this.f918a[i2].a(view);
        }
    }

    private int r(int i2) {
        int b2 = this.f918a[0].b(i2);
        for (int i3 = 1; i3 < this.i; i3++) {
            int b3 = this.f918a[i3].b(i2);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private void r() {
        if (this.j == 1 || !j()) {
            this.e = this.d;
        } else {
            this.e = !this.d;
        }
    }

    private int s(int i2) {
        int b2 = this.f918a[0].b(i2);
        for (int i3 = 1; i3 < this.i; i3++) {
            int b3 = this.f918a[i3].b(i2);
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private boolean t(int i2) {
        if (this.j == 0) {
            return (i2 == -1) != this.e;
        }
        return ((i2 == -1) == this.e) == j();
    }

    private int u(int i2) {
        if (z() == 0) {
            return this.e ? 1 : -1;
        }
        return (i2 < p()) != this.e ? -1 : 1;
    }

    private int v(int i2) {
        int z2 = z();
        for (int i3 = 0; i3 < z2; i3++) {
            int d2 = d(i(i3));
            if (d2 >= 0 && d2 < i2) {
                return d2;
            }
        }
        return 0;
    }

    private int w(int i2) {
        for (int z2 = z() - 1; z2 >= 0; z2--) {
            int d2 = d(i(z2));
            if (d2 >= 0 && d2 < i2) {
                return d2;
            }
        }
        return 0;
    }

    private int x(int i2) {
        if (i2 == 1) {
            return (this.j != 1 && j()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.j != 1 && j()) ? -1 : 1;
        }
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        return MessageNano.UNSET_ENUM_VALUE;
                    }
                    if (this.j == 1) {
                        return 1;
                    }
                    return MessageNano.UNSET_ENUM_VALUE;
                } else if (this.j == 0) {
                    return 1;
                } else {
                    return MessageNano.UNSET_ENUM_VALUE;
                }
            } else if (this.j == 1) {
                return -1;
            } else {
                return MessageNano.UNSET_ENUM_VALUE;
            }
        } else if (this.j == 0) {
            return -1;
        } else {
            return MessageNano.UNSET_ENUM_VALUE;
        }
    }

    public int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i2, pVar, tVar);
    }

    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.j == 0 ? this.i : super.a(pVar, tVar);
    }

    public View a(View view, int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (z() == 0) {
            return null;
        }
        View e2 = e(view);
        if (e2 == null) {
            return null;
        }
        r();
        int x = x(i2);
        if (x == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) e2.getLayoutParams();
        boolean z2 = bVar.f926b;
        c cVar = bVar.f925a;
        int o2 = x == 1 ? o() : p();
        b(o2, tVar);
        m(x);
        i iVar = this.l;
        iVar.c = iVar.d + o2;
        this.l.f985b = (int) (((float) this.f919b.f()) * 0.33333334f);
        i iVar2 = this.l;
        iVar2.h = true;
        iVar2.f984a = false;
        a(pVar, iVar2, tVar);
        this.o = this.e;
        if (!z2) {
            View a2 = cVar.a(o2, x);
            if (!(a2 == null || a2 == e2)) {
                return a2;
            }
        }
        if (t(x)) {
            for (int i3 = this.i - 1; i3 >= 0; i3--) {
                View a3 = this.f918a[i3].a(o2, x);
                if (a3 != null && a3 != e2) {
                    return a3;
                }
            }
        } else {
            for (int i4 = 0; i4 < this.i; i4++) {
                View a4 = this.f918a[i4].a(o2, x);
                if (a4 != null && a4 != e2) {
                    return a4;
                }
            }
        }
        boolean z3 = (this.d ^ true) == (x == -1);
        if (!z2) {
            View c2 = c(z3 ? cVar.j() : cVar.k());
            if (!(c2 == null || c2 == e2)) {
                return c2;
            }
        }
        if (t(x)) {
            for (int i5 = this.i - 1; i5 >= 0; i5--) {
                if (i5 != cVar.e) {
                    View c3 = c(z3 ? this.f918a[i5].j() : this.f918a[i5].k());
                    if (!(c3 == null || c3 == e2)) {
                        return c3;
                    }
                }
            }
        } else {
            for (int i6 = 0; i6 < this.i; i6++) {
                View c4 = c(z3 ? this.f918a[i6].j() : this.f918a[i6].k());
                if (c4 != null && c4 != e2) {
                    return c4;
                }
            }
        }
        return null;
    }

    public RecyclerView.j a() {
        return this.j == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public void a(int i2) {
        a((String) null);
        if (i2 != this.i) {
            i();
            this.i = i2;
            this.m = new BitSet(this.i);
            this.f918a = new c[this.i];
            for (int i3 = 0; i3 < this.i; i3++) {
                this.f918a[i3] = new c(i3);
            }
            s();
        }
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        int i4;
        int i5;
        if (this.j != 0) {
            i2 = i3;
        }
        if (z() != 0 && i2 != 0) {
            a(i2, tVar);
            int[] iArr = this.G;
            if (iArr == null || iArr.length < this.i) {
                this.G = new int[this.i];
            }
            int i6 = 0;
            for (int i7 = 0; i7 < this.i; i7++) {
                if (this.l.d == -1) {
                    i5 = this.l.f;
                    i4 = this.f918a[i7].a(this.l.f);
                } else {
                    i5 = this.f918a[i7].b(this.l.g);
                    i4 = this.l.g;
                }
                int i8 = i5 - i4;
                if (i8 >= 0) {
                    this.G[i6] = i8;
                    i6++;
                }
            }
            Arrays.sort(this.G, 0, i6);
            for (int i9 = 0; i9 < i6 && this.l.a(tVar); i9++) {
                aVar.b(this.l.c, this.G[i9]);
                this.l.c += this.l.d;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, RecyclerView.t tVar) {
        int i3;
        int i4;
        if (i2 > 0) {
            i4 = o();
            i3 = 1;
        } else {
            i3 = -1;
            i4 = p();
        }
        this.l.f984a = true;
        b(i4, tVar);
        m(i3);
        i iVar = this.l;
        iVar.c = i4 + iVar.d;
        this.l.f985b = Math.abs(i2);
    }

    public void a(Rect rect, int i2, int i3) {
        int i4;
        int i5;
        int E2 = E() + G();
        int F2 = F() + H();
        if (this.j == 1) {
            i5 = a(i3, rect.height() + F2, L());
            i4 = a(i2, (this.k * this.i) + E2, K());
        } else {
            i4 = a(i2, rect.width() + E2, K());
            i5 = a(i3, (this.k * this.i) + F2, L());
        }
        f(i4, i5);
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.A = (SavedState) parcelable;
            s();
        }
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (z() > 0) {
            View b2 = b(false);
            View c2 = c(false);
            if (b2 != null && c2 != null) {
                int d2 = d(b2);
                int d3 = d(c2);
                if (d2 < d3) {
                    accessibilityEvent.setFromIndex(d2);
                    accessibilityEvent.setToIndex(d3);
                    return;
                }
                accessibilityEvent.setFromIndex(d3);
                accessibilityEvent.setToIndex(d2);
            }
        }
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        int i2 = 1;
        if (this.j == 0) {
            int b2 = bVar.b();
            if (bVar.f926b) {
                i2 = this.i;
            }
            dVar.b((Object) d.c.a(b2, i2, -1, -1, false, false));
            return;
        }
        int b3 = bVar.b();
        if (bVar.f926b) {
            i2 = this.i;
        }
        dVar.b((Object) d.c.a(-1, -1, b3, i2, false, false));
    }

    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.f = -1;
        this.g = MessageNano.UNSET_ENUM_VALUE;
        this.A = null;
        this.D.a();
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.t tVar, a aVar) {
        if (!b(tVar, aVar) && !c(tVar, aVar)) {
            aVar.b();
            aVar.f923a = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.h.a();
        s();
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        c(i2, i3, 1);
    }

    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        c(i2, i3, 8);
    }

    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        c(i2, i3, 4);
    }

    public void a(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.a(recyclerView, pVar);
        a(this.H);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f918a[i2].e();
        }
        recyclerView.requestLayout();
    }

    public void a(RecyclerView recyclerView, RecyclerView.t tVar, int i2) {
        j jVar = new j(recyclerView.getContext());
        jVar.c(i2);
        a((RecyclerView.s) jVar);
    }

    public void a(String str) {
        if (this.A == null) {
            super.a(str);
        }
    }

    public void a(boolean z2) {
        a((String) null);
        SavedState savedState = this.A;
        if (!(savedState == null || savedState.mReverseLayout == z2)) {
            this.A.mReverseLayout = z2;
        }
        this.d = z2;
        s();
    }

    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    public int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i2, pVar, tVar);
    }

    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.j == 1 ? this.i : super.b(pVar, tVar);
    }

    public int b(RecyclerView.t tVar) {
        return j(tVar);
    }

    /* access modifiers changed from: package-private */
    public View b(boolean z2) {
        int c2 = this.f919b.c();
        int d2 = this.f919b.d();
        int z3 = z();
        View view = null;
        for (int i2 = 0; i2 < z3; i2++) {
            View i3 = i(i2);
            int a2 = this.f919b.a(i3);
            if (this.f919b.b(i3) > c2 && a2 < d2) {
                if (a2 >= c2 || !z2) {
                    return i3;
                }
                if (view == null) {
                    view = i3;
                }
            }
        }
        return view;
    }

    public void b(int i2) {
        if (i2 == 0 || i2 == 1) {
            a((String) null);
            if (i2 != this.j) {
                this.j = i2;
                m mVar = this.f919b;
                this.f919b = this.c;
                this.c = mVar;
                s();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    public void b(RecyclerView recyclerView, int i2, int i3) {
        c(i2, i3, 2);
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        int i2;
        int i3;
        if (z() == 0 || this.n == 0 || !u()) {
            return false;
        }
        if (this.e) {
            i3 = o();
            i2 = p();
        } else {
            i3 = p();
            i2 = o();
        }
        if (i3 == 0 && h() != null) {
            this.h.a();
            N();
            s();
            return true;
        } else if (!this.E) {
            return false;
        } else {
            int i4 = this.e ? -1 : 1;
            int i5 = i2 + 1;
            LazySpanLookup.FullSpanItem a2 = this.h.a(i3, i5, i4, true);
            if (a2 == null) {
                this.E = false;
                this.h.a(i5);
                return false;
            }
            LazySpanLookup.FullSpanItem a3 = this.h.a(i3, a2.mPosition, i4 * -1, true);
            if (a3 == null) {
                this.h.a(a2.mPosition);
            } else {
                this.h.a(a3.mPosition + 1);
            }
            N();
            s();
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(RecyclerView.t tVar, a aVar) {
        boolean z2 = false;
        if (!tVar.a()) {
            int i2 = this.f;
            if (i2 != -1) {
                if (i2 < 0 || i2 >= tVar.e()) {
                    this.f = -1;
                    this.g = MessageNano.UNSET_ENUM_VALUE;
                } else {
                    SavedState savedState = this.A;
                    if (savedState == null || savedState.mAnchorPosition == -1 || this.A.mSpanOffsetsSize < 1) {
                        View c2 = c(this.f);
                        if (c2 != null) {
                            aVar.f923a = this.e ? o() : p();
                            if (this.g != Integer.MIN_VALUE) {
                                if (aVar.c) {
                                    aVar.f924b = (this.f919b.d() - this.g) - this.f919b.b(c2);
                                } else {
                                    aVar.f924b = (this.f919b.c() + this.g) - this.f919b.a(c2);
                                }
                                return true;
                            } else if (this.f919b.e(c2) > this.f919b.f()) {
                                aVar.f924b = aVar.c ? this.f919b.d() : this.f919b.c();
                                return true;
                            } else {
                                int a2 = this.f919b.a(c2) - this.f919b.c();
                                if (a2 < 0) {
                                    aVar.f924b = -a2;
                                    return true;
                                }
                                int d2 = this.f919b.d() - this.f919b.b(c2);
                                if (d2 < 0) {
                                    aVar.f924b = d2;
                                    return true;
                                }
                                aVar.f924b = MessageNano.UNSET_ENUM_VALUE;
                            }
                        } else {
                            aVar.f923a = this.f;
                            int i3 = this.g;
                            if (i3 == Integer.MIN_VALUE) {
                                if (u(aVar.f923a) == 1) {
                                    z2 = true;
                                }
                                aVar.c = z2;
                                aVar.b();
                            } else {
                                aVar.a(i3);
                            }
                            aVar.d = true;
                        }
                    } else {
                        aVar.f924b = MessageNano.UNSET_ENUM_VALUE;
                        aVar.f923a = this.f;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public int c(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (z() == 0 || i2 == 0) {
            return 0;
        }
        a(i2, tVar);
        int a2 = a(pVar, this.l, tVar);
        if (this.l.f985b >= a2) {
            i2 = i2 < 0 ? -a2 : a2;
        }
        this.f919b.a(-i2);
        this.o = this.e;
        i iVar = this.l;
        iVar.f985b = 0;
        a(pVar, iVar);
        return i2;
    }

    public int c(RecyclerView.t tVar) {
        return j(tVar);
    }

    /* access modifiers changed from: package-private */
    public View c(boolean z2) {
        int c2 = this.f919b.c();
        int d2 = this.f919b.d();
        View view = null;
        for (int z3 = z() - 1; z3 >= 0; z3--) {
            View i2 = i(z3);
            int a2 = this.f919b.a(i2);
            int b2 = this.f919b.b(i2);
            if (b2 > c2 && a2 < d2) {
                if (b2 <= d2 || !z2) {
                    return i2;
                }
                if (view == null) {
                    view = i2;
                }
            }
        }
        return view;
    }

    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        a(pVar, tVar, true);
    }

    public boolean c() {
        return this.A == null;
    }

    public int d(RecyclerView.t tVar) {
        return f(tVar);
    }

    public PointF d(int i2) {
        int u = u(i2);
        PointF pointF = new PointF();
        if (u == 0) {
            return null;
        }
        if (this.j == 0) {
            pointF.x = (float) u;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = (float) u;
        }
        return pointF;
    }

    public boolean d() {
        return this.n != 0;
    }

    public int e(RecyclerView.t tVar) {
        return f(tVar);
    }

    public Parcelable e() {
        int i2;
        int i3;
        SavedState savedState = this.A;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.mReverseLayout = this.d;
        savedState2.mAnchorLayoutFromEnd = this.o;
        savedState2.mLastLayoutRTL = this.z;
        LazySpanLookup lazySpanLookup = this.h;
        if (lazySpanLookup == null || lazySpanLookup.f921a == null) {
            savedState2.mSpanLookupSize = 0;
        } else {
            savedState2.mSpanLookup = this.h.f921a;
            savedState2.mSpanLookupSize = savedState2.mSpanLookup.length;
            savedState2.mFullSpanItems = this.h.f922b;
        }
        if (z() > 0) {
            savedState2.mAnchorPosition = this.o ? o() : p();
            savedState2.mVisibleAnchorPosition = k();
            int i4 = this.i;
            savedState2.mSpanOffsetsSize = i4;
            savedState2.mSpanOffsets = new int[i4];
            for (int i5 = 0; i5 < this.i; i5++) {
                if (this.o) {
                    i2 = this.f918a[i5].b((int) MessageNano.UNSET_ENUM_VALUE);
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f919b.d();
                    } else {
                        savedState2.mSpanOffsets[i5] = i2;
                    }
                } else {
                    i2 = this.f918a[i5].a((int) MessageNano.UNSET_ENUM_VALUE);
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f919b.c();
                    } else {
                        savedState2.mSpanOffsets[i5] = i2;
                    }
                }
                i2 -= i3;
                savedState2.mSpanOffsets[i5] = i2;
            }
        } else {
            savedState2.mAnchorPosition = -1;
            savedState2.mVisibleAnchorPosition = -1;
            savedState2.mSpanOffsetsSize = 0;
        }
        return savedState2;
    }

    public void e(int i2) {
        SavedState savedState = this.A;
        if (!(savedState == null || savedState.mAnchorPosition == i2)) {
            this.A.invalidateAnchorPositionInfo();
        }
        this.f = i2;
        this.g = MessageNano.UNSET_ENUM_VALUE;
        s();
    }

    /* access modifiers changed from: package-private */
    public void f(int i2) {
        this.k = i2 / this.i;
        this.B = View.MeasureSpec.makeMeasureSpec(i2, this.c.h());
    }

    public boolean f() {
        return this.j == 0;
    }

    public int g(RecyclerView.t tVar) {
        return i(tVar);
    }

    public boolean g() {
        return this.j == 1;
    }

    public int h(RecyclerView.t tVar) {
        return i(tVar);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0074, code lost:
        if (r10 == r11) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0086, code lost:
        if (r10 == r11) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008a, code lost:
        r10 = false;
     */
    public View h() {
        int i2;
        int z2 = z() - 1;
        BitSet bitSet = new BitSet(this.i);
        bitSet.set(0, this.i, true);
        int i3 = -1;
        char c2 = (this.j != 1 || !j()) ? (char) 65535 : 1;
        if (this.e) {
            i2 = -1;
        } else {
            i2 = z2 + 1;
            z2 = 0;
        }
        if (z2 < i2) {
            i3 = 1;
        }
        while (z2 != i2) {
            View i4 = i(z2);
            b bVar = (b) i4.getLayoutParams();
            if (bitSet.get(bVar.f925a.e)) {
                if (a(bVar.f925a)) {
                    return i4;
                }
                bitSet.clear(bVar.f925a.e);
            }
            if (!bVar.f926b) {
                int i5 = z2 + i3;
                if (i5 != i2) {
                    View i6 = i(i5);
                    if (this.e) {
                        int b2 = this.f919b.b(i4);
                        int b3 = this.f919b.b(i6);
                        if (b2 < b3) {
                            return i4;
                        }
                    } else {
                        int a2 = this.f919b.a(i4);
                        int a3 = this.f919b.a(i6);
                        if (a2 > a3) {
                            return i4;
                        }
                    }
                    boolean z3 = true;
                    if (!z3) {
                        continue;
                    } else {
                        if ((bVar.f925a.e - ((b) i6.getLayoutParams()).f925a.e < 0) != (c2 < 0)) {
                            return i4;
                        }
                    }
                } else {
                    continue;
                }
            }
            z2 += i3;
        }
        return null;
    }

    public void i() {
        this.h.a();
        s();
    }

    public void j(int i2) {
        super.j(i2);
        for (int i3 = 0; i3 < this.i; i3++) {
            this.f918a[i3].d(i2);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean j() {
        return x() == 1;
    }

    /* access modifiers changed from: package-private */
    public int k() {
        View c2 = this.e ? c(true) : b(true);
        if (c2 == null) {
            return -1;
        }
        return d(c2);
    }

    public void k(int i2) {
        super.k(i2);
        for (int i3 = 0; i3 < this.i; i3++) {
            this.f918a[i3].d(i2);
        }
    }

    public void l(int i2) {
        if (i2 == 0) {
            b();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean l() {
        int b2 = this.f918a[0].b((int) MessageNano.UNSET_ENUM_VALUE);
        for (int i2 = 1; i2 < this.i; i2++) {
            if (this.f918a[i2].b((int) MessageNano.UNSET_ENUM_VALUE) != b2) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean m() {
        int a2 = this.f918a[0].a((int) MessageNano.UNSET_ENUM_VALUE);
        for (int i2 = 1; i2 < this.i; i2++) {
            if (this.f918a[i2].a((int) MessageNano.UNSET_ENUM_VALUE) != a2) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public int o() {
        int z2 = z();
        if (z2 == 0) {
            return 0;
        }
        return d(i(z2 - 1));
    }

    /* access modifiers changed from: package-private */
    public int p() {
        if (z() == 0) {
            return 0;
        }
        return d(i(0));
    }
}
