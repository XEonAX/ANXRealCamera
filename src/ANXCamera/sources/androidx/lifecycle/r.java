package androidx.lifecycle;

/* compiled from: ViewModelProvider */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final a f772a;

    /* renamed from: b  reason: collision with root package name */
    private final s f773b;

    /* compiled from: ViewModelProvider */
    public interface a {
        <T extends q> T a(Class<T> cls);
    }

    /* compiled from: ViewModelProvider */
    static abstract class b implements a {
        b() {
        }

        public abstract <T extends q> T a(String str, Class<T> cls);
    }

    public r(s sVar, a aVar) {
        this.f772a = aVar;
        this.f773b = sVar;
    }

    public <T extends q> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public <T extends q> T a(String str, Class<T> cls) {
        T a2 = this.f773b.a(str);
        if (cls.isInstance(a2)) {
            return a2;
        }
        a aVar = this.f772a;
        T a3 = aVar instanceof b ? ((b) aVar).a(str, cls) : aVar.a(cls);
        this.f773b.a(str, a3);
        return a3;
    }
}
