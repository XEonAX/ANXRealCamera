package co.polarr.renderer.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.LruCache;
import co.polarr.renderer.entities.FontItem;
import co.polarr.renderer.entities.TextItem;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, FontItem> f1129a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, FontItem> f1130b = new HashMap();
    private static final LruCache<FontItem, Typeface> c = new LruCache<>(5);
    private static final String cachePathBase = "ppe_fonts";
    private static final LruCache<String, Typeface> d = new LruCache<>(20);
    private static final String pathBase = "editor/fonts/";
    private static final String systemPathBase = "editor/fonts/";

    static {
        f1129a.put("Abril Fatface", new FontItem("Abril Fatface", "AbrilFatface-Regular.ttf"));
        f1129a.put("Amatica SC", new FontItem("Amatica SC", "AmaticaSC-Regular.ttf"));
        f1129a.put("Audiowide", new FontItem("Audiowide", "Audiowide-Regular.ttf"));
        f1129a.put("Bangers", new FontItem("'Bangers'", "Bangers.ttf"));
        f1129a.put("BioRhyme", new FontItem("BioRhyme", "BioRhyme-Regular.ttf"));
        f1129a.put("Cinzel", new FontItem("Cinzel", "Cinzel-Regular.ttf"));
        f1129a.put("GUERRILLA", new FontItem("GUERRILLA", "GUERRILLA-Normal.otf"));
        f1129a.put("Intro Inline", new FontItem("Intro Inline", "Intro Inline.otf"));
        f1129a.put("Intro", new FontItem("Intro", "Intro.otf"));
        f1129a.put("Monoton", new FontItem("Monoton", "Monoton-Regular.ttf"));
        f1129a.put("Pahnto", new FontItem("Pahnto", "pahnto.ttf"));
        f1129a.put("Panton B", new FontItem("Panton", 900, "Panton-BlackCaps.otf"));
        f1129a.put("Panton B I", new FontItem("Panton", 900, "italic", "Panton-BlackitalicCaps.otf"));
        f1129a.put("Panton L", new FontItem("Panton", 300, "Panton-LightCaps.otf"));
        f1129a.put("Panton L I", new FontItem("Panton", 300, "italic", "Panton-LightitalicCaps.otf"));
        f1129a.put("Sensa Brush", new FontItem("Sensa Brush", "SensaBrush-Fill.otf"));
        f1129a.put("Special Elite", new FontItem("Special Elite", "SpecialElite.ttf"));
        f1129a.put("Sprite Graffiti", new FontItem("Sprite Graffiti", "Sprite Graffiti.otf"));
        f1129a.put("Sunday", new FontItem("Sunday", "Sunday-Regular.otf"));
        f1129a.put("Unkempt", new FontItem("Unkempt", "Unkempt-Regular.ttf"));
        f1130b.put("Artwork", new FontItem("Artwork", "PolarrArtwork.otf"));
        f1130b.put("Amatica SC", new FontItem("Amatica SC", "AmaticaSC-Regular.ttf"));
        f1130b.put("Audiowide", new FontItem("Audiowide", "Audiowide-Regular.ttf"));
        f1130b.put("Bangers", new FontItem("'Bangers'", "Bangers.ttf"));
        f1130b.put("BioRhyme", new FontItem("BioRhyme", "BioRhyme-Regular.ttf"));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r3.delete();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x00d1 */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    public static Typeface a(Context context, AssetManager assetManager, TextItem textItem, int i) {
        FontItem fontItem;
        Typeface create;
        Typeface typeface;
        Typeface typeface2;
        Typeface typeface3;
        String str;
        if ("Artwork".equalsIgnoreCase(textItem.type)) {
            fontItem = f1130b.get("Artwork");
            Typeface typeface4 = c.get(fontItem);
            if (typeface4 != null) {
                return typeface4;
            }
            try {
                create = Typeface.createFromAsset(assetManager, "editor/fonts/" + fontItem.src);
            } catch (Exception unused) {
                create = Typeface.create(textItem.fontFamily, i);
            }
        } else {
            if (f1129a.containsKey(textItem.fontName)) {
                fontItem = f1129a.get(textItem.fontName);
                Typeface typeface5 = c.get(fontItem);
                if (typeface5 != null) {
                    return typeface5;
                }
                try {
                    str = "editor/fonts/" + fontItem.src;
                } catch (Exception unused2) {
                    create = Typeface.create(textItem.fontFamily, i);
                }
            } else if (f1130b.containsKey(textItem.fontName)) {
                fontItem = f1130b.get(textItem.fontName);
                Typeface typeface6 = c.get(fontItem);
                if (typeface6 != null) {
                    return typeface6;
                }
                str = "editor/fonts/" + fontItem.src;
            } else {
                try {
                    typeface = d.get(textItem.fontName);
                } catch (Exception e) {
                    e.printStackTrace();
                    typeface = null;
                }
                Typeface typeface7 = typeface;
                if (typeface7 != null || textItem.fontName == null) {
                    return typeface7;
                }
                File a2 = a(context, textItem.fontName);
                if (a2 != null) {
                    typeface2 = Typeface.createFromFile(a2);
                    typeface3 = typeface2;
                    if (typeface3 != null) {
                        return typeface3;
                    }
                    d.put(textItem.fontName, typeface3);
                    return typeface3;
                }
                typeface2 = Typeface.create(textItem.fontFamily, i);
                typeface3 = typeface2;
                if (typeface3 != null) {
                }
            }
            create = Typeface.createFromAsset(assetManager, str);
        }
        Typeface typeface8 = create;
        c.put(fontItem, typeface8);
        return typeface8;
    }

    private static File a(Context context, String str) {
        String str2 = context.getExternalFilesDir((String) null) + File.separator + cachePathBase;
        File file = new File(str2 + File.separator + str);
        if (file.exists()) {
            return file;
        }
        return null;
    }
}
