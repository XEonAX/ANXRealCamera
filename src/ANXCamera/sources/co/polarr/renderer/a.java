package co.polarr.renderer;

import co.polarr.renderer.entities.FilterItem;
import co.polarr.renderer.entities.FilterPackage;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a f1105a = new a();

    /* renamed from: b  reason: collision with root package name */
    private List<FilterPackage> f1106b;
    private Map<String, FilterItem> c;

    private a() {
    }

    public static a a() {
        return f1105a;
    }

    public FilterItem a(String str) {
        if (this.c == null) {
            b();
        }
        return this.c.get(str);
    }

    public void b() {
        this.f1106b = b.f1111a;
        this.c = new HashMap();
        for (FilterPackage filterPackage : this.f1106b) {
            for (FilterItem next : filterPackage.filters) {
                next.updateStates();
                this.c.put(next.id, next);
            }
        }
    }

    public List<FilterPackage> c() {
        List<FilterPackage> list = this.f1106b;
        if (list == null) {
            return null;
        }
        return list;
    }
}
