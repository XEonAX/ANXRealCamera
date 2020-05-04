package com.oppo.camera.d;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.oppo.camera.d;
import com.oppo.camera.gl.q;
import com.sensetime.stmobile.sticker_module_types.STStickerBackgroungEdgeParamType;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.CountDownLatch;

/* compiled from: CameraMediaCodec */
public class c {
    /* access modifiers changed from: private */
    public AudioRecord A;
    /* access modifiers changed from: private */
    public d B;
    /* access modifiers changed from: private */
    public a C;
    private q D;
    private Handler E;
    private Handler F;
    private Thread G;
    private ConditionVariable H;
    private b I;
    /* access modifiers changed from: private */
    public CountDownLatch J;
    private float K;
    private float L;
    /* access modifiers changed from: private */
    public long M;
    private boolean N;
    /* access modifiers changed from: private */
    public boolean O;
    private boolean P;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final Object f1865a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Object f1866b;
    /* access modifiers changed from: private */
    public final Object c;
    private final Object d;
    private boolean e;
    /* access modifiers changed from: private */
    public int f;
    private int g;
    private int h;
    private int i;
    private int j;
    /* access modifiers changed from: private */
    public long k;
    private long l;
    /* access modifiers changed from: private */
    public long m;
    /* access modifiers changed from: private */
    public long n;
    /* access modifiers changed from: private */
    public long o;
    /* access modifiers changed from: private */
    public long p;
    /* access modifiers changed from: private */
    public MediaMuxer q;
    /* access modifiers changed from: private */
    public int r;
    private String s;
    private FileDescriptor t;
    private MediaCodec u;
    private MediaCodec v;
    private Surface w;
    private MediaFormat x;
    private MediaFormat y;
    private ByteBuffer[] z;

    /* compiled from: CameraMediaCodec */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i == 2 && c.this.B != null) {
                    c.this.B.b(c.this, message.arg1, message.arg2);
                }
            } else if (c.this.B != null) {
                c.this.B.a(c.this, message.arg1, message.arg2);
            }
        }
    }

    /* compiled from: CameraMediaCodec */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        public int f1875a;

        /* renamed from: b  reason: collision with root package name */
        public int f1876b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;

        private b() {
            this.f1875a = 0;
            this.f1876b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0;
        }
    }

    public c() {
        this.f1865a = new Object();
        this.f1866b = new Object();
        this.c = new Object();
        this.d = new Object();
        this.e = true;
        this.f = -1;
        this.g = -1;
        this.h = 0;
        this.i = 0;
        this.j = 12;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = null;
        this.r = 3;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = new ConditionVariable();
        this.I = new b();
        this.J = new CountDownLatch(2);
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = 0;
        this.N = true;
        this.O = false;
        this.P = false;
        this.C = new a(Looper.getMainLooper());
    }

    private boolean A() {
        boolean z2;
        d.a("CameraMediaCodec", "startAudioInput");
        if (this.A == null) {
            z();
        }
        this.A.startRecording();
        if (this.A.getRecordingState() != 3) {
            d.e("CameraMediaCodec", "startAudioInput, mAudioRecord may be conflict or have some other exception");
            z2 = false;
        } else {
            z2 = true;
        }
        final byte[] bArr = new byte[y()];
        this.G = new Thread("audio input thread") {
            public void run() {
                while (true) {
                    if (c.this.r == 1) {
                        int read = c.this.A.read(bArr, 0, c.this.y());
                        if (read > 0) {
                            c.this.a(bArr, 0, read);
                        }
                    } else if (c.this.r == 3) {
                        d.e("CameraMediaCodec", "startAudioInput, AudioInput stop");
                        return;
                    } else if (c.this.r == 2) {
                        d.e("CameraMediaCodec", "startAudioInput, AudioInput pause");
                        synchronized (c.this.f1866b) {
                            try {
                                if (c.this.r == 2) {
                                    c.this.f1866b.wait();
                                }
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        };
        this.G.start();
        return z2;
    }

    /* access modifiers changed from: private */
    public synchronized void a(int i2, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        d.a("CameraMediaCodec", "writeSampleData");
        if (this.q != null) {
            this.q.writeSampleData(i2, byteBuffer, bufferInfo);
        }
    }

    /* access modifiers changed from: private */
    public void a(byte[] bArr, int i2, int i3) {
        d.a("CameraMediaCodec", "addAudioFrame, mAudioCodec: " + this.v + ", mRecorderState: " + this.r);
        if (this.v != null) {
            int i4 = -1;
            while (true) {
                if (i4 >= 0) {
                    break;
                }
                i4 = this.v.dequeueInputBuffer(5000);
                d.a("CameraMediaCodec", "addAudioFrame, outputBufferIndex: " + i4);
                if (i4 < 0 && this.r != 1) {
                    d.e("CameraMediaCodec", "addAudioFrame break, mRecorderState: " + this.r);
                    break;
                }
            }
            int i5 = i4;
            if (bArr != null && i5 >= 0) {
                this.z[i5].position(0);
                this.z[i5].put(bArr, i2, i3);
                this.v.queueInputBuffer(i5, 0, i3, System.nanoTime(), 0);
            }
        }
    }

    private void f() {
        if (this.E == null) {
            HandlerThread handlerThread = new HandlerThread("video codec thread");
            handlerThread.start();
            this.E = new Handler(handlerThread.getLooper());
        }
    }

    private void g() {
        Handler handler = this.E;
        if (handler != null) {
            handler.getLooper().quitSafely();
            this.E = null;
        }
    }

    private void h() {
        if (this.F == null) {
            HandlerThread handlerThread = new HandlerThread("audio codec thread");
            handlerThread.start();
            this.F = new Handler(handlerThread.getLooper());
        }
    }

    private void i() {
        Handler handler = this.F;
        if (handler != null) {
            handler.getLooper().quitSafely();
            this.F = null;
        }
    }

    private MediaFormat j() {
        if (this.x == null) {
            this.x = MediaFormat.createVideoFormat(k(), this.I.l, this.I.j);
            this.x.setInteger("bitrate", this.I.h);
            this.x.setInteger("frame-rate", this.I.k);
            this.x.setInteger("color-format", 2130708361);
            this.x.setInteger("i-frame-interval", 1);
        }
        return this.x;
    }

    private String k() {
        b bVar = this.I;
        return (bVar == null || bVar.i != 5) ? "video/avc" : "video/hevc";
    }

    private MediaFormat l() {
        if (this.y == null) {
            this.y = MediaFormat.createAudioFormat("audio/mp4a-latm", m(), this.I.f1876b == 0 ? n() : this.I.f1876b);
            this.y.setInteger("bitrate", this.I.f1875a == 0 ? 128000 : this.I.f1875a);
            this.y.setInteger("aac-profile", 2);
        }
        return this.y;
    }

    private int m() {
        b bVar = this.I;
        if (bVar == null || bVar.d == 0) {
            return 48000;
        }
        return this.I.d;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0018, code lost:
        if (r0 != 48) goto L_0x001e;
     */
    private int n() {
        int i2 = this.j;
        int i3 = -2;
        if (i2 != 0) {
            if (!(i2 == 1 || i2 == 2)) {
                if (!(i2 == 3 || i2 == 12)) {
                    if (i2 != 16) {
                    }
                }
                i3 = 2;
            }
            i3 = 1;
        }
        d.a("CameraMediaCodec", "getChannelCount, channelCount: " + i3);
        return i3;
    }

    private void o() {
        d.a("CameraMediaCodec", "stopAudioInput");
        AudioRecord audioRecord = this.A;
        if (audioRecord != null) {
            audioRecord.stop();
            this.A.release();
        }
    }

    private void p() {
        d.a("CameraMediaCodec", "stopAudioEncode, mAudioCodec: " + this.v + ", mbAudioCodecOutputDataCome: " + this.P);
        if (this.P) {
            MediaCodec mediaCodec = this.v;
            if (mediaCodec != null) {
                this.v.queueInputBuffer(mediaCodec.dequeueInputBuffer(-1), 0, 0, 0, 4);
                return;
            }
            return;
        }
        u();
    }

    /* access modifiers changed from: private */
    public void q() {
        d.a("CameraMediaCodec", "initAudioCodec");
        try {
            this.v = MediaCodec.createEncoderByType("audio/mp4a-latm");
        } catch (Exception unused) {
            d.e("CameraMediaCodec", "initAudioCodec, createEncoderByType fail");
        }
        this.v.configure(l(), (Surface) null, (MediaCrypto) null, 1);
        this.v.start();
        this.z = this.v.getInputBuffers();
        this.F.post(new Runnable() {
            public void run() {
                d.a("CameraMediaCodec", "initAudioCodec, AudioEncode run");
                c.this.t();
            }
        });
        d.a("CameraMediaCodec", "initAudioCodec, mInputByteBuffer.length: " + this.z.length);
    }

    /* access modifiers changed from: private */
    @TargetApi(23)
    public void r() {
        d.a("CameraMediaCodec", "initVideoCodec");
        try {
            this.u = MediaCodec.createEncoderByType(k());
        } catch (Exception unused) {
            d.e("CameraMediaCodec", "initVideoCodec, createEncoderByType fail");
        }
        this.u.setCallback(new MediaCodec.Callback() {
            public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
                d.e("CameraMediaCodec", "onError");
                c.this.C.sendMessage(c.this.C.obtainMessage(2, codecException.getErrorCode(), -1));
            }

            public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
                d.a("CameraMediaCodec", "onInputBufferAvailable");
            }

            public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
                d.a("CameraMediaCodec", "onOutputBufferAvailable");
                ByteBuffer outputBuffer = mediaCodec.getOutputBuffer(i);
                if (bufferInfo.flags == 4) {
                    d.a("CameraMediaCodec", "onOutputBufferAvailable, Video encode Stopped");
                    c.this.s();
                } else if (bufferInfo.flags == 2) {
                    d.a("CameraMediaCodec", "onOutputBufferAvailable, BUFFER_FLAG_CODEC_CONFIG");
                } else {
                    if (bufferInfo.flags == 1) {
                        d.a("CameraMediaCodec", "onOutputBufferAvailable, BUFFER_FLAG_SYNC_FRAME");
                    }
                    bufferInfo.presentationTimeUs = (System.nanoTime() - c.this.m) / 1000;
                    if (c.this.n < 0) {
                        long unused = c.this.n = bufferInfo.presentationTimeUs;
                    }
                    d.a("CameraMediaCodec", "onOutputBufferAvailable, writeSampleData, info.presentationTimeUs: " + bufferInfo.presentationTimeUs);
                    c cVar = c.this;
                    cVar.a(cVar.f, outputBuffer, bufferInfo);
                    synchronized (c.this.c) {
                        long unused2 = c.this.M = c.this.M + ((long) bufferInfo.size);
                    }
                    if (c.this.o > 0 && bufferInfo.presentationTimeUs - c.this.n >= c.this.o) {
                        d.e("CameraMediaCodec", "onOutputBufferAvailable, reach to max duration time");
                        c.this.C.sendMessage(c.this.C.obtainMessage(1, 800, -1));
                        long unused3 = c.this.o = -1;
                    } else if (c.this.p > 0 && c.this.M >= c.this.p) {
                        d.e("CameraMediaCodec", "onOutputBufferAvailable, reach to max file size");
                        c.this.C.sendMessage(c.this.C.obtainMessage(1, STStickerBackgroungEdgeParamType.ST_STICKER_PARAM_BACKGROUND_EDGE_UINT_COLOR, -1));
                        long unused4 = c.this.p = -1;
                    }
                    if (c.this.r == 2) {
                        long unused5 = c.this.k = System.nanoTime();
                    }
                    mediaCodec.releaseOutputBuffer(i, false);
                    boolean unused6 = c.this.O = true;
                }
            }

            public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
                d.a("CameraMediaCodec", "onOutputFormatChanged");
                synchronized (c.this.f1865a) {
                    if (c.this.f < 0) {
                        mediaFormat.setInteger("support64BitFileSize", 1);
                        int unused = c.this.f = c.this.q.addTrack(mediaFormat);
                        c.this.w();
                        d.e("CameraMediaCodec", "onOutputFormatChanged, addTrack mVideoTrack, format: " + mediaFormat);
                    }
                }
            }
        }, this.E);
        this.u.configure(j(), (Surface) null, (MediaCrypto) null, 1);
        this.w = this.u.createInputSurface();
        this.D.setOutput(this.w);
        this.u.start();
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r1 == null) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        com.oppo.camera.d.a("CameraMediaCodec", "releaseVideoCodec, end");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0038, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001d, code lost:
        if (r1 != null) goto L_0x001f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x001f, code lost:
        r1.release();
     */
    public void s() {
        Surface surface;
        d.a("CameraMediaCodec", "releaseVideoCodec");
        try {
            if (this.u != null) {
                this.u.stop();
                this.u.release();
            }
            this.f = -1;
            x();
            surface = this.w;
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f = -1;
            x();
            surface = this.w;
        } catch (Throwable th) {
            this.f = -1;
            x();
            Surface surface2 = this.w;
            if (surface2 != null) {
                surface2.release();
            }
            throw th;
        }
    }

    /* access modifiers changed from: private */
    public void t() {
        d.a("CameraMediaCodec", "audioEncoder, start");
        ByteBuffer[] outputBuffers = this.v.getOutputBuffers();
        while (true) {
            try {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int dequeueOutputBuffer = this.v.dequeueOutputBuffer(bufferInfo, -1);
                if (dequeueOutputBuffer == -3) {
                    outputBuffers = this.v.getOutputBuffers();
                } else if (dequeueOutputBuffer == -2) {
                    synchronized (this.f1865a) {
                        if (this.g < 0) {
                            d.a("CameraMediaCodec", "audioEncoder, addTrack mAudioTrack");
                            this.g = this.q.addTrack(this.v.getOutputFormat());
                            w();
                        }
                    }
                } else if (dequeueOutputBuffer == -1) {
                    d.e("CameraMediaCodec", "audioEncoder, Audio INFO_TRY_AGAIN_LATER");
                } else if (bufferInfo.flags == 4) {
                    d.a("CameraMediaCodec", "audioEncoder, Audio " + bufferInfo.flags);
                    break;
                } else {
                    if (bufferInfo.flags != 2) {
                        if (bufferInfo.flags != 1) {
                            bufferInfo.presentationTimeUs = (System.nanoTime() - this.m) / 1000;
                            if (this.n < 0) {
                                this.n = bufferInfo.presentationTimeUs;
                            }
                            d.a("CameraMediaCodec", "audioEncoder, audio bufferInfo.presentationTimeUs: " + bufferInfo.presentationTimeUs);
                            a(this.g, outputBuffers[dequeueOutputBuffer], bufferInfo);
                            synchronized (this.c) {
                                this.M += (long) bufferInfo.size;
                            }
                            this.v.releaseOutputBuffer(dequeueOutputBuffer, false);
                            if (this.o > 0 && bufferInfo.presentationTimeUs - this.n >= this.o) {
                                d.e("CameraMediaCodec", "audioEncoder, reach to max duration time");
                                this.C.sendMessage(this.C.obtainMessage(1, 800, -1));
                                this.o = -1;
                            } else if (this.p > 0 && this.M >= this.p) {
                                d.a("CameraMediaCodec", "audioEncoder, reach to max file size");
                                this.C.sendMessage(this.C.obtainMessage(1, STStickerBackgroungEdgeParamType.ST_STICKER_PARAM_BACKGROUND_EDGE_UINT_COLOR, -1));
                                this.p = -1;
                            }
                            if (this.r == 2) {
                                this.k = System.nanoTime();
                            }
                            this.P = true;
                        }
                    }
                    d.a("CameraMediaCodec", "audioEncoder, Audio " + bufferInfo.flags);
                }
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                    d.e("CameraMediaCodec", "audioEncoder, audio codec exception");
                } catch (Throwable th) {
                    u();
                    throw th;
                }
            }
        }
        u();
        d.a("CameraMediaCodec", "audioEncoder, release audio codec");
    }

    private void u() {
        d.a("CameraMediaCodec", "releaseAudioCodec");
        synchronized (this.d) {
            try {
                if (this.G != null && this.G.isAlive()) {
                    d.a("CameraMediaCodec", "releaseAudioCodec, audio input thread not end and we wait it here");
                    this.G.join();
                }
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                } catch (Throwable th) {
                    this.G = null;
                    throw th;
                }
            }
            this.G = null;
            try {
                d.a("CameraMediaCodec", "releaseAudioCodec, mAudioCodec: " + this.v);
                if (this.v != null) {
                    this.v.stop();
                    this.v.release();
                }
                this.g = -1;
                this.v = null;
            } catch (Exception e3) {
                e3.printStackTrace();
                d.e("CameraMediaCodec", "releaseAudioCodec, stop fail");
                this.g = -1;
                this.v = null;
            }
            x();
        }
        d.a("CameraMediaCodec", "releaseAudioCodec, end");
    }

    private void v() {
        d.a("CameraMediaCodec", "stopVideoEncode, mbVideoCodecOutputDataCome: " + this.O);
        q qVar = this.D;
        if (qVar != null) {
            qVar.g();
        }
        if (this.O) {
            MediaCodec mediaCodec = this.u;
            if (mediaCodec != null) {
                mediaCodec.signalEndOfInputStream();
                return;
            }
            return;
        }
        Handler handler = this.E;
        if (handler != null) {
            handler.post(new Runnable() {
                public void run() {
                    c.this.s();
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void w() {
        d.a("CameraMediaCodec", "startMediaMuxer");
        if (!this.e) {
            this.q.start();
        } else if (this.f < 0 || this.g < 0) {
            synchronized (this.f1865a) {
                try {
                    if (this.f < 0 || this.g < 0) {
                        this.f1865a.wait();
                    }
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        } else {
            this.q.start();
            synchronized (this.f1865a) {
                this.f1865a.notifyAll();
            }
        }
    }

    private void x() {
        ConditionVariable conditionVariable;
        d.a("CameraMediaCodec", "stopMediaMuxer, mbScopeEnableAudio: " + this.e + ", mAudioTrack: " + this.g + ", mVideoTrack: " + this.f);
        if (this.e) {
            synchronized (this.f1865a) {
                if (this.g >= 0 || this.f >= 0) {
                    try {
                        if (this.g >= 0 || this.f >= 0) {
                            this.f1865a.wait();
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    try {
                        if (this.q != null) {
                            this.q.stop();
                            this.q.release();
                        }
                        this.q = null;
                        this.f1865a.notifyAll();
                        g();
                        i();
                        conditionVariable = this.H;
                    } catch (IllegalStateException unused) {
                        try {
                            d.e("CameraMediaCodec", "stopMediaMuxer, failed to stop the muxer");
                            this.q = null;
                            this.f1865a.notifyAll();
                            g();
                            i();
                            conditionVariable = this.H;
                        } catch (Throwable th) {
                            this.q = null;
                            this.f1865a.notifyAll();
                            g();
                            i();
                            this.H.open();
                            throw th;
                        }
                    }
                    conditionVariable.open();
                }
            }
            return;
        }
        try {
            if (this.q != null) {
                this.q.stop();
                this.q.release();
            }
        } catch (IllegalStateException unused2) {
            d.e("CameraMediaCodec", "stopMediaMuxer, failed to stop the muxer");
        } catch (Throwable th2) {
            this.q = null;
            g();
            i();
            this.H.open();
            throw th2;
        }
        this.q = null;
        g();
        i();
        this.H.open();
    }

    /* access modifiers changed from: private */
    public int y() {
        if (this.i == 0) {
            this.i = AudioRecord.getMinBufferSize(m(), 12, 2);
            if (this.z[0].capacity() < this.i) {
                this.i = this.z[0].capacity();
            }
        }
        return this.i;
    }

    private void z() {
        if (this.A == null) {
            AudioRecord audioRecord = new AudioRecord(5, m(), 12, 2, y());
            this.A = audioRecord;
        }
    }

    public void a() {
        d.a("CameraMediaCodec", "prepare");
        f();
        h();
        if (this.q == null) {
            try {
                if (this.t != null) {
                    this.q = new MediaMuxer(this.t, this.I.f);
                } else {
                    this.q = new MediaMuxer(this.s, this.I.f);
                }
                this.q.setOrientationHint(this.h);
                this.q.setLocation(this.K, this.L);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(float f2, float f3) {
        this.K = f2;
        this.L = f3;
    }

    public void a(int i2) {
        this.h = i2;
    }

    public void a(int i2, int i3) {
        b bVar = this.I;
        bVar.l = i3;
        bVar.j = i2;
    }

    public void a(long j2) {
        this.o = j2 * 1000;
    }

    public void a(CamcorderProfile camcorderProfile) {
        this.I.k = camcorderProfile.videoFrameRate;
        this.I.h = camcorderProfile.videoBitRate;
        this.I.i = camcorderProfile.videoCodec;
        this.I.f1875a = camcorderProfile.audioBitRate;
        this.I.f1876b = camcorderProfile.audioChannels;
        this.I.c = camcorderProfile.audioCodec;
        this.I.d = camcorderProfile.audioSampleRate;
        this.I.e = camcorderProfile.duration;
        this.I.f = camcorderProfile.fileFormat;
        this.I.g = camcorderProfile.quality;
        this.I.j = camcorderProfile.videoFrameWidth;
        this.I.l = camcorderProfile.videoFrameHeight;
    }

    public void a(d dVar) {
        this.B = dVar;
    }

    public void a(q qVar) {
        this.D = qVar;
    }

    public void a(FileDescriptor fileDescriptor) {
        this.t = fileDescriptor;
    }

    public void a(String str) {
        this.s = str;
    }

    public void b(int i2) {
        this.I.h = i2;
    }

    public void b(long j2) {
        this.p = (long) (((float) j2) * 0.9f);
    }

    public boolean b() {
        d.a("CameraMediaCodec", "start");
        this.E.post(new Runnable() {
            public void run() {
                try {
                    c.this.r();
                } finally {
                    c.this.J.countDown();
                    d.a("CameraMediaCodec", "start, initVideoCodec end");
                }
            }
        });
        this.F.post(new Runnable() {
            public void run() {
                try {
                    c.this.q();
                } finally {
                    c.this.J.countDown();
                    d.a("CameraMediaCodec", "start, initAudioCodec end");
                }
            }
        });
        try {
            this.J.await();
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        this.O = false;
        this.P = false;
        this.r = 1;
        this.N = A();
        q qVar = this.D;
        if (qVar != null) {
            qVar.i();
        } else {
            d.e("CameraMediaCodec", "start, mGLSurfaceView is null");
        }
        return this.N;
    }

    public void c(int i2) {
        this.I.k = i2;
    }

    public boolean c() {
        d.a("CameraMediaCodec", "stop, mRecorderState: " + this.r);
        if (this.r == 3) {
            return true;
        }
        this.H.close();
        this.r = 3;
        synchronized (this.f1866b) {
            this.f1866b.notifyAll();
        }
        q qVar = this.D;
        if (qVar != null) {
            qVar.i();
        } else {
            d.e("CameraMediaCodec", "stop, mGLSurfaceView is null");
        }
        this.l = 0;
        this.k = 0;
        v();
        o();
        p();
        this.H.block();
        return this.N;
    }

    public void d() {
        d.a("CameraMediaCodec", "pause");
        this.k = System.nanoTime();
        this.r = 2;
        this.l = 0;
        q qVar = this.D;
        if (qVar != null) {
            qVar.h();
        } else {
            d.e("CameraMediaCodec", "pause, mGLSurfaceView is null");
        }
    }

    public void d(int i2) {
        this.I.f = i2;
    }

    public void e() {
        this.l = System.nanoTime();
        this.m += this.l - this.k;
        d.a("CameraMediaCodec", "resume, mPausedTime: " + this.m);
        this.r = 1;
        synchronized (this.f1866b) {
            this.f1866b.notifyAll();
        }
        q qVar = this.D;
        if (qVar != null) {
            qVar.i();
        } else {
            d.e("CameraMediaCodec", "resume, mGLSurfaceView is null");
        }
    }

    public void e(int i2) {
        this.I.i = i2;
    }

    public void f(int i2) {
        this.I.f1875a = i2;
    }

    public void g(int i2) {
        this.I.f1876b = i2;
    }

    public void h(int i2) {
        this.I.d = i2;
    }

    public void i(int i2) {
        this.I.c = i2;
    }
}
