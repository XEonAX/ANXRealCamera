package co.polarr.renderer.b;

import android.content.res.Resources;
import android.opengl.GLES20;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.entities.SpotItem;
import co.polarr.renderer.filters.a.a;
import co.polarr.renderer.filters.bk;
import co.polarr.renderer.filters.c;
import co.polarr.renderer.filters.y;
import co.polarr.renderer.filters.z;
import co.polarr.renderer.render.b;
import java.util.List;

public class q {
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v6, resolved type: java.util.List} */
    /* JADX WARNING: Multi-variable type inference failed */
    public static void a(Context context, Resources resources) {
        List list = (List) context.renderStates.get("spots");
        List list2 = (List) context.renderStates.get("zPrevSpots");
        if (list != null && !list.isEmpty() && !t.a((Object) list2, (Object) list)) {
            list2 = t.a((Object) list, list.getClass());
            c(context, resources);
        }
        context.renderStates.put("zPrevSpots", list2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: co.polarr.renderer.filters.y} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: co.polarr.renderer.filters.z} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v10, resolved type: co.polarr.renderer.filters.y} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v11, resolved type: co.polarr.renderer.filters.y} */
    /* JADX WARNING: Multi-variable type inference failed */
    private static void b(Context context, Resources resources) {
        y yVar;
        GLES20.glDisable(3042);
        if (context.textures == null || context.textures.length <= 0) {
            y a2 = y.a(resources, context);
            a2.a(h.a());
            yVar = a2;
        } else {
            z a3 = z.a(resources, context);
            a3.a(h.a());
            yVar = a3;
        }
        b.a(context, context.imageTexture.c, context.readableTexture, (a) yVar, false);
        List list = (List) context.renderStates.get("spots");
        bk a4 = bk.a(resources, context);
        for (int i = 0; i < list.size(); i++) {
            SpotItem spotItem = (SpotItem) list.get(i);
            a4.f1228a = spotItem.feather;
            a4.f1229b = spotItem.size;
            a4.c = t.a(spotItem.position);
            a4.d = t.a(spotItem.sourcePosition);
            a4.e = spotItem.size[0] * 6.0f;
            a4.f = (float) Math.min(1, i);
            b.a(context, context.readableTexture.c, context.writableTexture, (a) a4, false);
            b.a(context);
        }
    }

    private static void c(Context context, Resources resources) {
        int i = context.paintTexture.d;
        int i2 = context.paintTexture.e;
        int i3 = context.readableTexture.d;
        int i4 = context.readableTexture.e;
        i.a(context.retouchTexture, i, i2);
        i.a(context.readableTexture, i, i2);
        i.a(context.writableTexture, i, i2);
        b(context, resources);
        c a2 = c.a(resources, context);
        a2.a(context);
        a2.f1236a = new float[]{0.0f, (((float) i) / ((float) i2)) * 0.036f};
        b.a(context, context.readableTexture.c, context.writableTexture, (a) a2, true);
        a2.f1236a = new float[]{0.036f, 0.0f};
        b.a(context, context.writableTexture.c, context.retouchTexture, (a) a2, false);
        i.a(context.readableTexture, i3, i4);
        i.a(context.writableTexture, i3, i4);
    }
}
