package com.oppo.camera.sticker.c;

import android.content.Context;
import com.color.util.ColorNetworkUtil;
import com.oppo.camera.debug.PrefUtils;
import com.oppo.camera.o.d;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: HttpRequestHelper */
public class a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public Context f2394a = null;

    /* renamed from: com.oppo.camera.sticker.c.a$a  reason: collision with other inner class name */
    /* compiled from: HttpRequestHelper */
    public interface C0065a {
        void a();

        void a(int i, String str);
    }

    /* compiled from: HttpRequestHelper */
    public enum b {
        GET,
        POST
    }

    /* compiled from: HttpRequestHelper */
    public interface c {
        void a(int i, String str);

        void a(ResponseBody responseBody);
    }

    public a(Context context) {
        this.f2394a = context;
    }

    private String a(int i) {
        return "/multi_app/all_sticker.pb?audit_status=" + i;
    }

    private String a(Context context) {
        if (d.y()) {
            if (d.h()) {
                com.oppo.camera.d.b("HttpRequestHelper", "getBaseUrl, url is west europe release env exp");
                return "https://stickereu.apps.oppomobile.com";
            } else if (PrefUtils.getIsTestEnv(context)) {
                com.oppo.camera.d.b("HttpRequestHelper", "getBaseUrl, url is test env exp");
                return "https://stickerserverwx.store-test.wanyol.com";
            } else {
                com.oppo.camera.d.b("HttpRequestHelper", "getBaseUrl, url is release env exp");
                return "https://stickerf.apps.oppomobile.com";
            }
        } else if (PrefUtils.getIsTestEnv(context)) {
            com.oppo.camera.d.b("HttpRequestHelper", "getBaseUrl, url is test env");
            return "https://stickerserver.store-test.wanyol.com";
        } else {
            com.oppo.camera.d.b("HttpRequestHelper", "getBaseUrl, url is release env");
            return "https://sticker.apps.oppomobile.com";
        }
    }

    private static OkHttpClient a() {
        return b.a().b();
    }

    public String a(Context context, int i) {
        return a(context) + a(i);
    }

    public Request a(b bVar, String str, Map<String, String> map, RequestBody requestBody) {
        Request.Builder url = new Request.Builder().url(str);
        if (bVar == b.POST) {
            if (map != null && !map.isEmpty()) {
                for (Map.Entry next : map.entrySet()) {
                    url.addHeader((String) next.getKey(), (String) next.getValue());
                }
            }
            if (requestBody != null) {
                url.post(requestBody);
            }
        } else {
            url.get();
        }
        return url.build();
    }

    public RequestBody a(byte[] bArr) {
        return RequestBody.create(MediaType.parse("application/x-protobuf"), bArr);
    }

    public void a(Request request, final c cVar) {
        a().newCall(request).enqueue(new Callback() {
            public void onFailure(Call call, IOException iOException) {
                int errorString = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                String message = iOException.getMessage();
                c cVar = cVar;
                if (cVar != null) {
                    cVar.a(errorString, message);
                }
                com.oppo.camera.d.b("HttpRequestHelper", "asyncRequest, onFailure, errorCode: " + errorString + ", errMsg: " + message);
            }

            public void onResponse(Call call, Response response) throws IOException {
                if (response == null) {
                    try {
                        com.oppo.camera.d.d("HttpRequestHelper", "asyncRequest, onResponse, null response");
                        int errorString = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                        if (cVar != null) {
                            cVar.a(errorString, "null response");
                        }
                        if (response != null) {
                            response.close();
                        }
                    } catch (Exception e) {
                        int errorString2 = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                        String message = e.getMessage();
                        if (cVar != null) {
                            cVar.a(errorString2, message);
                        }
                        com.oppo.camera.d.b("HttpRequestHelper", "asyncRequest, onResponse exception! netCode: " + errorString2 + ", errorMsg: " + message);
                        if (response == null) {
                        }
                    } catch (Throwable th) {
                        if (response != null) {
                            response.close();
                        }
                        throw th;
                    }
                } else {
                    if (!response.isSuccessful()) {
                        int code = response.code();
                        String message2 = response.message();
                        if (cVar != null) {
                            cVar.a(code, message2);
                        }
                        int errorString3 = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                        com.oppo.camera.d.b("HttpRequestHelper", "asyncRequest, onResponse not successful!, resCode: " + code + ", netCode: " + errorString3 + ", resMsg: " + message2);
                    } else if (cVar != null) {
                        cVar.a(response.body());
                    }
                    if (response == null) {
                        return;
                    }
                    response.close();
                }
            }
        });
    }

    public void a(Request request, final String str, final C0065a aVar) {
        a().newCall(request).enqueue(new Callback() {
            public void onFailure(Call call, IOException iOException) {
                int errorString = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                String message = iOException.getMessage();
                C0065a aVar = aVar;
                if (aVar != null) {
                    aVar.a(errorString, message);
                }
                com.oppo.camera.d.b("HttpRequestHelper", "downloadFile, onFailure, errorCode: " + errorString + ", errMsg: " + message);
            }

            /* JADX WARNING: Removed duplicated region for block: B:36:0x00c8 A[SYNTHETIC, Splitter:B:36:0x00c8] */
            /* JADX WARNING: Removed duplicated region for block: B:41:0x00e1 A[SYNTHETIC, Splitter:B:41:0x00e1] */
            /* JADX WARNING: Removed duplicated region for block: B:47:0x00fc A[SYNTHETIC, Splitter:B:47:0x00fc] */
            /* JADX WARNING: Removed duplicated region for block: B:52:0x0115 A[SYNTHETIC, Splitter:B:52:0x0115] */
            /* JADX WARNING: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
            public void onResponse(Call call, Response response) {
                StringBuilder sb;
                FileOutputStream fileOutputStream = null;
                if (response.isSuccessful()) {
                    InputStream byteStream = response.body().byteStream();
                    try {
                        byte[] bArr = new byte[2048];
                        long contentLength = response.body().contentLength();
                        com.oppo.camera.d.b("HttpRequestHelper", "downloadFile, totalLen: " + contentLength + ", destFilePath: " + str);
                        File file = new File(str);
                        if (com.oppo.camera.sticker.d.b.a(file)) {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                            while (true) {
                                try {
                                    int read = byteStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, read);
                                } catch (IOException e) {
                                    e = e;
                                    fileOutputStream = fileOutputStream2;
                                    try {
                                        com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, e: " + e);
                                        if (byteStream != null) {
                                        }
                                        if (fileOutputStream == null) {
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        if (byteStream != null) {
                                        }
                                        if (fileOutputStream != null) {
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = fileOutputStream2;
                                    if (byteStream != null) {
                                        try {
                                            byteStream.close();
                                        } catch (IOException e2) {
                                            com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, ie: " + e2);
                                        }
                                    }
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e3) {
                                            com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, fose: " + e3);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            fileOutputStream2.flush();
                            if (aVar != null) {
                                aVar.a();
                            }
                            fileOutputStream = fileOutputStream2;
                        } else {
                            com.oppo.camera.d.e("HttpRequestHelper", "downloadFile, delete exit file fail! destFilePath: " + str);
                        }
                        if (byteStream != null) {
                            try {
                                byteStream.close();
                            } catch (IOException e4) {
                                com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, ie: " + e4);
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                return;
                            } catch (IOException e5) {
                                e = e5;
                                sb = new StringBuilder();
                            }
                        } else {
                            return;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, e: " + e);
                        if (byteStream != null) {
                            try {
                                byteStream.close();
                            } catch (IOException e7) {
                                com.oppo.camera.d.d("HttpRequestHelper", "downloadFile, onResponse, exception, ie: " + e7);
                            }
                        }
                        if (fileOutputStream == null) {
                            try {
                                fileOutputStream.close();
                                return;
                            } catch (IOException e8) {
                                e = e8;
                                sb = new StringBuilder();
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    int code = response.code();
                    String message = response.message();
                    C0065a aVar = aVar;
                    if (aVar != null) {
                        aVar.a(code, message);
                    }
                    int errorString = ColorNetworkUtil.getErrorString(a.this.f2394a, (String) null);
                    com.oppo.camera.d.b("HttpRequestHelper", "downloadFile, onResponse not successful!, resCode: " + code + ", netCode: " + errorString + ", resMsg: " + message);
                    return;
                }
                sb.append("downloadFile, onResponse, exception, fose: ");
                sb.append(e);
                com.oppo.camera.d.d("HttpRequestHelper", sb.toString());
            }
        });
    }
}
