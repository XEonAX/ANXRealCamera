package co.polarr.renderer.filters;

import android.content.res.Resources;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class be extends b {
    public be(Resources resources, Context context) {
        super(resources, p.a("saturation_vibrance"), context);
        a(new String[]{"saturation", "vibrance"});
    }
}
