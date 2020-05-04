package androidx.core.g.a;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.R;
import androidx.core.g.a.g;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AccessibilityNodeInfoCompat */
public class d {
    private static int d;

    /* renamed from: a  reason: collision with root package name */
    public int f544a = -1;

    /* renamed from: b  reason: collision with root package name */
    private final AccessibilityNodeInfo f545b;
    private int c = -1;

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;

        /* renamed from: a  reason: collision with root package name */
        public static final a f546a = new a(1, (CharSequence) null);

        /* renamed from: b  reason: collision with root package name */
        public static final a f547b = new a(2, (CharSequence) null);
        public static final a c = new a(4, (CharSequence) null);
        public static final a d = new a(8, (CharSequence) null);
        public static final a e = new a(16, (CharSequence) null);
        public static final a f = new a(32, (CharSequence) null);
        public static final a g = new a(64, (CharSequence) null);
        public static final a h = new a(128, (CharSequence) null);
        public static final a i = new a(256, (CharSequence) null, g.b.class);
        public static final a j = new a(512, (CharSequence) null, g.b.class);
        public static final a k = new a(1024, (CharSequence) null, g.c.class);
        public static final a l = new a(2048, (CharSequence) null, g.c.class);
        public static final a m = new a(4096, (CharSequence) null);
        public static final a n = new a(8192, (CharSequence) null);
        public static final a o = new a(STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR, (CharSequence) null);
        public static final a p = new a(STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT, (CharSequence) null);
        public static final a q = new a(STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD, (CharSequence) null);
        public static final a r = new a(STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_VIDEO, (CharSequence) null, g.C0016g.class);
        public static final a s = new a(STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_IMAGE, (CharSequence) null);
        public static final a t = new a(STMobileHumanActionNative.ST_MOBILE_ENABLE_INPUT_CUSTOM, (CharSequence) null);
        public static final a u = new a(1048576, (CharSequence) null);
        public static final a v = new a(2097152, (CharSequence) null, g.h.class);
        public static final a w;
        public static final a x;
        public static final a y;
        public static final a z;
        final Object H;
        protected final g I;
        private final int J;
        private final CharSequence K;
        private final Class<? extends g.a> L;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            a aVar = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            w = aVar;
            a aVar2 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, (CharSequence) null, (g) null, g.e.class);
            x = aVar2;
            a aVar3 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            y = aVar3;
            a aVar4 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            z = aVar4;
            a aVar5 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            A = aVar5;
            a aVar6 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            B = aVar6;
            a aVar7 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            C = aVar7;
            a aVar8 = new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, (CharSequence) null, (g) null, g.f.class);
            D = aVar8;
            a aVar9 = new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, (CharSequence) null, (g) null, g.d.class);
            E = aVar9;
            a aVar10 = new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            F = aVar10;
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            a aVar11 = new a(accessibilityAction, 16908357, (CharSequence) null, (g) null, (Class<? extends g.a>) null);
            G = aVar11;
        }

        public a(int i2, CharSequence charSequence) {
            this((Object) null, i2, charSequence, (g) null, (Class<? extends g.a>) null);
        }

        private a(int i2, CharSequence charSequence, Class<? extends g.a> cls) {
            this((Object) null, i2, charSequence, (g) null, cls);
        }

        a(Object obj, int i2, CharSequence charSequence, g gVar, Class<? extends g.a> cls) {
            this.J = i2;
            this.K = charSequence;
            this.I = gVar;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.H = obj;
            } else {
                this.H = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            }
            this.L = cls;
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.H).getId();
            }
            return 0;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0028  */
        public boolean a(View view, Bundle bundle) {
            if (this.I == null) {
                return false;
            }
            g.a aVar = null;
            Class<? extends g.a> cls = this.L;
            if (cls != null) {
                try {
                    g.a aVar2 = (g.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    try {
                        aVar2.a(bundle);
                        aVar = aVar2;
                    } catch (Exception e2) {
                        e = e2;
                        aVar = aVar2;
                        Class<? extends g.a> cls2 = this.L;
                        if (cls2 != null) {
                        }
                        Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + r1, e);
                        return this.I.a(view, aVar);
                    }
                } catch (Exception e3) {
                    e = e3;
                    Class<? extends g.a> cls22 = this.L;
                    String name = cls22 != null ? "null" : cls22.getName();
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + name, e);
                    return this.I.a(view, aVar);
                }
            }
            return this.I.a(view, aVar);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final Object f548a;

        b(Object obj) {
            this.f548a = obj;
        }

        public static b a(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : Build.VERSION.SDK_INT >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new b((Object) null);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final Object f549a;

        c(Object obj) {
            this.f549a = obj;
        }

        public static c a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return Build.VERSION.SDK_INT >= 21 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : Build.VERSION.SDK_INT >= 19 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new c((Object) null);
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f549a).getColumnIndex();
            }
            return 0;
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f549a).getColumnSpan();
            }
            return 0;
        }

        public int c() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f549a).getRowIndex();
            }
            return 0;
        }

        public int d() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f549a).getRowSpan();
            }
            return 0;
        }

        public boolean e() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f549a).isSelected();
            }
            return false;
        }
    }

    private d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f545b = accessibilityNodeInfo;
    }

    private int a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals((ClickableSpan) sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = d;
        d = i2 + 1;
        return i2;
    }

    public static d a(View view) {
        return a(AccessibilityNodeInfo.obtain(view));
    }

    public static d a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new d(accessibilityNodeInfo);
    }

    public static d a(d dVar) {
        return a(AccessibilityNodeInfo.obtain(dVar.f545b));
    }

    private List<Integer> a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f545b.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList arrayList = new ArrayList();
        this.f545b.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    private void a(int i, boolean z) {
        Bundle v = v();
        if (v != null) {
            int i2 = v.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i);
            if (!z) {
                i = 0;
            }
            v.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    private void a(ClickableSpan clickableSpan, Spanned spanned, int i) {
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    public static d b() {
        return a(AccessibilityNodeInfo.obtain());
    }

    private static String b(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case STMobileHumanActionNative.ST_MOBILE_ENABLE_BODY_CONTOUR /*16384*/:
                return "ACTION_COPY";
            case STMobileHumanActionNative.ST_MOBILE_ENABLE_HAIR_SEGMENT /*32768*/:
                return "ACTION_PASTE";
            case STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD /*65536*/:
                return "ACTION_CUT";
            case STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_VIDEO /*131072*/:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    private SparseArray<WeakReference<ClickableSpan>> c(View view) {
        SparseArray<WeakReference<ClickableSpan>> d2 = d(view);
        if (d2 != null) {
            return d2;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(R.id.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    private SparseArray<WeakReference<ClickableSpan>> d(View view) {
        return (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
    }

    public static ClickableSpan[] d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private void e(View view) {
        SparseArray<WeakReference<ClickableSpan>> d2 = d(view);
        if (d2 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < d2.size(); i++) {
                if (d2.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                d2.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    private boolean w() {
        return !a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    private void x() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f545b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f545b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f545b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f545b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    public AccessibilityNodeInfo a() {
        return this.f545b;
    }

    public void a(int i) {
        this.f545b.addAction(i);
    }

    public void a(Rect rect) {
        this.f545b.getBoundsInParent(rect);
    }

    public void a(View view, int i) {
        this.c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f545b.setSource(view, i);
        }
    }

    public void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f545b.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.H);
        }
    }

    public void a(CharSequence charSequence) {
        this.f545b.setPackageName(charSequence);
    }

    public void a(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 26) {
            x();
            e(view);
            ClickableSpan[] d2 = d(charSequence);
            if (d2 != null && d2.length > 0) {
                v().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.accessibility_action_clickable_span);
                SparseArray<WeakReference<ClickableSpan>> c2 = c(view);
                int i = 0;
                while (d2 != null && i < d2.length) {
                    int a2 = a(d2[i], c2);
                    c2.put(a2, new WeakReference(d2[i]));
                    a(d2[i], (Spanned) charSequence, a2);
                    i++;
                }
            }
        }
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f545b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f548a);
        }
    }

    public void a(boolean z) {
        this.f545b.setFocusable(z);
    }

    public boolean a(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f545b.performAction(i, bundle);
        }
        return false;
    }

    public void b(Rect rect) {
        this.f545b.setBoundsInParent(rect);
    }

    public void b(View view) {
        this.f544a = -1;
        this.f545b.setParent(view);
    }

    public void b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f545b.addChild(view, i);
        }
    }

    public void b(CharSequence charSequence) {
        this.f545b.setClassName(charSequence);
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f545b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f549a);
        }
    }

    public void b(boolean z) {
        this.f545b.setFocused(z);
    }

    public int c() {
        return this.f545b.getChildCount();
    }

    public void c(Rect rect) {
        this.f545b.getBoundsInScreen(rect);
    }

    public void c(View view, int i) {
        this.f544a = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f545b.setParent(view, i);
        }
    }

    public void c(CharSequence charSequence) {
        this.f545b.setText(charSequence);
    }

    public void c(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f545b.setVisibleToUser(z);
        }
    }

    public int d() {
        return this.f545b.getActions();
    }

    public void d(Rect rect) {
        this.f545b.setBoundsInScreen(rect);
    }

    public void d(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f545b.setAccessibilityFocused(z);
        }
    }

    public void e(CharSequence charSequence) {
        this.f545b.setContentDescription(charSequence);
    }

    public void e(boolean z) {
        this.f545b.setSelected(z);
    }

    public boolean e() {
        return this.f545b.isCheckable();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f545b;
        if (accessibilityNodeInfo == null) {
            if (dVar.f545b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(dVar.f545b)) {
            return false;
        }
        return this.c == dVar.c && this.f544a == dVar.f544a;
    }

    public void f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f545b.setPaneTitle(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f545b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void f(boolean z) {
        this.f545b.setClickable(z);
    }

    public boolean f() {
        return this.f545b.isChecked();
    }

    public void g(boolean z) {
        this.f545b.setEnabled(z);
    }

    public boolean g() {
        return this.f545b.isFocusable();
    }

    public void h(boolean z) {
        this.f545b.setScrollable(z);
    }

    public boolean h() {
        return this.f545b.isFocused();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f545b;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f545b.setScreenReaderFocusable(z);
        } else {
            a(1, z);
        }
    }

    public boolean i() {
        return this.f545b.isSelected();
    }

    public void j(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f545b.setHeading(z);
        } else {
            a(2, z);
        }
    }

    public boolean j() {
        return this.f545b.isClickable();
    }

    public boolean k() {
        return this.f545b.isLongClickable();
    }

    public boolean l() {
        return this.f545b.isEnabled();
    }

    public boolean m() {
        return this.f545b.isPassword();
    }

    public boolean n() {
        return this.f545b.isScrollable();
    }

    public CharSequence o() {
        return this.f545b.getPackageName();
    }

    public CharSequence p() {
        return this.f545b.getClassName();
    }

    public CharSequence q() {
        if (!w()) {
            return this.f545b.getText();
        }
        List<Integer> a2 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> a3 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> a4 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> a5 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f545b.getText(), 0, this.f545b.getText().length()));
        for (int i = 0; i < a2.size(); i++) {
            spannableString.setSpan(new a(a5.get(i).intValue(), this, v().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a2.get(i).intValue(), a3.get(i).intValue(), a4.get(i).intValue());
        }
        return spannableString;
    }

    public CharSequence r() {
        return this.f545b.getContentDescription();
    }

    public void s() {
        this.f545b.recycle();
    }

    public String t() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f545b.getViewIdResourceName();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(o());
        sb.append("; className: ");
        sb.append(p());
        sb.append("; text: ");
        sb.append(q());
        sb.append("; contentDescription: ");
        sb.append(r());
        sb.append("; viewId: ");
        sb.append(t());
        sb.append("; checkable: ");
        sb.append(e());
        sb.append("; checked: ");
        sb.append(f());
        sb.append("; focusable: ");
        sb.append(g());
        sb.append("; focused: ");
        sb.append(h());
        sb.append("; selected: ");
        sb.append(i());
        sb.append("; clickable: ");
        sb.append(j());
        sb.append("; longClickable: ");
        sb.append(k());
        sb.append("; enabled: ");
        sb.append(l());
        sb.append("; password: ");
        sb.append(m());
        sb.append("; scrollable: " + n());
        sb.append("; [");
        int d2 = d();
        while (d2 != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(d2);
            d2 &= ~numberOfTrailingZeros;
            sb.append(b(numberOfTrailingZeros));
            if (d2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public c u() {
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = this.f545b.getCollectionItemInfo();
        if (collectionItemInfo != null) {
            return new c(collectionItemInfo);
        }
        return null;
    }

    public Bundle v() {
        return Build.VERSION.SDK_INT >= 19 ? this.f545b.getExtras() : new Bundle();
    }
}
