package com.oppo.camera.d;

import android.app.Activity;
import com.oppo.camera.g.a;
import com.oppo.camera.k.b;
import com.oppo.camera.m.f;
import com.oppo.camera.panorama.e;
import com.oppo.camera.statistics.CameraStatisticsUtil;
import com.oppo.camera.ui.c;
import com.oppo.camera.ui.preview.a.i;

/* compiled from: ModeFactory */
public class h {
    /* JADX WARNING: Can't fix incorrect switch cases order */
    public static a a(String str, Activity activity, b bVar, c cVar, i iVar) {
        char c;
        switch (str.hashCode()) {
            case -1933413040:
                if (str.equals("commonVideo")) {
                    c = 1;
                    break;
                }
            case -1890252483:
                if (str.equals("sticker")) {
                    c = 5;
                    break;
                }
            case -1354814997:
                if (str.equals("common")) {
                    c = 0;
                    break;
                }
            case -35510913:
                if (str.equals("fastVideo")) {
                    c = 7;
                    break;
                }
            case 103652300:
                if (str.equals("macro")) {
                    c = 10;
                    break;
                }
            case 104817688:
                if (str.equals("night")) {
                    c = 6;
                    break;
                }
            case 729267099:
                if (str.equals(CameraStatisticsUtil.EVENT_CAPTURE)) {
                    c = 4;
                    break;
                }
            case 764302074:
                if (str.equals("slowVideo")) {
                    c = 8;
                    break;
                }
            case 875077159:
                if (str.equals("professional")) {
                    c = 3;
                    break;
                }
            case 1069983349:
                if (str.equals("panorama")) {
                    c = 2;
                    break;
                }
            case 1401705245:
                if (str.equals("highPictureSize")) {
                    c = 9;
                    break;
                }
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new e(activity, bVar, cVar, iVar);
            case 1:
                return new f(activity, bVar, cVar, iVar);
            case 2:
                return new e(activity, bVar, cVar, iVar);
            case 3:
                return new com.oppo.camera.professional.e(activity, bVar, cVar, iVar);
            case 4:
                return new b(activity, bVar, cVar, iVar);
            case 5:
                return new k(activity, bVar, cVar, iVar);
            case 6:
                return new j(activity, bVar, cVar, iVar);
            case 7:
                return new a(activity, bVar, cVar, iVar);
            case 8:
                return new f(activity, bVar, cVar, iVar);
            case 9:
                return new g(activity, bVar, cVar, iVar);
            case 10:
                return new l(activity, bVar, cVar, iVar);
            default:
                return null;
        }
    }
}
