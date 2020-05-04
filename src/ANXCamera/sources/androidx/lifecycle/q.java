package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ViewModel */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f770a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f771b = false;

    private static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        this.f771b = true;
        Map<String, Object> map = this.f770a;
        if (map != null) {
            synchronized (map) {
                for (Object a2 : this.f770a.values()) {
                    a(a2);
                }
            }
        }
        a();
    }
}
