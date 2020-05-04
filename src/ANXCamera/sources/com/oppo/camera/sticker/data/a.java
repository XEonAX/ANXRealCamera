package com.oppo.camera.sticker.data;

import android.content.Context;
import android.net.Uri;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.oppo.camera.d;
import com.oppo.camera.sticker.d.b;
import com.oppo.camera.sticker.download.c;
import com.oppo.camera.sticker.h;
import com.oppo.camera.sticker.provider.FileProvider;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/* compiled from: BuildInStickerTools */
public class a {
    public static void a(Context context) {
        d.b("BuildInStickerTools", "checkBuildInData");
        b(context);
        c(context);
        h.a(context).d();
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0157 A[SYNTHETIC, Splitter:B:42:0x0157] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0161 A[SYNTHETIC, Splitter:B:47:0x0161] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x016e A[SYNTHETIC, Splitter:B:54:0x016e] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0178 A[SYNTHETIC, Splitter:B:59:0x0178] */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    private static void b(Context context) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader2 = null;
        try {
            inputStreamReader = new InputStreamReader(context.getAssets().open("sticker" + File.separator + "category.cfg"), "UTF-8");
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuffer.append(readLine);
                        stringBuffer.append("\n");
                    }
                    List<BuildInStickerCategory> list = (List) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(stringBuffer.toString(), new TypeToken<List<BuildInStickerCategory>>() {
                    }.getType());
                    if (list != null && !list.isEmpty()) {
                        for (BuildInStickerCategory buildInStickerCategory : list) {
                            if (!com.oppo.camera.sticker.a.a.a(context, buildInStickerCategory.getReadableId())) {
                                String a2 = b.a(buildInStickerCategory.getIconPath());
                                String a3 = b.a(buildInStickerCategory.getIconHighlightPath());
                                String a4 = b.a(context, b.g, a2);
                                String a5 = b.a(context, b.g, a3);
                                boolean a6 = b.a(context.getAssets().open(buildInStickerCategory.getIconPath()), a4, false, true);
                                boolean a7 = b.a(context.getAssets().open(buildInStickerCategory.getIconHighlightPath()), a5, false, true);
                                if (!a6 || !a7) {
                                    d.d("BuildInStickerTools", "checkBuildInCategory, save category fail! saveIcon: " + a6 + ", saveIconHighlight: " + a7);
                                } else {
                                    Uri a8 = FileProvider.a(context, "com.oppo.camera.providers.sticker.file.provider", new File(a4));
                                    Uri a9 = FileProvider.a(context, "com.oppo.camera.providers.sticker.file.provider", new File(a5));
                                    StickerCategoryItemWrapper obtainStickerCategoryItem = buildInStickerCategory.obtainStickerCategoryItem();
                                    obtainStickerCategoryItem.setIconPath(a4);
                                    obtainStickerCategoryItem.setIconFileUri(a8.toString());
                                    obtainStickerCategoryItem.setIconHighlightPath(a5);
                                    obtainStickerCategoryItem.setIconHighlightFileUri(a9.toString());
                                    boolean a10 = com.oppo.camera.sticker.a.a.a(context, obtainStickerCategoryItem);
                                    d.b("BuildInStickerTools", "checkBuildInCategory result: " + a10 + ", newItem: " + obtainStickerCategoryItem);
                                }
                            }
                        }
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        d.c("BuildInStickerTools", "checkBuildInCategory.close bufferedReader, e: ", e);
                    }
                    try {
                        inputStreamReader.close();
                    } catch (Exception e2) {
                        d.c("BuildInStickerTools", "checkBuildInCategory.close reader, e: ", e2);
                    }
                } catch (Exception e3) {
                    e = e3;
                    bufferedReader2 = bufferedReader;
                    try {
                        d.c("BuildInStickerTools", "checkBuildInCategory, e:", e);
                        if (bufferedReader2 != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                d.c("BuildInStickerTools", "checkBuildInCategory, e:", e);
                if (bufferedReader2 != null) {
                }
                if (inputStreamReader != null) {
                }
            }
        } catch (Exception e5) {
            e = e5;
            inputStreamReader = null;
            d.c("BuildInStickerTools", "checkBuildInCategory, e:", e);
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e6) {
                    d.c("BuildInStickerTools", "checkBuildInCategory.close bufferedReader, e: ", e6);
                }
            }
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
            bufferedReader = null;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e7) {
                    d.c("BuildInStickerTools", "checkBuildInCategory.close bufferedReader, e: ", e7);
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (Exception e8) {
                    d.c("BuildInStickerTools", "checkBuildInCategory.close reader, e: ", e8);
                }
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00c0, code lost:
        r9 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00c2, code lost:
        r9 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00c3, code lost:
        r3 = r5;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c0 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:5:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00d4 A[SYNTHETIC, Splitter:B:43:0x00d4] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00de A[SYNTHETIC, Splitter:B:48:0x00de] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00eb A[SYNTHETIC, Splitter:B:55:0x00eb] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00f5 A[SYNTHETIC, Splitter:B:60:0x00f5] */
    /* JADX WARNING: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    private static void c(Context context) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader2 = null;
        try {
            inputStreamReader = new InputStreamReader(context.getAssets().open("sticker" + File.separator + "sticker.cfg"), "UTF-8");
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuffer.append(readLine);
                        stringBuffer.append("\n");
                    }
                    List<BuildInSticker> list = (List) new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().fromJson(stringBuffer.toString(), new TypeToken<List<BuildInSticker>>() {
                    }.getType());
                    if (list != null && !list.isEmpty()) {
                        for (BuildInSticker buildInSticker : list) {
                            if (com.oppo.camera.sticker.a.b.a(context, buildInSticker)) {
                                boolean a2 = c.a(context, buildInSticker);
                                d.b("BuildInStickerTools", "checkBuildInSticker, result: " + a2);
                            }
                        }
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        d.c("BuildInStickerTools", "checkBuildInSticker.close bufferedReader, e: ", e);
                    }
                    try {
                        inputStreamReader.close();
                    } catch (Exception e2) {
                        d.c("BuildInStickerTools", "checkBuildInSticker.close reader, e: ", e2);
                    }
                } catch (Exception e3) {
                    d.d("BuildInStickerTools", "checkBuildInSticker, Exception e: " + e3);
                } catch (Throwable th) {
                }
            } catch (Exception e4) {
                e = e4;
                try {
                    d.c("BuildInStickerTools", "checkBuildInSticker, e:", e);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader == null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            d.c("BuildInStickerTools", "checkBuildInSticker.close bufferedReader, e: ", e5);
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (Exception e6) {
                            d.c("BuildInStickerTools", "checkBuildInSticker.close reader, e: ", e6);
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception e7) {
            e = e7;
            inputStreamReader = null;
            d.c("BuildInStickerTools", "checkBuildInSticker, e:", e);
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e8) {
                    d.c("BuildInStickerTools", "checkBuildInSticker.close bufferedReader, e: ", e8);
                }
            }
            if (inputStreamReader == null) {
                inputStreamReader.close();
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
            bufferedReader = null;
            if (bufferedReader != null) {
            }
            if (inputStreamReader != null) {
            }
            throw th;
        }
    }
}
