package co.polarr.renderer.filters;

import android.content.res.Resources;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bm extends b {
    public bm(Resources resources, Context context) {
        super(resources, p.a("temperature"), context);
        a(new String[]{"temperature", "tint"});
    }
}
