package co.polarr.renderer.filters;

import android.content.res.Resources;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class br extends b {
    public br(Resources resources, Context context) {
        super(resources, p.a("whites_blacks"), context);
        a(new String[]{"whites", "blacks"});
    }
}
