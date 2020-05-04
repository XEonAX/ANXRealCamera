package co.polarr.renderer.entities;

import co.polarr.renderer.b.k;
import com.google.gson.annotations.SerializedName;
import java.util.HashMap;

public class TextItem {
    public String align;
    public float angle;
    @SerializedName("blend_mix")
    public float blendMix;
    @SerializedName("blend_mode")
    public float blendMode;

    /* renamed from: color  reason: collision with root package name */
    public float[] f1156color;
    public boolean disabled;
    @SerializedName("font_family")
    public String fontFamily;
    @SerializedName("font_name")
    public String fontName;
    @SerializedName("font_size")
    public float fontSize;
    @SerializedName("font_style")
    public String fontStyle;
    @SerializedName("font_weight")
    public String fontWeight;
    @SerializedName("letter_spacing")
    public float letterSpacing;
    @SerializedName("line_height")
    public float lineHeight;
    public String mode;
    public float opacity;
    public float orientation;
    public float[] position;
    public float[] scale;
    @SerializedName("shadow_blur")
    public float shadowBlur;
    @SerializedName("shadow_color")
    public float[] shadowColor;
    @SerializedName("shadow_offset")
    public float[] shadowOffset;
    @SerializedName("shadow_opacity")
    public float shadowOpacity;
    @SerializedName("stroke_size")
    public float strokeSize;
    public String text;
    public String type;
    public float wrap;

    public static TextItem fromDecodedHashMap(HashMap<String, Object> hashMap) {
        return fromJSON(k.a(hashMap));
    }

    public static TextItem fromJSON(String str) {
        return (TextItem) k.a(str, TextItem.class);
    }
}
