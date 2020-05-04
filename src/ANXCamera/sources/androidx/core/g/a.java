package androidx.core.g;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R;
import androidx.core.g.a.d;
import androidx.core.g.a.e;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* compiled from: AccessibilityDelegateCompat */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final View.AccessibilityDelegate f539a = new View.AccessibilityDelegate();

    /* renamed from: b  reason: collision with root package name */
    private final View.AccessibilityDelegate f540b;
    private final View.AccessibilityDelegate c;

    /* renamed from: androidx.core.g.a$a  reason: collision with other inner class name */
    /* compiled from: AccessibilityDelegateCompat */
    static final class C0015a extends View.AccessibilityDelegate {

        /* renamed from: a  reason: collision with root package name */
        final a f541a;

        C0015a(a aVar) {
            this.f541a = aVar;
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f541a.b(view, accessibilityEvent);
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            e a2 = this.f541a.a(view);
            if (a2 != null) {
                return (AccessibilityNodeProvider) a2.a();
            }
            return null;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f541a.d(view, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            d a2 = d.a(accessibilityNodeInfo);
            a2.i(u.z(view));
            a2.j(u.B(view));
            a2.f(u.A(view));
            this.f541a.a(view, a2);
            a2.a(accessibilityNodeInfo.getText(), view);
            List<d.a> b2 = a.b(view);
            for (int i = 0; i < b2.size(); i++) {
                a2.a(b2.get(i));
            }
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f541a.c(view, accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f541a.a(viewGroup, view, accessibilityEvent);
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f541a.a(view, i, bundle);
        }

        public void sendAccessibilityEvent(View view, int i) {
            this.f541a.a(view, i);
        }

        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f541a.a(view, accessibilityEvent);
        }
    }

    public a() {
        this(f539a);
    }

    public a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f540b = accessibilityDelegate;
        this.c = new C0015a(this);
    }

    private boolean a(int i, View view) {
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray == null) {
            return false;
        }
        WeakReference weakReference = (WeakReference) sparseArray.get(i);
        if (weakReference == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!a(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    private boolean a(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] d = d.d(view.createAccessibilityNodeInfo().getText());
            int i = 0;
            while (d != null && i < d.length) {
                if (clickableSpan.equals(d[i])) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    static List<d.a> b(View view) {
        List<d.a> list = (List) view.getTag(R.id.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    public e a(View view) {
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        AccessibilityNodeProvider accessibilityNodeProvider = this.f540b.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new e(accessibilityNodeProvider);
        }
        return null;
    }

    public void a(View view, int i) {
        this.f540b.sendAccessibilityEvent(view, i);
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        this.f540b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public void a(View view, d dVar) {
        this.f540b.onInitializeAccessibilityNodeInfo(view, dVar.a());
    }

    public boolean a(View view, int i, Bundle bundle) {
        List<d.a> b2 = b(view);
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= b2.size()) {
                break;
            }
            d.a aVar = b2.get(i2);
            if (aVar.a() == i) {
                z = aVar.a(view, bundle);
                break;
            }
            i2++;
        }
        if (!z && Build.VERSION.SDK_INT >= 16) {
            z = this.f540b.performAccessibilityAction(view, i, bundle);
        }
        return (z || i != R.id.accessibility_action_clickable_span) ? z : a(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f540b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityEvent) {
        return this.f540b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f540b.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.f540b.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* access modifiers changed from: package-private */
    public View.AccessibilityDelegate getBridge() {
        return this.c;
    }
}
