package co.polarr.renderer.filters;

import android.content.res.Resources;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.a.b;

public class bi extends b {
    public bi(Resources resources, Context context) {
        super(resources, p.a("split_tone"), context);
        a(new String[]{"highlights_hue", "highlights_saturation", "shadows_hue", "shadows_saturation", "balance"});
    }
}
