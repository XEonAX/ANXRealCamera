package co.polarr.renderer.filters;

import android.content.res.Resources;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class aa extends b {
    public aa(Resources resources, Context context) {
        super(resources, p.a("exposure"), context);
        a(new String[]{"exposure", "gamma"});
    }
}
