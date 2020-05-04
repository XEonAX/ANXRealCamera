package com.b;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import com.meicam.sdk.NvsAVFileInfo;
import com.meicam.sdk.NvsAudioResolution;
import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsVideoClip;
import com.meicam.sdk.NvsVideoResolution;
import com.meicam.sdk.NvsVideoTrack;
import com.oppo.camera.d;
import com.oppo.camera.jni.YuvProcessUtil;
import java.util.Hashtable;

/* compiled from: MeicamVideoEngine */
public class a implements NvsStreamingContext.CompileCallback {

    /* renamed from: a  reason: collision with root package name */
    private long f1482a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1483b = true;
    private Activity c;
    private b d;
    private NvsStreamingContext e;
    private NvsTimeline f;
    private NvsVideoTrack g;
    private String h;

    public a(Activity activity, b bVar) {
        this.c = activity;
        this.d = bVar;
        e();
    }

    private boolean b(int i) {
        if (i == 0) {
            return true;
        }
        if (i != 90) {
            if (i == 180) {
                return true;
            }
            if (i != 270) {
                return true;
            }
        }
        return false;
    }

    private void e() {
        this.e = NvsStreamingContext.init(this.c, "assets:/3542-139-eec0b0dcecc5d98cf43896461f46c51e.lic");
        if (this.e == null) {
            Log.e("MeicamVideoEngine", "NvsStreamingContext onCreate: init fail !!!");
        } else {
            Log.d("MeicamVideoEngine", "NvsStreamingContext onCreate: init successful");
        }
    }

    public void a() {
        d.a("MeicamVideoEngine", "stopMeicamVideoEngine");
        this.e.stop(1);
    }

    public boolean a(int i) {
        if (this.e == null) {
            return false;
        }
        if (this.f != null && this.f1483b == b(i)) {
            return false;
        }
        d.b("MeicamVideoEngine", "initTimeline orientation: " + i + ", mbVideoOrientationPortrait: " + this.f1483b + " -> " + b(i));
        this.f1483b = b(i);
        NvsRational nvsRational = new NvsRational(30, 1);
        NvsAudioResolution nvsAudioResolution = new NvsAudioResolution();
        nvsAudioResolution.sampleRate = 44100;
        nvsAudioResolution.channelCount = 2;
        NvsVideoResolution nvsVideoResolution = new NvsVideoResolution();
        nvsVideoResolution.imagePAR = new NvsRational(1, 1);
        if (b(i)) {
            nvsVideoResolution.imageWidth = 720;
            nvsVideoResolution.imageHeight = 1280;
        } else {
            nvsVideoResolution.imageWidth = 1280;
            nvsVideoResolution.imageHeight = 720;
        }
        if (this.f != null) {
            this.e.stop(1);
            this.e.removeTimeline(this.f);
            this.e.clearCachedResources(false);
            this.f = null;
            d.b("MeicamVideoEngine", "orientation changed, need initTimeline again!");
        }
        this.f = this.e.createTimeline(nvsVideoResolution, nvsRational, nvsAudioResolution);
        this.g = this.f.appendVideoTrack();
        this.e.setCompileCallback(this);
        return true;
    }

    public boolean a(String str) {
        String str2 = str;
        boolean z = false;
        if (this.e == null || this.f == null || TextUtils.isEmpty(str)) {
            d.e("MeicamVideoEngine", "compileSlowMotion return !");
            return false;
        }
        this.f1482a = System.currentTimeMillis();
        d.e("MeicamVideoEngine", "compileSlowMotion original fileName: " + str2);
        this.e.clearCachedResources(false);
        this.e.setMediaCodecVideoDecodingOperatingRate(str2, 240);
        this.e.enableGetAVFileInfoFromMediaExtractor(str2);
        NvsAVFileInfo aVFileInfo = this.e.getAVFileInfo(str2);
        if (aVFileInfo == null || aVFileInfo.getVideoStreamCount() == 0) {
            d.e("MeicamVideoEngine", "compileSlowMotion return for nvsAVFileInfo!");
            return false;
        }
        if (this.g.getClipCount() > 0) {
            this.g.removeAllClips();
        }
        com.oppo.camera.i.a.a().b();
        long videoStreamDuration = aVFileInfo.getVideoStreamDuration(0);
        d.b("MeicamVideoEngine", "compileSlowMotion, videoStreamDuration " + videoStreamDuration);
        NvsVideoClip appendClip = this.g.appendClip(str, 0, 32000000);
        if (appendClip != null) {
            appendClip.changeSpeed(32.0d);
        }
        String str3 = str;
        this.g.appendClip(str3, 32000000, 40000000);
        NvsVideoClip appendClip2 = this.g.appendClip(str3, 40000000, videoStreamDuration);
        if (appendClip2 != null) {
            appendClip2.changeSpeed(32.0d);
        }
        this.g.setBuiltinTransition(0, (String) null);
        this.g.setBuiltinTransition(1, (String) null);
        this.g.setBuiltinTransition(2, (String) null);
        this.h = str2.replace("VID", "Slow");
        int streamingEngineState = this.e.getStreamingEngineState();
        d.e("MeicamVideoEngine", "compileSlowMotion, showResult mCompilePath = " + this.h + ", state: " + streamingEngineState);
        if (streamingEngineState == 0 || streamingEngineState == 4) {
            Hashtable hashtable = new Hashtable();
            hashtable.put("bitrate", Integer.valueOf(YuvProcessUtil.ExifInfo.EXPOSURE_BIAS_MULTIPLE));
            this.e.setCompileConfigurations(hashtable);
            NvsStreamingContext nvsStreamingContext = this.e;
            NvsTimeline nvsTimeline = this.f;
            z = nvsStreamingContext.compileTimeline(nvsTimeline, 0, nvsTimeline.getDuration(), this.h, 4, 2, 0);
            d.b("MeicamVideoEngine", "compileSlowMotion, compileTimeline compileResult: " + z);
        } else if (streamingEngineState == 5) {
            this.e.stop();
        }
        com.oppo.camera.i.a.a().c();
        return z;
    }

    public void b() {
        d.e("MeicamVideoEngine", "releaseMeicamVideoEngine start");
        this.e.stop(1);
        this.e.removeTimeline(this.f);
        this.e.clearCachedResources(false);
        this.e = null;
        this.g = null;
        this.f = null;
        this.h = null;
        this.d = null;
        d.e("MeicamVideoEngine", "releaseMeicamVideoEngine X");
    }

    public String c() {
        return this.h;
    }

    public long d() {
        return this.f1482a;
    }

    public void onCompileFailed(NvsTimeline nvsTimeline) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(3);
        }
    }

    public void onCompileFinished(NvsTimeline nvsTimeline) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(2);
        }
    }

    public void onCompileProgress(NvsTimeline nvsTimeline, int i) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(1);
        }
    }
}
