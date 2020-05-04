package co.polarr.renderer.entities;

import co.polarr.a.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@a
public class FilterPackage {
    public List<FilterItem> filters;
    public int is_free;
    public LangName pack_description;
    public String pack_id;
    public String pack_maker;
    public Object pack_name;
    public List<String> preview_images;
    public int version;

    public String packageName(String str) {
        Object obj;
        Object obj2 = this.pack_name;
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
                    obj = ((Map) this.pack_name).get(next);
                    break;
                }
            }
        }
        if (((Map) this.pack_name).isEmpty()) {
            return "";
        }
        obj = ((Map) this.pack_name).values().iterator().next();
        return obj.toString();
    }
}
