package androidx.core.g.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AccessibilityNodeProviderCompat */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f550a;

    /* compiled from: AccessibilityNodeProviderCompat */
    static class a extends AccessibilityNodeProvider {

        /* renamed from: a  reason: collision with root package name */
        final e f551a;

        a(e eVar) {
            this.f551a = eVar;
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            d a2 = this.f551a.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.a();
        }

        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<d> a2 = this.f551a.a(str, i);
            if (a2 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = a2.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(a2.get(i2).a());
            }
            return arrayList;
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f551a.a(i, i2, bundle);
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat */
    static class b extends a {
        b(e eVar) {
            super(eVar);
        }

        public AccessibilityNodeInfo findFocus(int i) {
            d b2 = this.f551a.b(i);
            if (b2 == null) {
                return null;
            }
            return b2.a();
        }
    }

    public e() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f550a = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f550a = new a(this);
        } else {
            this.f550a = null;
        }
    }

    public e(Object obj) {
        this.f550a = obj;
    }

    public d a(int i) {
        return null;
    }

    public Object a() {
        return this.f550a;
    }

    public List<d> a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public d b(int i) {
        return null;
    }
}
