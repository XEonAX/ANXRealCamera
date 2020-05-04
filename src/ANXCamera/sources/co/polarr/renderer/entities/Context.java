package co.polarr.renderer.entities;

import android.content.res.AssetManager;
import android.content.res.Resources;
import co.polarr.a.a;
import co.polarr.renderer.b.e;
import co.polarr.renderer.b.h;
import co.polarr.renderer.b.i;
import co.polarr.renderer.b.p;
import co.polarr.renderer.entities.Mesh;
import co.polarr.renderer.render.b;
import co.polarr.renderer.render.c;
import co.polarr.renderer.render.d;
import co.polarr.renderer.render.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Context {
    public static final int DESIGN_FOR_SDK_HEIGHT = 800;
    public static final float DESIGN_FOR_SDK_IMAGE = 2073600.0f;
    public static final int DESIGN_FOR_SDK_WIDTH = 800;
    public static Mesh DefaultMesh = null;
    public static final int GRAIN_TEXTURE_SIZE = 1024;
    public static Context LutContext = null;
    public static final int P4_3_OVERLAY_TEXTURE_SIZE = 1000;
    public static float[] backgroundColor = {0.11764706f, 0.11764706f, 0.11764706f};
    public static Mesh overlayMesh;
    public AssetManager assetManager;
    public f[] brushTextures = new f[4];
    public Map<String, f> brushes;
    public f cacheTexture;
    public float[] compositeCoords = {0.0f, 0.0f, 0.0f, 0.0f};
    public float[] compositeResolution = {0.0f, 0.0f};
    public android.content.Context context;
    public float[] cropMatrix = h.a();
    public boolean cropMode = false;
    public float cropScale = 1.0f;
    public b currentRender;
    public f dehazeTexture;
    public float[][] deltaVertices;
    public f denoiseTexture;
    public e distortion = new e();
    public float[][] distortionVertices;
    public float downsampleFactor = 1.0f;
    public f exportTexture;
    public c[] faceMasks;
    public float fov;
    public d glRenderView;
    public f grainTexture;
    public boolean grainTextureBinded = false;
    public f imageTexture;
    public f intermediateTexture;
    public float invFov;
    public boolean isLutRender = false;
    public boolean isOES = false;
    public boolean isSDK = false;
    public f lensBlurTexture;
    public float margin = 0.0f;
    public float[] margins = {0.0f, 0.0f, 0.0f, 0.0f};
    public float[] matrix = h.a();
    public float[] matrixInv = h.a();
    public int maxTextureSize;
    public Mesh mesh;
    public float minZoom;
    public boolean needUpdateFace = false;
    public float[] offset = {0.0f, 0.0f};
    public int orientation = 0;
    public Overlay overlay = new Overlay();
    public float[] overlayMask = {0.0f, 0.0f, 0.0f, 0.0f};
    public float[] overlayMatrix = h.a();
    public f overlayTexture;
    public boolean overlayTextureBinded = false;
    public f paintTexture;
    public Map<String, f> patterns;
    public float[] perspectiveMatrix = h.a();
    public boolean photoLoaded = false;
    public float[] projectionMatrix = h.a();
    public float[] projectionMatrixInv = h.a();
    public f readableTexture;
    public Map<String, Object> renderStates = new HashMap();
    public Resources resources;
    public f retouchTexture;
    public float rotation = 0.0f;
    public float[] rotation90Matrix = h.a();
    public float[] rotation90MatrixInv = h.a();
    public float[] rotationMatrix = h.a();
    public float[] scaleMatrix = h.a();
    public Screen screen = new Screen();
    public float[] screenMatrix = h.a();
    public f screenTexture;
    public p shaderUtil;
    public float[] skinColor = {0.0f, 0.0f, 0.0f};
    public f tempTexture;
    public List<f> textLayers = new ArrayList();
    public int[] textures = new int[0];
    public float[] thresholdAverage = {1.0f, 1.0f, 1.0f};
    public float[] tmpMatrix = h.a();
    public float[] translationMatrix = h.a();
    public float[] viewMatrix = h.a();
    public WatermarkOptions watermarkOptions = new WatermarkOptions();
    public f watermarkTexture;
    public f writableTexture;
    public float zoom = 1.0f;

    @a
    public static class FaceFeaturesState {
        public float chin_height = 0.0f;
        public float[] eye_size = {0.0f, 0.0f};
        public float face_width = 0.0f;
        public float forehead_height = 0.0f;
        public float mouth_height = 0.0f;
        public float mouth_width = 0.0f;
        public float nose_height = 0.0f;
        public float nose_width = 0.0f;
        public float smile = 0.0f;
    }

    @a
    public static class FaceState {
        public float eyes_brightness = 0.0f;
        public float eyes_clarity = 0.0f;
        public float eyes_contrast = 0.0f;
        public float lips_brightness = 0.0f;
        public float lips_saturation = 0.0f;
        public float skin_highlights = 0.0f;
        public float skin_hue = 0.0f;
        public float skin_saturation = 0.0f;
        public float skin_shadows = 0.0f;
        public float skin_smoothness = 0.0f;
        public float skin_tone = 0.0f;
        public float teeth_brightness = 0.0f;
        public float teeth_whitening = 0.0f;
    }

    public static class LocalState {
        public float balance = -1.0f;
        public float blur = 0.0f;
        public float clarity = 0.0f;
        public float contrast = 0.0f;
        public float dehaze = 0.0f;
        public float exposure = 0.0f;
        public float gamma = 0.0f;
        public float highlights = 0.0f;
        public String mosaic_pattern;
        public float mosaic_size = 0.0f;
        public float saturation = 0.0f;
        public float shadows = 0.0f;
        public float shadows_hue = 0.0f;
        public float shadows_saturation = 0.0f;
        public float temperature = 0.0f;
        public float tint = 0.0f;
        public float vibrance = 0.0f;
    }

    public static class Overlay {
        public int flipX;
        public int flipY;
        public float height;
        public float imageHeight;
        public float imageWidth;
        public float rotation;
        public float tx;
        public float ty;
        public float width;
    }

    public static class Screen {
        public float[] center = {0.5f, 0.5f};
        public float[] offset = {0.0f, 0.0f};
        public int orientation = 0;
        public float[] rotation = {0.0f, 0.0f, 0.0f};
        public float zoom = 1.0f;
    }

    public static class WatermarkOptions {
        public boolean addMetadata = false;
        public String artist;
        public String copyright;
        public String description;
        public boolean enabled = false;
        public int height;
        public float opacity = 1.0f;
        public float[] position = {0.95f, 0.95f};
        public boolean preview = false;
        public float rotation = 0.0f;
        public float scale = 0.2f;
        public int width;
    }

    public Context() {
        init();
    }

    public Context(boolean z) {
        if (!z) {
            init();
            return;
        }
        co.polarr.renderer.c.a(this.renderStates);
        this.mesh = Mesh.plane(new Mesh.Options(1));
    }

    private void init() {
        co.polarr.renderer.c.a(this.renderStates);
        this.mesh = Mesh.plane(new Mesh.Options(64));
        if (DefaultMesh == null) {
            DefaultMesh = Mesh.plane(new Mesh.Options(64));
        }
        if (overlayMesh == null) {
            overlayMesh = Mesh.plane(new Mesh.Options(true, false, false, 32));
        }
        if (LutContext == null) {
            LutContext = new Context(true);
            Context context2 = LutContext;
            context2.isLutRender = true;
            context2.imageTexture = i.c(0, 6408, 32, 32);
        }
        this.distortionVertices = this.mesh.getDistortionPoints();
        this.deltaVertices = this.mesh.getDeltaPoints();
    }

    public static Map<String, Object> makeCompatible(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        co.polarr.renderer.c.a(hashMap);
        HashMap hashMap2 = new HashMap();
        for (String next : map.keySet()) {
            Object a2 = p.a(next, map.get(next));
            if (hashMap.containsKey(next)) {
                hashMap2.put(next, a2);
            }
        }
        List list = (List) hashMap2.get("local_adjustments");
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                Object obj = list.get(i);
                if (obj instanceof HashMap) {
                    Adjustment.fromDecodedHashMap((HashMap) obj).adjustments = new LocalState();
                } else if (obj instanceof Adjustment) {
                    Adjustment adjustment = (Adjustment) obj;
                }
            }
        }
        return hashMap2;
    }

    public static Map<String, Object> prepareAdjustments(Map<String, Object> map) {
        Map<String, Object> makeCompatible = makeCompatible(map);
        float[] fArr = (float[]) makeCompatible.get("crop");
        if (fArr != null && Arrays.equals(fArr, new float[]{0.0f, 0.0f, 1.0f, 1.0f})) {
            makeCompatible.remove("crop");
        }
        makeCompatible.remove("faces");
        makeCompatible.remove("face_features");
        makeCompatible.remove("spots");
        makeCompatible.remove("text");
        if (makeCompatible.get("rotation") != null && ((Float) makeCompatible.get("rotation")).floatValue() == 0.0f) {
            makeCompatible.remove("rotation");
        }
        makeCompatible.remove("rotate90");
        makeCompatible.remove("distortion_horizontal");
        makeCompatible.remove("distortion_vertical");
        makeCompatible.remove("distortion_mesh");
        return makeCompatible;
    }

    public void reset() {
        this.mesh = Mesh.plane(new Mesh.Options(64));
        this.distortionVertices = this.mesh.getDistortionPoints();
        this.deltaVertices = this.mesh.getDeltaPoints();
        overlayMesh = Mesh.plane(new Mesh.Options(true, false, false, 32));
        this.screen = new Screen();
        this.textLayers.clear();
        co.polarr.renderer.c.a(this.renderStates);
    }
}
