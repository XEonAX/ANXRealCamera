package co.polarr.renderer;

import android.graphics.Bitmap;
import co.polarr.a.a;
import java.util.List;

@a
public interface RenderCallback {
    void onRenderBitmap(List<Bitmap> list);
}
