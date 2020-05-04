package com.oppo.camera;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import com.oppo.a.a.a;
import com.oppo.camera.o.d;

/* compiled from: GalleryPreCodeClient */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2212a = false;

    /* renamed from: b  reason: collision with root package name */
    private Intent f2213b = null;
    /* access modifiers changed from: private */
    public a c = null;
    private ServiceConnection d = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.a("GalleryPreCodeClient", "onServiceConnected");
            a unused = j.this.c = a.C0050a.a(iBinder);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            d.a("GalleryPreCodeClient", "onServiceDisconnected");
            synchronized (this) {
                a unused = j.this.c = null;
            }
        }
    };

    public void a(Context context) {
        this.f2213b = new Intent();
        this.f2213b.setComponent(new ComponentName("com.coloros.gallery3d", "com.oppo.gallery3d.predecode.PreTileDecodeService"));
        try {
            this.f2212a = context.bindService(this.f2213b, this.d, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        d.a("GalleryPreCodeClient", "bindPreDecodeService context: " + context + "mbBinded: " + this.f2212a + ", mIntent: " + this.f2213b);
    }

    public void a(Context context, Uri uri, String str, long j, boolean z) {
        if (this.c == null) {
            d.a("GalleryPreCodeClient", "call, null == preDecodeService");
        } else if (j == -1) {
            d.a("GalleryPreCodeClient", "call, date == -1 not support pre encode!");
        } else if (uri == null) {
            d.a("GalleryPreCodeClient", "call, null == image_uri ");
        } else if (context == null) {
            d.a("GalleryPreCodeClient", "call, null == mContext ");
        } else {
            if (d.d(context) <= 1073741824) {
                if (d.e(context) <= 262144000) {
                    d.a("GalleryPreCodeClient", "call, AvailMemory < 250M, will cause lmk and kill com.oppo.gallery3d.provider.AlbumsProvider.");
                    return;
                }
            } else if (d.e(context) <= 367001600) {
                d.a("GalleryPreCodeClient", "call, AvailMemory < 350M, will cause lmk and kill com.oppo.gallery3d.provider.AlbumsProvider.");
                return;
            }
            d.a("GalleryPreCodeClient", "call, image_uri: " + uri.toString() + ", image_path: " + str + ", image_date: " + j);
            try {
                synchronized (this) {
                    if (this.c != null) {
                        this.c.a(uri.toString(), str, j, z);
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void b(Context context) {
        d.a("GalleryPreCodeClient", "unBindPreDecodeService context: " + context + ", mbBinded: " + this.f2212a);
        if (this.f2212a) {
            try {
                context.unbindService(this.d);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f2212a = false;
        }
    }
}
