package co.polarr.renderer.render;

import android.content.res.Resources;
import co.polarr.renderer.b.i;
import co.polarr.renderer.entities.Context;
import co.polarr.renderer.filters.Basic;
import co.polarr.renderer.filters.a.a;
import co.polarr.renderer.filters.a.d;

public class e {
    public static int a(Resources resources, int i, int i2, int i3) {
        int[] iArr = new int[1];
        i.a(iArr.length, iArr, 0, 6408, i2, i3);
        int i4 = iArr[0];
        d a2 = d.a((Context) null);
        a2.a((a) Basic.getInstance(resources));
        a2.a(i);
        a2.b(i4);
        a2.b(i2, i3);
        a2.draw();
        return i4;
    }

    public static int[] a(int i, int i2, int i3) {
        byte[] array = i.b(i, i2, i3).array();
        int[] iArr = new int[array.length];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr[i4] = array[i4] & 255;
        }
        return iArr;
    }

    public static int[] a(Resources resources, f fVar, int i, int i2) {
        if (fVar == null || fVar.c < 0) {
            return null;
        }
        int i3 = fVar.c;
        if (i == fVar.d && i2 == fVar.e) {
            return a(i3, i, i2);
        }
        if (resources == null) {
            return null;
        }
        int a2 = a(resources, i3, i, i2);
        int[] a3 = a(a2, i, i2);
        i.a(a2);
        b.d(a2);
        return a3;
    }
}
