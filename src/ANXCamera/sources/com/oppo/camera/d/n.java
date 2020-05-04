package com.oppo.camera.d;

import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.view.Surface;
import com.oppo.camera.gl.q;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: VideoRecorder */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1925a = false;

    /* renamed from: b  reason: collision with root package name */
    private MediaRecorder f1926b = null;
    private c c = null;
    /* access modifiers changed from: private */
    public e d = null;
    /* access modifiers changed from: private */
    public d e = null;

    /* compiled from: VideoRecorder */
    private class a implements d {
        private a() {
        }

        public void a(c cVar, int i, int i2) {
            if (n.this.d != null) {
                n.this.d.b(cVar, i, i2);
            }
        }

        public void b(c cVar, int i, int i2) {
            if (n.this.e != null) {
                n.this.e.a(cVar, i, i2);
            }
        }
    }

    /* compiled from: VideoRecorder */
    private class b implements MediaRecorder.OnErrorListener {
        private b() {
        }

        public void onError(MediaRecorder mediaRecorder, int i, int i2) {
            if (n.this.e != null) {
                n.this.e.a(mediaRecorder, i, i2);
            }
        }
    }

    /* compiled from: VideoRecorder */
    private class c implements MediaRecorder.OnInfoListener {
        private c() {
        }

        public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
            if (n.this.d != null) {
                n.this.d.b(mediaRecorder, i, i2);
            }
        }
    }

    /* compiled from: VideoRecorder */
    public interface d {
        void a(Object obj, int i, int i2);
    }

    /* compiled from: VideoRecorder */
    public interface e {
        void b(Object obj, int i, int i2);
    }

    public n(boolean z) {
        this.f1925a = z;
        h();
    }

    private void h() {
        if (this.f1925a) {
            this.c = new c();
            this.c.a((d) new a());
            return;
        }
        this.f1926b = new MediaRecorder();
        this.f1926b.setOnInfoListener(new c());
        this.f1926b.setOnErrorListener(new b());
    }

    public void a(double d2) {
        if (!this.f1925a) {
            this.f1926b.setCaptureRate(d2);
        }
    }

    public void a(float f, float f2) {
        if (this.f1925a) {
            this.c.a(f, f2);
        } else {
            this.f1926b.setLocation(f, f2);
        }
    }

    public void a(int i) {
        if (!this.f1925a) {
            this.f1926b.setAudioSource(i);
        }
    }

    public void a(int i, int i2) {
        if (this.f1925a) {
            this.c.a(i, i2);
        } else {
            this.f1926b.setVideoSize(i, i2);
        }
    }

    public void a(long j) {
        if (this.f1925a) {
            this.c.b(j);
        } else {
            this.f1926b.setMaxFileSize(j);
        }
    }

    public void a(CamcorderProfile camcorderProfile) {
        if (this.f1925a) {
            this.c.a(camcorderProfile);
        } else {
            this.f1926b.setProfile(camcorderProfile);
        }
    }

    public void a(Surface surface) {
        if (!this.f1925a) {
            this.f1926b.setInputSurface(surface);
        }
    }

    public void a(d dVar) {
        this.e = dVar;
    }

    public void a(e eVar) {
        this.d = eVar;
    }

    public void a(q qVar) {
        if (this.f1925a) {
            this.c.a(qVar);
        }
    }

    public void a(FileDescriptor fileDescriptor) {
        if (this.f1925a) {
            this.c.a(fileDescriptor);
        } else {
            this.f1926b.setOutputFile(fileDescriptor);
        }
    }

    public void a(String str) {
        if (this.f1925a) {
            this.c.a(str);
        } else {
            this.f1926b.setOutputFile(str);
        }
    }

    public boolean a() {
        if (this.f1925a) {
            return this.c.b();
        }
        this.f1926b.start();
        return true;
    }

    public void b(int i) {
        if (this.f1925a) {
            this.c.f(i);
        } else {
            this.f1926b.setAudioEncodingBitRate(i);
        }
    }

    public void b(int i, int i2) {
        if (!this.f1925a) {
            this.f1926b.setVideoEncodingProfileLevel(i, i2);
        }
    }

    public void b(String str) {
        com.oppo.camera.d.e("VideoRecorder", "writeExifTag, exifInfo: " + str);
        if (this.f1926b != null && !this.f1925a) {
            try {
                Method declaredMethod = MediaRecorder.class.getDeclaredMethod("setParameter", new Class[]{String.class});
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f1926b, new Object[]{"set-title=".concat(str)});
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            }
        }
    }

    public boolean b() {
        if (this.f1925a) {
            this.c.a((d) null);
            return this.c.c();
        }
        this.f1926b.setOnInfoListener((MediaRecorder.OnInfoListener) null);
        this.f1926b.setOnErrorListener((MediaRecorder.OnErrorListener) null);
        this.f1926b.stop();
        return true;
    }

    public void c(int i) {
        if (this.f1925a) {
            this.c.g(i);
        } else {
            this.f1926b.setAudioChannels(i);
        }
    }

    public void c(int i, int i2) {
        if (this.f1925a) {
            this.c.a(i);
        } else {
            this.f1926b.setOrientationHint(com.oppo.camera.e.a.b(i2, i));
        }
    }

    public boolean c() {
        if (this.f1925a) {
            this.c = null;
            return true;
        }
        this.f1926b.reset();
        this.f1926b.release();
        this.f1926b = null;
        return true;
    }

    public void d() {
        if (this.f1926b != null && !this.f1925a) {
            try {
                Method declaredMethod = MediaRecorder.class.getDeclaredMethod("setParameter", new Class[]{String.class});
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f1926b, new Object[]{"set-author=realme_"});
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            }
        }
    }

    public void d(int i) {
        if (this.f1925a) {
            this.c.h(i);
        } else {
            this.f1926b.setAudioSamplingRate(i);
        }
    }

    public void e() throws IOException {
        if (this.f1925a) {
            this.c.a();
        } else {
            this.f1926b.prepare();
        }
    }

    public void e(int i) {
        if (this.f1925a) {
            this.c.i(i);
        } else {
            this.f1926b.setAudioEncoder(i);
        }
    }

    public void f(int i) {
        if (!this.f1925a) {
            this.f1926b.setVideoSource(i);
        }
    }

    public boolean f() {
        try {
            if (this.f1925a) {
                this.c.e();
                return true;
            }
            this.f1926b.resume();
            return true;
        } catch (RuntimeException e2) {
            com.oppo.camera.d.e("VideoRecorder", "resume, Could not resume video recorder");
            e2.printStackTrace();
            return false;
        }
    }

    public void g(int i) {
        if (this.f1925a) {
            this.c.b(i);
        } else {
            this.f1926b.setVideoEncodingBitRate(i);
        }
    }

    public boolean g() {
        try {
            if (this.f1925a) {
                this.c.d();
                return true;
            }
            this.f1926b.pause();
            return true;
        } catch (RuntimeException e2) {
            e2.printStackTrace();
            com.oppo.camera.d.e("VideoRecorder", "pause, Could not pause video recorder");
            return false;
        }
    }

    public void h(int i) {
        if (this.f1925a) {
            if (i == 2) {
                i = 0;
            }
            this.c.d(i);
            return;
        }
        this.f1926b.setOutputFormat(i);
    }

    public void i(int i) {
        if (this.f1925a) {
            this.c.c(i);
        } else {
            this.f1926b.setVideoFrameRate(i);
        }
    }

    public void j(int i) {
        if (this.f1925a) {
            this.c.e(i);
        } else {
            this.f1926b.setVideoEncoder(i);
        }
    }

    public void k(int i) {
        if (this.f1925a) {
            this.c.a((long) i);
        } else {
            this.f1926b.setMaxDuration(i);
        }
    }

    public void l(int i) {
        com.oppo.camera.d.a("VideoRecorder", "setVideoMirror, mirrorType: " + i);
        if (this.f1926b == null || this.f1925a) {
            com.oppo.camera.d.e("VideoRecorder", "setVideoMirror, mMediaRecorder: " + this.f1926b + ", mbUseCameraMediaCodec: " + this.f1925a);
            return;
        }
        try {
            Method declaredMethod = MediaRecorder.class.getDeclaredMethod("setParameter", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            MediaRecorder mediaRecorder = this.f1926b;
            declaredMethod.invoke(mediaRecorder, new Object[]{"set-video-mirror=" + i});
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            com.oppo.camera.d.d("VideoRecorder", "setVideoMirror, NoSuchMethodException", e2);
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            com.oppo.camera.d.d("VideoRecorder", "setVideoMirror, InvocationTargetException", e3);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            com.oppo.camera.d.d("VideoRecorder", "setVideoMirror, IllegalAccessException", e4);
        }
    }
}
