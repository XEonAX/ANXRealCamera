package co.polarr.renderer;

import co.polarr.renderer.entities.FilterItem;
import co.polarr.renderer.entities.FilterPackage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class b {

    /* renamed from: a  reason: collision with root package name */
    public static List<FilterPackage> f1111a = new ArrayList();

    static {
        FilterPackage filterPackage = new FilterPackage();
        filterPackage.pack_id = "Johnny_Filter_Common";
        filterPackage.pack_name = "Common";
        FilterItem filterItem = new FilterItem();
        filterItem.name = "人像风格2019新滤镜一";
        filterItem.id = FilterPackageUtil.PORTRAIT4_1;
        HashMap hashMap = new HashMap();
        hashMap.put("vignette_amount", Float.valueOf(-0.45f));
        Float valueOf = Float.valueOf(1.0f);
        hashMap.put("vignette_feather", valueOf);
        hashMap.put("vignette_highlights", Float.valueOf(0.5f));
        Float valueOf2 = Float.valueOf(0.0f);
        hashMap.put("vignette_roundness", valueOf2);
        hashMap.put("vignette_exposure", valueOf2);
        hashMap.put("vignette_size", valueOf);
        hashMap.put("grain_size", valueOf2);
        hashMap.put("grain_amount", Float.valueOf(0.35f));
        hashMap.put("grain_highlights", Float.valueOf(0.78f));
        hashMap.put("grain_roughness", valueOf2);
        filterItem.state = hashMap;
        FilterItem filterItem2 = new FilterItem();
        filterItem2.name = "人像风格2019新滤镜三";
        filterItem2.id = FilterPackageUtil.PORTRAIT4_3;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("overlay_amount", valueOf);
        filterItem2.state = hashMap2;
        filterPackage.filters = new ArrayList();
        filterPackage.filters.add(filterItem);
        filterPackage.filters.add(filterItem2);
        f1111a.add(filterPackage);
    }
}
