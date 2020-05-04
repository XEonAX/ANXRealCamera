package co.polarr.renderer.entities;

import co.polarr.a.a;
import co.polarr.renderer.b.p;
import java.util.Iterator;
import java.util.Map;

@a
public class FilterItem {
    public Map<String, Object> comments;
    public String description;
    public String id;
    public Object name;
    public Map<String, Object> state;

    public String filterName(String str) {
        Object obj;
        Object obj2 = this.name;
        if (!(obj2 instanceof Map)) {
            return obj2.toString();
        }
        if (str != null) {
            Iterator it = ((Map) obj2).keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (str.equals(next)) {
                    obj = ((Map) this.name).get(next);
                    break;
                }
            }
        }
        if (((Map) this.name).isEmpty()) {
            return "";
        }
        obj = ((Map) this.name).values().iterator().next();
        return obj.toString();
    }

    public void updateStates() {
        Map<String, Object> map = this.state;
        if (map != null) {
            for (String next : map.keySet()) {
                this.state.put(next, p.a(next, this.state.get(next)));
            }
        }
    }
}
