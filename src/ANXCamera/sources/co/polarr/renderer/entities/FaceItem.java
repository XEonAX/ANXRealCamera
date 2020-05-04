package co.polarr.renderer.entities;

import co.polarr.a.a;
import co.polarr.renderer.b.k;
import co.polarr.renderer.entities.Context;
import java.util.HashMap;

@a
public class FaceItem {
    public Context.FaceState adjustments = new Context.FaceState();
    public float[] boundaries;
    public float[][] markers;

    public static FaceItem fromDecodedHashMap(HashMap<String, Object> hashMap) {
        return fromJSON(k.a(hashMap));
    }

    public static FaceItem fromJSON(String str) {
        return (FaceItem) k.a(str, FaceItem.class);
    }
}
