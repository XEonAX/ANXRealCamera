package com.color.support.widget;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.AbsListView;
import androidx.recyclerview.widget.ColorLinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.nano.MessageNano;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ExpandableRecyclerConnector extends RecyclerView.a {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<e> f1640a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<d> f1641b = new SparseArray<>();
    private SparseArray<List<RecyclerView.w>> c = new SparseArray<>();
    private SparseArray<List<RecyclerView.w>> d = new SparseArray<>();
    private c e;
    private ArrayList<GroupMetadata> f = new ArrayList<>();
    private int g;
    private int h = Integer.MAX_VALUE;
    private final RecyclerView.c i = new f();
    /* access modifiers changed from: private */
    public ColorExpandableRecyclerView j;
    private SparseArray<Integer> k = new SparseArray<>();

    static class GroupMetadata implements Parcelable, Comparable<GroupMetadata> {
        public static final Parcelable.Creator<GroupMetadata> CREATOR = new Parcelable.Creator<GroupMetadata>() {
            /* renamed from: a */
            public GroupMetadata createFromParcel(Parcel parcel) {
                return GroupMetadata.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
            }

            /* renamed from: a */
            public GroupMetadata[] newArray(int i) {
                return new GroupMetadata[i];
            }
        };
        static final int REFRESH = -1;
        int flPos;
        long gId;
        int gPos;
        int lastChildFlPos;

        private GroupMetadata() {
        }

        static GroupMetadata obtain(int i, int i2, int i3, long j) {
            GroupMetadata groupMetadata = new GroupMetadata();
            groupMetadata.flPos = i;
            groupMetadata.lastChildFlPos = i2;
            groupMetadata.gPos = i3;
            groupMetadata.gId = j;
            return groupMetadata;
        }

        public int compareTo(GroupMetadata groupMetadata) {
            if (groupMetadata != null) {
                return this.gPos - groupMetadata.gPos;
            }
            throw new IllegalArgumentException();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.flPos);
            parcel.writeInt(this.lastChildFlPos);
            parcel.writeInt(this.gPos);
            parcel.writeLong(this.gId);
        }
    }

    static class a extends RecyclerView.w {
        public a(View view) {
            super(view);
            view.setLayoutParams(new AbsListView.LayoutParams(-1, 0));
        }
    }

    private static class b extends View {

        /* renamed from: a  reason: collision with root package name */
        private List<View> f1650a = new ArrayList();

        public b(Context context) {
            super(context);
        }

        public void a() {
            this.f1650a.clear();
        }

        public void a(View view) {
            this.f1650a.add(view);
        }

        public void dispatchDraw(Canvas canvas) {
            canvas.save();
            int size = this.f1650a.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.f1650a.get(i2);
                canvas.save();
                int measuredHeight = view.getMeasuredHeight();
                i += measuredHeight;
                canvas.clipRect(0, 0, getWidth(), measuredHeight);
                view.draw(canvas);
                canvas.restore();
                canvas.translate(0.0f, (float) measuredHeight);
                if (i > canvas.getHeight()) {
                    break;
                }
            }
            canvas.restore();
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i4 - i2;
            int size = this.f1650a.size();
            int i6 = 0;
            int i7 = 0;
            while (i6 < size) {
                View view = this.f1650a.get(i6);
                int measuredHeight = view.getMeasuredHeight();
                i7 += measuredHeight;
                view.layout(i, i2, view.getMeasuredWidth() + i, measuredHeight + i2);
                if (i7 <= i5) {
                    i6++;
                } else {
                    return;
                }
            }
        }
    }

    private static abstract class c implements Animator.AnimatorListener {
        private c() {
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    private static class d extends ValueAnimator {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public WeakReference<ColorExpandableRecyclerView> f1651a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public boolean f1652b;

        public d(ColorExpandableRecyclerView colorExpandableRecyclerView, long j, TimeInterpolator timeInterpolator) {
            this.f1651a = new WeakReference<>(colorExpandableRecyclerView);
            setDuration(j);
            setInterpolator(timeInterpolator);
        }

        /* access modifiers changed from: private */
        public void a() {
            removeAllUpdateListeners();
            end();
        }

        public void a(boolean z, boolean z2, int i, View view, e eVar, int i2, int i3) {
            int i4 = i3;
            StringBuilder sb = new StringBuilder();
            sb.append("setParam: ");
            final boolean z3 = z;
            sb.append(z);
            sb.append(", isLastChild:");
            boolean z4 = z2;
            sb.append(z2);
            sb.append(" ,flatPos:");
            int i5 = i;
            sb.append(i);
            sb.append(" ,start:");
            sb.append(i2);
            sb.append(" ,end:");
            sb.append(i4);
            Log.d("ExpandableRecyclerConnector", sb.toString());
            this.f1652b = true;
            setIntValues(new int[]{i2, i4});
            removeAllUpdateListeners();
            final boolean z5 = z2;
            final int i6 = i;
            final View view2 = view;
            final e eVar2 = eVar;
            AnonymousClass1 r0 = new ValueAnimator.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ColorExpandableRecyclerView colorExpandableRecyclerView = (ColorExpandableRecyclerView) d.this.f1651a.get();
                    if (colorExpandableRecyclerView == null) {
                        d.this.a();
                        return;
                    }
                    int o = ((ColorLinearLayoutManager) colorExpandableRecyclerView.getLayoutManager()).o();
                    int q = ((ColorLinearLayoutManager) colorExpandableRecyclerView.getLayoutManager()).q();
                    if (!d.this.f1652b && !z5) {
                        int i = i6;
                        if (o > i || q < i) {
                            Log.d("ExpandableRecyclerConnector", "onAnimationUpdate1: " + o + "," + q + "," + i6);
                            d.this.a();
                            return;
                        }
                    }
                    if (!d.this.f1652b && !z5 && z3 && i6 == q) {
                        Log.d("ExpandableRecyclerConnector", "onAnimationUpdate2: " + q + "," + i6);
                        d.this.a();
                    } else if (d.this.f1652b || !z5 || !z3 || view2.getBottom() <= colorExpandableRecyclerView.getBottom()) {
                        boolean unused = d.this.f1652b = false;
                        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        eVar2.c = intValue;
                        view2.getLayoutParams().height = intValue;
                        colorExpandableRecyclerView.requestLayout();
                    } else {
                        Log.d("ExpandableRecyclerConnector", "onAnimationUpdate3: " + view2.getBottom() + "," + colorExpandableRecyclerView.getBottom());
                        d.this.a();
                    }
                }
            };
            addUpdateListener(r0);
        }
    }

    private static class e {

        /* renamed from: a  reason: collision with root package name */
        boolean f1655a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1656b;
        int c;

        private e() {
            this.f1655a = false;
            this.f1656b = false;
            this.c = -1;
        }
    }

    protected class f extends RecyclerView.c {
        protected f() {
        }

        public void a() {
            ExpandableRecyclerConnector.this.a(true, true);
            ExpandableRecyclerConnector.this.e();
        }

        public void a(int i, int i2) {
            ExpandableRecyclerConnector.this.a(true, true);
            ExpandableRecyclerConnector.this.a(i, i2);
        }

        public void a(int i, int i2, int i3) {
            ExpandableRecyclerConnector.this.a(true, true);
            ExpandableRecyclerConnector.this.b(i, i2);
        }

        public void a(int i, int i2, Object obj) {
            a(i, i2);
        }

        public void b(int i, int i2) {
            ExpandableRecyclerConnector.this.a(true, true);
            ExpandableRecyclerConnector.this.c(i, i2);
        }

        public void c(int i, int i2) {
            ExpandableRecyclerConnector.this.a(true, true);
            ExpandableRecyclerConnector.this.d(i, i2);
        }
    }

    public static class g {
        private static ArrayList<g> d = new ArrayList<>(5);

        /* renamed from: a  reason: collision with root package name */
        public i f1658a;

        /* renamed from: b  reason: collision with root package name */
        public GroupMetadata f1659b;
        public int c;

        private g() {
        }

        static g a(int i, int i2, int i3, int i4, GroupMetadata groupMetadata, int i5) {
            g d2 = d();
            d2.f1658a = i.a(i2, i3, i4, i);
            d2.f1659b = groupMetadata;
            d2.c = i5;
            return d2;
        }

        private void c() {
            i iVar = this.f1658a;
            if (iVar != null) {
                iVar.a();
                this.f1658a = null;
            }
            this.f1659b = null;
            this.c = 0;
        }

        private static g d() {
            synchronized (d) {
                if (d.size() > 0) {
                    g remove = d.remove(0);
                    remove.c();
                    return remove;
                }
                g gVar = new g();
                return gVar;
            }
        }

        public void a() {
            c();
            synchronized (d) {
                if (d.size() < 5) {
                    d.add(this);
                }
            }
        }

        public boolean b() {
            return this.f1659b != null;
        }
    }

    public ExpandableRecyclerConnector(c cVar, ColorExpandableRecyclerView colorExpandableRecyclerView) {
        this.j = colorExpandableRecyclerView;
        a(cVar);
    }

    private int a(boolean z, int i2, b bVar) {
        int bottom = this.j.getLayoutManager().z() > 0 ? this.j.getLayoutManager().i(this.j.getLayoutManager().z() - 1).getBottom() : 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.j.getWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int bottom2 = (!z || this.j.getLayoutParams().height != -2) ? this.j.getBottom() : this.j.getContext().getResources().getDisplayMetrics().heightPixels;
        int a2 = this.e.a(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < a2; i4++) {
            RecyclerView.w e2 = e(i2, i4);
            if (e2 == null) {
                e2 = this.e.b((ViewGroup) this.j, f(i2, i4));
            }
            a(e2, i2, i4);
            View view = e2.f916a;
            this.e.a(i2, i4, false, e2);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = a();
                view.setLayoutParams(layoutParams);
            }
            int i5 = layoutParams.height;
            int makeMeasureSpec3 = i5 > 0 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : makeMeasureSpec2;
            view.setLayoutDirection(this.j.getLayoutDirection());
            view.measure(makeMeasureSpec, makeMeasureSpec3);
            i3 += view.getMeasuredHeight();
            bVar.a(view);
            if ((!z && i3 + bottom > bottom2) || (z && i3 > (bottom2 - bottom) * 2)) {
                break;
            }
        }
        return i3;
    }

    private void a(RecyclerView.w wVar, int i2, int i3) {
        int f2 = f(i2, i3);
        List list = this.d.get(f2);
        if (list == null) {
            list = new ArrayList();
        }
        list.add(wVar);
        this.d.put(f2, list);
    }

    private void a(final b bVar, final int i2, final int i3, int i4) {
        Log.d("ExpandableRecyclerConnector", "expandAnimationStart:" + i2 + " ,groupPos:" + i3 + " , height:" + i4);
        e i5 = i(i3);
        d dVar = this.f1641b.get(i3);
        if (dVar == null) {
            dVar = new d(this.j, 400, new PathInterpolator(0.3f, 0.0f, 0.0f, 1.0f));
            this.f1641b.put(i3, dVar);
        } else {
            dVar.removeAllListeners();
            dVar.cancel();
        }
        dVar.a(true, i2 == b() - 1, i2, bVar, i5, i5.c == -1 ? 0 : i5.c, i4);
        dVar.addListener(new c() {
            public void onAnimationEnd(Animator animator) {
                bVar.a();
                ExpandableRecyclerConnector.this.k(i3);
                ExpandableRecyclerConnector.this.a(true, true);
                ExpandableRecyclerConnector expandableRecyclerConnector = ExpandableRecyclerConnector.this;
                expandableRecyclerConnector.a(i2 - 1, (expandableRecyclerConnector.b() - i2) + 1);
                bVar.setTag(0);
            }
        });
        dVar.start();
        bVar.setTag(1);
    }

    /* access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        ArrayList<GroupMetadata> arrayList = this.f;
        int size = arrayList.size();
        this.g = 0;
        if (z2) {
            int i2 = size;
            boolean z3 = false;
            for (int i3 = size - 1; i3 >= 0; i3--) {
                GroupMetadata groupMetadata = arrayList.get(i3);
                int a2 = a(groupMetadata.gId, groupMetadata.gPos);
                if (a2 != groupMetadata.gPos) {
                    if (a2 == -1) {
                        arrayList.remove(i3);
                        i2--;
                    }
                    groupMetadata.gPos = a2;
                    if (!z3) {
                        z3 = true;
                    }
                }
            }
            if (z3) {
                Collections.sort(arrayList);
            }
            size = i2;
        }
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            GroupMetadata groupMetadata2 = arrayList.get(i6);
            int f2 = (groupMetadata2.lastChildFlPos == -1 || z) ? f(groupMetadata2.gPos) : groupMetadata2.lastChildFlPos - groupMetadata2.flPos;
            this.g += f2;
            int i7 = i5 + (groupMetadata2.gPos - i4);
            i4 = groupMetadata2.gPos;
            groupMetadata2.flPos = i7;
            i5 = i7 + f2;
            groupMetadata2.lastChildFlPos = i5;
        }
    }

    private void b(final b bVar, int i2, final int i3, int i4) {
        Log.d("ExpandableRecyclerConnector", "collapseAnimationStart:" + i2 + " ,groupPos:" + i3 + " , height:" + i4);
        e i5 = i(i3);
        d dVar = this.f1641b.get(i3);
        if (dVar == null) {
            dVar = new d(this.j, 400, new PathInterpolator(0.3f, 0.0f, 0.0f, 1.0f));
            this.f1641b.put(i3, dVar);
        } else {
            dVar.removeAllListeners();
            dVar.cancel();
        }
        boolean z = i2 == b() - 1;
        if (i5.c != -1) {
            i4 = i5.c;
        }
        dVar.a(false, z, i2, bVar, i5, i4, 0);
        dVar.addListener(new c() {
            public void onAnimationEnd(Animator animator) {
                bVar.a();
                ExpandableRecyclerConnector.this.k(i3);
                ExpandableRecyclerConnector.this.g(i3);
                bVar.setTag(0);
            }
        });
        dVar.start();
        bVar.setTag(2);
    }

    private RecyclerView.w e(int i2, int i3) {
        List list = this.c.get(f(i2, i3));
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (RecyclerView.w) list.remove(0);
    }

    private int f(int i2, int i3) {
        return this.e.c(i2, i3) + this.e.b();
    }

    private void h() {
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            List valueAt = this.d.valueAt(i2);
            int keyAt = this.d.keyAt(i2);
            List list = this.c.get(keyAt);
            if (list == null) {
                list = new ArrayList();
                this.c.put(keyAt, list);
            }
            list.addAll(valueAt);
        }
        this.d.clear();
    }

    private e i(int i2) {
        e eVar = this.f1640a.get(i2);
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.f1640a.put(i2, eVar2);
        return eVar2;
    }

    private boolean j(int i2) {
        e i3 = i(i2);
        if (i3.f1655a && i3.f1656b) {
            return false;
        }
        i3.f1655a = true;
        i3.f1656b = true;
        return true;
    }

    /* access modifiers changed from: private */
    public void k(int i2) {
        e i3 = i(i2);
        i3.f1655a = false;
        i3.c = -1;
        h();
    }

    /* access modifiers changed from: package-private */
    public int a(long j2, int i2) {
        int a2 = this.e.a();
        if (a2 == 0 || j2 == Long.MIN_VALUE) {
            return -1;
        }
        int i3 = a2 - 1;
        int min = Math.min(i3, Math.max(0, i2));
        long uptimeMillis = SystemClock.uptimeMillis() + 100;
        c cVar = this.e;
        if (cVar == null) {
            return -1;
        }
        int i4 = min;
        int i5 = i4;
        boolean z = false;
        while (SystemClock.uptimeMillis() <= uptimeMillis) {
            if (cVar.d(min) != j2) {
                boolean z2 = i4 == i3;
                boolean z3 = i5 == 0;
                if (z2 && z3) {
                    break;
                } else if (z3 || (z && !z2)) {
                    i4++;
                    z = false;
                    min = i4;
                } else if (z2 || (!z && !z3)) {
                    i5--;
                    z = true;
                    min = i5;
                }
            } else {
                return min;
            }
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams a() {
        return new AbsListView.LayoutParams(-1, -2, 0);
    }

    /* access modifiers changed from: package-private */
    public g a(i iVar) {
        i iVar2 = iVar;
        ArrayList<GroupMetadata> arrayList = this.f;
        int size = arrayList.size();
        int i2 = size - 1;
        if (size == 0) {
            return g.a(iVar2.f1703a, iVar2.d, iVar2.f1703a, iVar2.f1704b, (GroupMetadata) null, 0);
        }
        int i3 = 0;
        int i4 = 0;
        while (i4 <= i2) {
            i3 = ((i2 - i4) / 2) + i4;
            GroupMetadata groupMetadata = arrayList.get(i3);
            if (iVar2.f1703a > groupMetadata.gPos) {
                i4 = i3 + 1;
            } else if (iVar2.f1703a < groupMetadata.gPos) {
                i2 = i3 - 1;
            } else if (iVar2.f1703a == groupMetadata.gPos) {
                if (iVar2.d == 2) {
                    return g.a(groupMetadata.flPos, iVar2.d, iVar2.f1703a, iVar2.f1704b, groupMetadata, i3);
                }
                if (iVar2.d == 1) {
                    return g.a(groupMetadata.flPos + iVar2.f1704b + 1, iVar2.d, iVar2.f1703a, iVar2.f1704b, groupMetadata, i3);
                }
                return null;
            }
        }
        if (iVar2.d != 2) {
            return null;
        }
        if (i4 > i3) {
            GroupMetadata groupMetadata2 = arrayList.get(i4 - 1);
            return g.a(groupMetadata2.lastChildFlPos + (iVar2.f1703a - groupMetadata2.gPos), iVar2.d, iVar2.f1703a, iVar2.f1704b, (GroupMetadata) null, i4);
        } else if (i2 >= i3) {
            return null;
        } else {
            int i5 = 1 + i2;
            GroupMetadata groupMetadata3 = arrayList.get(i5);
            return g.a(groupMetadata3.flPos - (groupMetadata3.gPos - iVar2.f1703a), iVar2.d, iVar2.f1703a, iVar2.f1704b, (GroupMetadata) null, i5);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v0, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v1, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v2, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v3, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v5, resolved type: boolean} */
    /* JADX WARNING: Multi-variable type inference failed */
    public void a(RecyclerView.w wVar, final int i2) {
        g e2 = e(i2);
        int i3 = e2.f1658a.f1703a;
        e i4 = i(i3);
        wVar.f916a.setOnClickListener((View.OnClickListener) null);
        if (e2.f1658a.d == 2) {
            this.e.a(i3, e2.b(), wVar);
            wVar.f916a.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    ExpandableRecyclerConnector.this.j.a(view, i2);
                }
            });
        } else {
            boolean z = false;
            if (i4.f1655a) {
                b bVar = (b) wVar.f916a;
                bVar.a();
                int a2 = a(i4.f1656b, i3, bVar);
                Object tag = bVar.getTag();
                if (tag != null) {
                    z = ((Integer) tag).intValue();
                }
                if (i4.f1656b && !z) {
                    a(bVar, i2, i3, a2);
                } else if (i4.f1656b || z) {
                    Log.e("ExpandableRecyclerConnector", "onBindViewHolder: state is no match:" + z);
                } else {
                    b(bVar, i2, i3, a2);
                }
            } else if (e2.f1658a.d == 1) {
                if (e2.f1659b.lastChildFlPos == i2) {
                    z = true;
                }
                this.e.a(i3, e2.f1658a.f1704b, z, wVar);
                if (this.e.a(i3, e2.f1658a.f1704b)) {
                    wVar.f916a.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            ExpandableRecyclerConnector.this.j.a(view, i2);
                        }
                    });
                }
            } else {
                throw new RuntimeException("Flat list position is of unknown type");
            }
        }
        e2.a();
    }

    public void a(c cVar) {
        c cVar2 = this.e;
        if (cVar2 != null) {
            cVar2.a(this.i);
        }
        this.e = cVar;
        cVar.b(this.i);
    }

    /* access modifiers changed from: package-private */
    public void a(ArrayList<GroupMetadata> arrayList) {
        if (arrayList != null) {
            c cVar = this.e;
            if (cVar != null) {
                int a2 = cVar.a();
                int size = arrayList.size() - 1;
                while (size >= 0) {
                    if (arrayList.get(size).gPos < a2) {
                        size--;
                    } else {
                        return;
                    }
                }
                this.f = arrayList;
                a(true, false);
            }
        }
    }

    public boolean a(int i2) {
        e i3 = i(i2);
        if (i3.f1655a && !i3.f1656b) {
            return false;
        }
        i3.f1655a = true;
        i3.f1656b = false;
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean a(g gVar) {
        if (gVar.f1659b == null) {
            return false;
        }
        this.f.remove(gVar.f1659b);
        a(false, false);
        a(0, b());
        this.e.c(gVar.f1659b.gPos);
        return true;
    }

    public int b() {
        return this.e.a() + this.g;
    }

    public long b(int i2) {
        long j2;
        g e2 = e(i2);
        long d2 = this.e.d(e2.f1658a.f1703a);
        if (e2.f1658a.d == 2) {
            j2 = this.e.a(d2);
        } else if (e2.f1658a.d == 1) {
            j2 = this.e.a(d2, this.e.b(e2.f1658a.f1703a, e2.f1658a.f1704b));
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        e2.a();
        return j2;
    }

    public RecyclerView.w b(ViewGroup viewGroup, int i2) {
        if (i2 == Integer.MIN_VALUE) {
            return new a(new b(viewGroup.getContext()));
        }
        if (this.k.get(i2).intValue() == 2) {
            return this.e.a(viewGroup, i2);
        }
        if (this.k.get(i2).intValue() == 1) {
            return this.e.b(viewGroup, i2);
        }
        throw new RuntimeException("Flat list position is of unknown type");
    }

    /* access modifiers changed from: package-private */
    public boolean b(g gVar) {
        if (gVar.f1658a.f1703a < 0) {
            throw new RuntimeException("Need group");
        } else if (this.h == 0 || gVar.f1659b != null) {
            return false;
        } else {
            if (this.f.size() >= this.h) {
                GroupMetadata groupMetadata = this.f.get(0);
                int indexOf = this.f.indexOf(groupMetadata);
                g(groupMetadata.gPos);
                if (gVar.c > indexOf) {
                    gVar.c--;
                }
            }
            GroupMetadata obtain = GroupMetadata.obtain(-1, -1, gVar.f1658a.f1703a, this.e.d(gVar.f1658a.f1703a));
            if (!j(obtain.gPos)) {
                return false;
            }
            this.f.add(gVar.c, obtain);
            a(false, false);
            a(0, b());
            this.e.b(obtain.gPos);
            return true;
        }
    }

    public int c(int i2) {
        g e2 = e(i2);
        i iVar = e2.f1658a;
        int e3 = iVar.d == 2 ? this.e.e(iVar.f1703a) : i(iVar.f1703a).f1655a ? MessageNano.UNSET_ENUM_VALUE : f(iVar.f1703a, iVar.f1704b);
        this.k.put(e3, Integer.valueOf(iVar.d));
        e2.a();
        return e3;
    }

    /* access modifiers changed from: package-private */
    public g e(int i2) {
        int i3;
        ArrayList<GroupMetadata> arrayList = this.f;
        int size = arrayList.size();
        int i4 = size - 1;
        if (size == 0) {
            return g.a(i2, 2, i2, -1, (GroupMetadata) null, 0);
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 <= i4) {
            int i7 = ((i4 - i5) / 2) + i5;
            GroupMetadata groupMetadata = arrayList.get(i7);
            if (i2 > groupMetadata.lastChildFlPos) {
                i5 = i7 + 1;
            } else if (i2 < groupMetadata.flPos) {
                i4 = i7 - 1;
            } else if (i2 == groupMetadata.flPos) {
                return g.a(i2, 2, groupMetadata.gPos, -1, groupMetadata, i7);
            } else if (i2 <= groupMetadata.lastChildFlPos) {
                return g.a(i2, 1, groupMetadata.gPos, i2 - (groupMetadata.flPos + 1), groupMetadata, i7);
            }
            i6 = i7;
        }
        if (i5 > i6) {
            GroupMetadata groupMetadata2 = arrayList.get(i5 - 1);
            i3 = (i2 - groupMetadata2.lastChildFlPos) + groupMetadata2.gPos;
        } else if (i4 < i6) {
            i5 = i4 + 1;
            GroupMetadata groupMetadata3 = arrayList.get(i5);
            i3 = groupMetadata3.gPos - (groupMetadata3.flPos - i2);
        } else {
            throw new RuntimeException("Unknown state");
        }
        return g.a(i2, 2, i3, -1, (GroupMetadata) null, i5);
    }

    /* access modifiers changed from: package-private */
    public int f(int i2) {
        if (i(i2).f1655a) {
            return 1;
        }
        return this.e.a(i2);
    }

    public void f() {
        a(true, true);
        a(0, b());
    }

    /* access modifiers changed from: package-private */
    public ArrayList<GroupMetadata> g() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public boolean g(int i2) {
        i a2 = i.a(2, i2, -1, -1);
        g a3 = a(a2);
        a2.a();
        if (a3 == null) {
            return false;
        }
        return a(a3);
    }

    /* access modifiers changed from: package-private */
    public boolean h(int i2) {
        i a2 = i.a(2, i2, -1, -1);
        g a3 = a(a2);
        a2.a();
        if (a3 == null) {
            return false;
        }
        return b(a3);
    }
}
