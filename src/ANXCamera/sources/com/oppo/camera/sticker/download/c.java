package com.oppo.camera.sticker.download;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.oppo.camera.d;
import com.oppo.camera.sticker.a.b;
import com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo;
import com.oppo.camera.sticker.data.BuildInSticker;
import com.oppo.camera.sticker.data.MultiStickerExtendedInfo;
import com.oppo.camera.sticker.data.StickerItem;
import com.oppo.camera.sticker.data.StickerItemWrapper;
import com.oppo.camera.sticker.h;
import com.oppo.camera.sticker.provider.FileProvider;
import com.oppo.providers.downloads.OppoDownloads;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: StickerInstaller */
public class c {
    public static int a(Context context, StickerItemWrapper stickerItemWrapper) {
        if (context == null || stickerItemWrapper == null) {
            d.d("StickerInstaller", "deleteSticker, parameter is null! context: " + context);
            return -2;
        }
        d.b("StickerInstaller", "deleteSticker, stickerItem: " + stickerItemWrapper);
        if (stickerItemWrapper.isBuildIn()) {
            return 0;
        }
        int materialType = stickerItemWrapper.getMaterialType();
        if (materialType == 0) {
            return b(context, stickerItemWrapper);
        }
        if (materialType == 1) {
            return c(context, stickerItemWrapper);
        }
        if (materialType != 2) {
            return -1;
        }
        return d(context, stickerItemWrapper);
    }

    private static AnimojiStickerExtendedInfo a(String str) {
        if (TextUtils.isEmpty(str)) {
            d.d("StickerInstaller", "parserAniMojiExtendInfo empty content");
            return null;
        }
        try {
            return (AnimojiStickerExtendedInfo) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, AnimojiStickerExtendedInfo.class);
        } catch (Exception e) {
            d.d("StickerInstaller", "parserAniMojiExtendInfo exception: " + e);
            return null;
        }
    }

    private static List<ZipEntry> a(ZipFile zipFile) {
        ArrayList arrayList = new ArrayList();
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (!zipEntry.isDirectory()) {
                arrayList.add(zipEntry);
            }
        }
        Collections.sort(arrayList, new Comparator<ZipEntry>() {
            private int a(String str) {
                return str.endsWith("StickerMultiCfg.json") ? 0 : 1;
            }

            /* renamed from: a */
            public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
                int a2 = a(zipEntry.getName());
                int a3 = a(zipEntry2.getName());
                if (a2 > a3) {
                    return 1;
                }
                return a2 < a3 ? -1 : 0;
            }
        });
        return arrayList;
    }

    public static void a(Context context, List<StickerItem> list, boolean z) {
        if (list == null || list.isEmpty()) {
            d.d("StickerInstaller", "deleteSticker, list is empty!");
            return;
        }
        ContentValues contentValues = new ContentValues();
        for (StickerItem next : list) {
            if (next == null) {
                d.d("StickerInstaller", "deleteSticker, item is null!");
            } else {
                contentValues.clear();
                StickerItemWrapper a2 = b.a(context, OppoDownloads.COLUMN_UUID, next.getStickerUUID());
                if (a2 == null) {
                    d.d("StickerInstaller", "deleteSticker, can not find this sticker! name: " + next.getStickerName() + ", uuid: " + next.getStickerUUID());
                } else {
                    d.b("StickerInstaller", "deleteSticker, start delete one sticker, item: " + a2);
                    if (a2.isBuildIn()) {
                        contentValues.put("download_time", 0);
                        a2.setDownloadTime(0);
                    } else {
                        int a3 = a(context, a2);
                        if (a3 == 0) {
                            contentValues.put("download_time", 0);
                            contentValues.put("need_update", 0);
                            contentValues.put("file_path", "");
                            contentValues.put("file_content_uri", "");
                            contentValues.put("download_state", 0);
                            a2.setDownloadTime(0);
                            a2.setNeedUpdate(false);
                            a2.setDownloadState(0);
                        } else {
                            d.d("StickerInstaller", "deleteSticker, delete item fail! result: " + a3 + ", name: " + a2.getStickerName() + ", uuid: " + next.getStickerUUID());
                        }
                    }
                    int a4 = b.a(context, OppoDownloads.COLUMN_UUID, next.getStickerUUID(), contentValues);
                    d.b("StickerInstaller", "deleteSticker, updateStickerItem count: " + a4);
                    if (z) {
                        h.a(context).d(a2);
                    }
                }
            }
        }
    }

    public static boolean a(Context context, BuildInSticker buildInSticker) {
        if (context == null || buildInSticker == null) {
            d.d("StickerInstaller", "installBuildInSticker, parameter is null! context: " + context);
            return false;
        }
        d.b("StickerInstaller", "installBuildInSticker, buildInSticker: " + buildInSticker);
        try {
            String a2 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.l, buildInSticker.getStickerUUID());
            if (com.oppo.camera.sticker.d.b.a(context.getAssets().open(buildInSticker.getAssetThumbnailPath()), a2, true, true)) {
                Uri a3 = FileProvider.a(context, "com.oppo.camera.providers.sticker.file.provider", new File(a2));
                StickerItemWrapper obtainStickerItem = buildInSticker.obtainStickerItem();
                obtainStickerItem.setIsBuildIn(true);
                obtainStickerItem.setThumbnailPath(a2);
                obtainStickerItem.setThumbnailFileUri(a3.toString());
                int materialType = obtainStickerItem.getMaterialType();
                if (materialType == 0) {
                    return b(context, obtainStickerItem, buildInSticker.getAssetFilePath());
                }
                if (materialType == 1) {
                    return c(context, obtainStickerItem, buildInSticker.getAssetFilePath());
                }
                if (materialType == 2) {
                    return a(context, obtainStickerItem, buildInSticker.getAssetFilePath(), buildInSticker.getBackgroundColor());
                }
                d.d("StickerInstaller", "installBuildInSticker, can not supported material type!");
            } else {
                d.d("StickerInstaller", "installBuildInSticker, saveThumb fail!");
            }
        } catch (Exception e) {
            d.d("StickerInstaller", "installBuildInSticker, Exception: " + e);
        }
        return false;
    }

    public static boolean a(Context context, StickerItemWrapper stickerItemWrapper, String str) {
        if (context == null || stickerItemWrapper == null) {
            d.d("StickerInstaller", "installSticker, parameter is null! context: " + context);
            return false;
        }
        d.b("StickerInstaller", "installSticker, srcFilePath: " + str + ", stickerItem: " + stickerItemWrapper);
        int materialType = stickerItemWrapper.getMaterialType();
        if (materialType == 0) {
            return b(context, stickerItemWrapper, str);
        }
        if (materialType == 1) {
            return c(context, stickerItemWrapper, str);
        }
        if (materialType == 2) {
            return a(context, stickerItemWrapper, str, (String) null);
        }
        d.d("StickerInstaller", "installBuildInSticker, can not supported material type!");
        return false;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v6, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v1, resolved type: com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v7, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v9, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v3, resolved type: com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v12, resolved type: java.util.zip.ZipFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v20, resolved type: java.util.zip.ZipFile} */
    /* JADX WARNING: type inference failed for: r1v15, types: [com.oppo.camera.sticker.data.AnimojiStickerExtendedInfo] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x01e7 A[SYNTHETIC, Splitter:B:83:0x01e7] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0204  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x020a A[SYNTHETIC, Splitter:B:92:0x020a] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0227  */
    private static boolean a(Context context, StickerItemWrapper stickerItemWrapper, String str, String str2) {
        AnimojiStickerExtendedInfo animojiStickerExtendedInfo;
        ZipFile zipFile;
        if (TextUtils.isEmpty(str)) {
            d.d("StickerInstaller", "installAnimojiSticker, file path is empty!");
            return false;
        } else if (context == null || stickerItemWrapper == null) {
            d.d("StickerInstaller", "installAnimojiSticker, null parameter! context: " + context);
            return false;
        } else if (stickerItemWrapper.getMaterialType() != 2) {
            d.d("StickerInstaller", "installAnimojiSticker, not a animoji type! item: " + stickerItemWrapper);
            return false;
        } else {
            ZipFile zipFile2 = null;
            try {
                ArrayList arrayList = new ArrayList();
                if (!stickerItemWrapper.isBuildIn() || !str.startsWith("sticker/material")) {
                    ZipFile zipFile3 = new ZipFile(str);
                    try {
                        Enumeration<? extends ZipEntry> entries = zipFile3.entries();
                        while (entries.hasMoreElements()) {
                            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                            String lowerCase = zipEntry.getName().toLowerCase();
                            if (lowerCase.contains("../")) {
                                zipFile = zipFile2;
                            } else {
                                d.b("StickerInstaller", "installAnimojiSticker entryName: " + lowerCase);
                                if (lowerCase.endsWith("ConfigInfo.json".toLowerCase())) {
                                    zipFile = a(com.oppo.camera.sticker.d.b.a(zipFile3, zipEntry));
                                } else if (lowerCase.endsWith(".zip")) {
                                    String a2 = com.oppo.camera.sticker.d.b.a(lowerCase);
                                    if (!TextUtils.isEmpty(a2)) {
                                        a2 = UUID.randomUUID().toString();
                                        d.d("StickerInstaller", "installAnimojiSticker, parse name fail, use uuid instead! entryName: " + lowerCase + ", fileName: " + a2);
                                    }
                                    String a3 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.j, a2);
                                    if (com.oppo.camera.sticker.d.b.a(zipFile3.getInputStream(zipEntry), a3, true, true)) {
                                        arrayList.add(a3);
                                        zipFile = zipFile2;
                                    } else {
                                        d.d("StickerInstaller", "installAnimojiSticker, save zip entry fail! entry: " + zipEntry);
                                        zipFile = zipFile2;
                                    }
                                } else {
                                    zipFile = zipFile2;
                                }
                            }
                            zipFile2 = zipFile;
                        }
                        animojiStickerExtendedInfo = zipFile2;
                        zipFile2 = zipFile3;
                    } catch (Exception e) {
                        e = e;
                        zipFile2 = zipFile3;
                        try {
                            e.printStackTrace();
                            if (zipFile2 != null) {
                            }
                            if (!stickerItemWrapper.isBuildIn()) {
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            if (zipFile2 != null) {
                            }
                            if (!stickerItemWrapper.isBuildIn()) {
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile2 = zipFile3;
                        if (zipFile2 != null) {
                            try {
                                zipFile2.close();
                            } catch (IOException e2) {
                                d.d("StickerInstaller", "installAnimojiSticker close zip file exception: " + e2);
                            }
                        }
                        if (!stickerItemWrapper.isBuildIn()) {
                            com.oppo.camera.sticker.d.b.b(str);
                        }
                        throw th;
                    }
                } else {
                    animojiStickerExtendedInfo = new AnimojiStickerExtendedInfo();
                    animojiStickerExtendedInfo.setBackgroundColor(str2);
                    String a4 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.j, stickerItemWrapper.getStickerUUID());
                    if (com.oppo.camera.sticker.d.b.a(context.getAssets().open(str), a4, true, true)) {
                        arrayList.add(a4);
                    } else {
                        d.d("StickerInstaller", "installAnimojiSticker, save inputStream Fail! stickerFileSrcPath: " + str);
                    }
                }
                if (arrayList.isEmpty()) {
                    d.d("StickerInstaller", "installAnimojiSticker can not find any zip file!");
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException e3) {
                            d.d("StickerInstaller", "installAnimojiSticker close zip file exception: " + e3);
                        }
                    }
                    if (!stickerItemWrapper.isBuildIn()) {
                        com.oppo.camera.sticker.d.b.b(str);
                    }
                    return false;
                }
                stickerItemWrapper.setFileContentUri(FileProvider.a(context, "com.oppo.camera.providers.sticker.file.provider", new File((String) arrayList.get(0))).toString());
                stickerItemWrapper.setFilePath((String) arrayList.get(0));
                stickerItemWrapper.setDownloadState(8);
                stickerItemWrapper.setNeedUpdate(false);
                if (!stickerItemWrapper.isBuildIn() && stickerItemWrapper.getDownloadTime() == 0) {
                    stickerItemWrapper.setDownloadTime(System.currentTimeMillis());
                }
                if (!b.a(context, stickerItemWrapper.getStickerUUID(), animojiStickerExtendedInfo)) {
                    d.d("StickerInstaller", "installAnimojiSticker update extend info fail!");
                }
                boolean a5 = b.a(context, stickerItemWrapper);
                if (zipFile2 != null) {
                    try {
                        zipFile2.close();
                    } catch (IOException e4) {
                        d.d("StickerInstaller", "installAnimojiSticker close zip file exception: " + e4);
                    }
                }
                if (!stickerItemWrapper.isBuildIn()) {
                    com.oppo.camera.sticker.d.b.b(str);
                }
                return a5;
            } catch (Exception e5) {
                e = e5;
                e.printStackTrace();
                if (zipFile2 != null) {
                    try {
                        zipFile2.close();
                    } catch (IOException e6) {
                        d.d("StickerInstaller", "installAnimojiSticker close zip file exception: " + e6);
                    }
                }
                if (!stickerItemWrapper.isBuildIn()) {
                    com.oppo.camera.sticker.d.b.b(str);
                }
                return false;
            }
        }
    }

    public static int b(Context context, StickerItemWrapper stickerItemWrapper) {
        if (context == null || stickerItemWrapper == null) {
            return -2;
        }
        if (stickerItemWrapper.getMaterialType() != 0) {
            return -3;
        }
        try {
            File a2 = TextUtils.isEmpty(stickerItemWrapper.getFilePath()) ? FileProvider.a(context, Uri.parse(stickerItemWrapper.getFileContentUri())) : new File(stickerItemWrapper.getFilePath());
            if (a2 == null) {
                return -4;
            }
            return com.oppo.camera.sticker.d.b.a(a2) ? 0 : -5;
        } catch (Exception e) {
            d.d("StickerInstaller", "deleteNormalSticker exception: " + e);
            return -1;
        }
    }

    private static List<MultiStickerExtendedInfo> b(String str) {
        if (TextUtils.isEmpty(str)) {
            d.d("StickerInstaller", "parserMultiStickerExtendInfo empty content");
            return null;
        }
        try {
            return (List) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, new TypeToken<List<MultiStickerExtendedInfo>>() {
            }.getType());
        } catch (Exception e) {
            d.d("StickerInstaller", "parserMultiStickerExtendInfo exception: " + e);
            return null;
        }
    }

    private static boolean b(Context context, StickerItemWrapper stickerItemWrapper, String str) {
        if (context == null || stickerItemWrapper == null) {
            d.d("StickerInstaller", "installNormalSticker, null parameter! context: " + context);
            return false;
        }
        try {
            if (stickerItemWrapper.getMaterialType() != 0) {
                d.d("StickerInstaller", "installNormalSticker, not a normal type! item: " + stickerItemWrapper);
                return false;
            }
            String a2 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.h, stickerItemWrapper.getStickerUUID());
            boolean z = true;
            if (!stickerItemWrapper.isRecycleBin()) {
                if (TextUtils.isEmpty(str)) {
                    d.d("StickerInstaller", "installNormalSticker, file path is empty!");
                    return false;
                } else if (!stickerItemWrapper.isBuildIn() || !str.startsWith("sticker/material")) {
                    z = com.oppo.camera.sticker.d.b.a(str, a2);
                    if (!z) {
                        z = com.oppo.camera.sticker.d.c.a(a2, stickerItemWrapper.getFileMd5());
                        if (!z) {
                            d.d("StickerInstaller", "installNormalSticker, md5CheckSum error! stickerItem: " + stickerItemWrapper);
                        }
                    }
                } else {
                    z = com.oppo.camera.sticker.d.b.a(context.getAssets().open(str), a2, true, true);
                }
            }
            if (z) {
                stickerItemWrapper.setFileContentUri(FileProvider.a(context, "com.oppo.camera.providers.sticker.file.provider", new File(a2)).toString());
                stickerItemWrapper.setFilePath(a2);
                stickerItemWrapper.setDownloadState(8);
                stickerItemWrapper.setNeedUpdate(false);
                if (!stickerItemWrapper.isBuildIn() && stickerItemWrapper.getDownloadTime() == 0) {
                    stickerItemWrapper.setDownloadTime(System.currentTimeMillis());
                }
                return b.a(context, stickerItemWrapper);
            }
            d.d("StickerInstaller", "installNormalSticker, save saveFile!");
            return false;
        } catch (Exception e) {
            d.d("StickerInstaller", "installNormalSticker exception e: " + e);
        }
    }

    public static int c(Context context, StickerItemWrapper stickerItemWrapper) {
        if (context == null || stickerItemWrapper == null) {
            return -2;
        }
        boolean z = true;
        if (stickerItemWrapper.getMaterialType() != 1) {
            return -3;
        }
        List<MultiStickerExtendedInfo> c = b.c(context, stickerItemWrapper);
        if (c == null || c.isEmpty()) {
            return -6;
        }
        for (MultiStickerExtendedInfo next : c) {
            z = z & com.oppo.camera.sticker.d.b.a(context, next.getFileContentUri16x9()) & com.oppo.camera.sticker.d.b.a(context, next.getFileContentUri4x3()) & com.oppo.camera.sticker.d.b.a(context, next.getFileContentUri1x1());
        }
        if (z) {
            return b.d(context, stickerItemWrapper) ? 0 : -7;
        }
        return -5;
    }

    /* JADX WARNING: type inference failed for: r5v0 */
    /* JADX WARNING: type inference failed for: r5v1 */
    /* JADX WARNING: type inference failed for: r5v2, types: [java.util.zip.ZipFile] */
    /* JADX WARNING: type inference failed for: r5v3 */
    /* JADX WARNING: type inference failed for: r5v4, types: [java.util.List] */
    /* JADX WARNING: type inference failed for: r5v8 */
    /* JADX WARNING: type inference failed for: r5v13 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0307 A[SYNTHETIC, Splitter:B:129:0x0307] */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x0326 A[SYNTHETIC, Splitter:B:138:0x0326] */
    private static boolean c(Context context, StickerItemWrapper stickerItemWrapper, String str) {
        ZipFile zipFile;
        List<MultiStickerExtendedInfo> list;
        if (TextUtils.isEmpty(str)) {
            d.d("StickerInstaller", "installMultiSticker, file path is empty!");
            return false;
        } else if (context == null || stickerItemWrapper == null) {
            d.d("StickerInstaller", "installMultiSticker, null parameter! context: " + context);
            return false;
        } else if (stickerItemWrapper.getMaterialType() != 1) {
            d.d("StickerInstaller", "installMultiSticker, not a multi type! item: " + stickerItemWrapper);
            return false;
        } else {
            ArrayList arrayList = new ArrayList();
            ? r5 = 0;
            try {
                if (stickerItemWrapper.isBuildIn() && str.startsWith("sticker/material")) {
                    String a2 = com.oppo.camera.sticker.d.b.a(str);
                    if (TextUtils.isEmpty(a2)) {
                        d.d("StickerInstaller", "installMultiSticker, parse file name fail! path: " + str);
                        a2 = UUID.randomUUID().toString();
                    }
                    String a3 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.k, a2);
                    try {
                        if (!com.oppo.camera.sticker.d.b.a(context.getAssets().open(str), a3, true, true)) {
                            d.d("StickerInstaller", "installMultiSticker, save inputStream fail! src: " + str + ", dest: " + a3);
                            com.oppo.camera.sticker.d.b.b(a3);
                            return false;
                        }
                        str = a3;
                    } catch (Exception e) {
                        e = e;
                        str = a3;
                        try {
                            d.d("StickerInstaller", "installMultiSticker exception e: " + e);
                            if (r5 != 0) {
                            }
                            com.oppo.camera.sticker.d.b.b(str);
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            r5 = r5;
                            zipFile = r5;
                            if (zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException e2) {
                                    d.d("StickerInstaller", "installMultiSticker close zip file exception: " + e2);
                                }
                            }
                            com.oppo.camera.sticker.d.b.b(str);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str = a3;
                        zipFile = r5;
                        if (zipFile != null) {
                        }
                        com.oppo.camera.sticker.d.b.b(str);
                        throw th;
                    }
                }
                try {
                    zipFile = new ZipFile(str);
                } catch (Exception e3) {
                    e = e3;
                    d.d("StickerInstaller", "installMultiSticker exception e: " + e);
                    if (r5 != 0) {
                    }
                    com.oppo.camera.sticker.d.b.b(str);
                    return false;
                }
                try {
                    for (ZipEntry next : a(zipFile)) {
                        if (next.isDirectory()) {
                            list = r5;
                        } else {
                            String name = next.getName();
                            if (name.contains("../")) {
                                list = r5;
                            } else {
                                d.b("StickerInstaller", "installMultiSticker entryName: " + name);
                                if (name.endsWith("StickerMultiCfg.json")) {
                                    list = b(com.oppo.camera.sticker.d.b.a(zipFile, next));
                                } else {
                                    if (r5 != 0) {
                                        if (!r5.isEmpty()) {
                                            if (!name.endsWith(".zip")) {
                                                d.d("StickerInstaller", "installMultiSticker unsupported file, name: " + name);
                                                list = r5;
                                            } else {
                                                String a4 = com.oppo.camera.sticker.d.b.a(context, com.oppo.camera.sticker.d.b.i, File.separator + stickerItemWrapper.getStickerUUID() + File.separator + name);
                                                if (com.oppo.camera.sticker.d.b.a(zipFile.getInputStream(next), a4, true, true)) {
                                                    arrayList.add(a4);
                                                    list = r5;
                                                } else {
                                                    d.d("StickerInstaller", "installMultiSticker save file fail!, name: " + name);
                                                    try {
                                                        zipFile.close();
                                                    } catch (IOException e4) {
                                                        d.d("StickerInstaller", "installMultiSticker close zip file exception: " + e4);
                                                    }
                                                    com.oppo.camera.sticker.d.b.b(str);
                                                    return false;
                                                }
                                            }
                                        }
                                    }
                                    d.d("StickerInstaller", "installMultiSticker, parse config file fail!");
                                    try {
                                        zipFile.close();
                                    } catch (IOException e5) {
                                        d.d("StickerInstaller", "installMultiSticker close zip file exception: " + e5);
                                    }
                                    com.oppo.camera.sticker.d.b.b(str);
                                    return false;
                                }
                            }
                        }
                        r5 = list;
                    }
                    if (r5 != 0) {
                        for (MultiStickerExtendedInfo multiStickerExtendedInfo : r5) {
                            d.b("StickerInstaller", "installMultiSticker, multiStickerInfo: " + multiStickerExtendedInfo);
                            Iterator it = arrayList.iterator();
                            boolean z = false;
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                String str2 = (String) it.next();
                                d.b("StickerInstaller", "installMultiSticker, filePath: " + str2);
                                if (multiStickerExtendedInfo.getIsFitToSize()) {
                                    if (str2.contains("/16_9/") && str2.contains(multiStickerExtendedInfo.getStickerName())) {
                                        multiStickerExtendedInfo.setFileContentUri16x9(FileProvider.a(context, new File(str2)).toString());
                                        z |= true;
                                        continue;
                                    } else if (str2.contains("/4_3/") && str2.contains(multiStickerExtendedInfo.getStickerName())) {
                                        multiStickerExtendedInfo.setFileContentUri4x3(FileProvider.a(context, new File(str2)).toString());
                                        z |= true;
                                        continue;
                                    } else if (str2.contains("/1_1/") && str2.contains(multiStickerExtendedInfo.getStickerName())) {
                                        multiStickerExtendedInfo.setFileContentUri1x1(FileProvider.a(context, new File(str2)).toString());
                                        z |= true;
                                        continue;
                                    }
                                } else if (str2.contains("/Default/") && str2.contains(multiStickerExtendedInfo.getStickerName())) {
                                    Uri a5 = FileProvider.a(context, new File(str2));
                                    multiStickerExtendedInfo.setFileContentUri16x9(a5.toString());
                                    multiStickerExtendedInfo.setFileContentUri4x3(a5.toString());
                                    multiStickerExtendedInfo.setFileContentUri1x1(a5.toString());
                                    z = true;
                                    continue;
                                }
                                if (z) {
                                    break;
                                }
                            }
                        }
                    }
                    if (b.a(context, stickerItemWrapper.getStickerUUID(), (List<MultiStickerExtendedInfo>) r5)) {
                        stickerItemWrapper.setDownloadState(8);
                        stickerItemWrapper.setNeedUpdate(false);
                        if (!stickerItemWrapper.isBuildIn() && stickerItemWrapper.getDownloadTime() == 0) {
                            stickerItemWrapper.setDownloadTime(System.currentTimeMillis());
                        }
                    }
                    boolean a6 = b.a(context, stickerItemWrapper);
                    try {
                        zipFile.close();
                    } catch (IOException e6) {
                        d.d("StickerInstaller", "installMultiSticker close zip file exception: " + e6);
                    }
                    com.oppo.camera.sticker.d.b.b(str);
                    return a6;
                } catch (Exception e7) {
                    e = e7;
                    r5 = zipFile;
                    d.d("StickerInstaller", "installMultiSticker exception e: " + e);
                    if (r5 != 0) {
                    }
                    com.oppo.camera.sticker.d.b.b(str);
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    if (zipFile != null) {
                    }
                    com.oppo.camera.sticker.d.b.b(str);
                    throw th;
                }
            } catch (Exception e8) {
                e = e8;
                str = null;
                d.d("StickerInstaller", "installMultiSticker exception e: " + e);
                if (r5 != 0) {
                    try {
                        r5.close();
                    } catch (IOException e9) {
                        d.d("StickerInstaller", "installMultiSticker close zip file exception: " + e9);
                    }
                }
                com.oppo.camera.sticker.d.b.b(str);
                return false;
            } catch (Throwable th4) {
                th = th4;
                str = null;
                zipFile = null;
                if (zipFile != null) {
                }
                com.oppo.camera.sticker.d.b.b(str);
                throw th;
            }
        }
    }

    public static int d(Context context, StickerItemWrapper stickerItemWrapper) {
        if (context == null || stickerItemWrapper == null) {
            return -2;
        }
        if (stickerItemWrapper.getMaterialType() != 2) {
            return -3;
        }
        try {
            File a2 = TextUtils.isEmpty(stickerItemWrapper.getFilePath()) ? FileProvider.a(context, Uri.parse(stickerItemWrapper.getFileContentUri())) : new File(stickerItemWrapper.getFilePath());
            if (a2 == null) {
                return -4;
            }
            if (com.oppo.camera.sticker.d.b.a(a2)) {
                return b.b(context, stickerItemWrapper) ? 0 : -7;
            }
            return -5;
        } catch (Exception e) {
            d.d("StickerInstaller", "deleteAnimojiSticker exception: " + e);
            return -1;
        }
    }
}
