package com.sensetime.stmobile;

import android.content.Context;
import android.media.MediaPlayer;
import com.oppo.camera.d;
import com.oppo.camera.l.a;
import com.sensetime.stmobile.STSoundPlay;
import java.io.File;
import java.io.OutputStream;
import java.util.HashMap;

public class STSoundPlayManager {
    private static final String CACHED_FOLDER = "Audio";
    private static final String TAG = "STSoundPlayManager";
    /* access modifiers changed from: private */
    public String mCachedPath;
    private MediaPlayer.OnCompletionListener mCompletionListener = new MediaPlayer.OnCompletionListener() {
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (STSoundPlayManager.this.mMediaPlayer == null) {
                d.e(STSoundPlayManager.TAG, "onCompletion err, mMediaPlayer: " + STSoundPlayManager.this.mMediaPlayer);
                return;
            }
            try {
                SoundMetaData soundMetaData = (SoundMetaData) STSoundPlayManager.this.mSoundMetaDataMap.get(STSoundPlayManager.this.mCurrentPlaying);
                if (soundMetaData != null) {
                    int i = soundMetaData.loop - 1;
                    soundMetaData.loop = i;
                    if (i > 0) {
                        d.a(STSoundPlayManager.TAG, "onCompletion, loop: " + soundMetaData.loop);
                        STSoundPlayManager.this.mMediaPlayer.start();
                        return;
                    }
                }
                d.a(STSoundPlayManager.TAG, "onCompletion, play done");
                if (!(soundMetaData == null || STSoundPlay.getInstance() == null)) {
                    STSoundPlay.getInstance().setSoundPlayDone(soundMetaData.name);
                }
                STSoundPlayManager.this.mMediaPlayer.stop();
                STSoundPlayManager.this.mMediaPlayer.reset();
            } catch (Exception e) {
                d.d(STSoundPlayManager.TAG, "onCompletion err", e);
            }
        }
    };
    private Context mContext;
    /* access modifiers changed from: private */
    public String mCurrentPlaying;
    private MediaPlayer.OnErrorListener mErrorListener = new MediaPlayer.OnErrorListener() {
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            d.e(STSoundPlayManager.TAG, "MediaPlayer what: " + i + ", extra: " + i2);
            return true;
        }
    };
    /* access modifiers changed from: private */
    public MediaPlayer mMediaPlayer;
    private MyPlayControlListener mPlayControlDefaultListener;
    /* access modifiers changed from: private */
    public HashMap<String, SoundMetaData> mSoundMetaDataMap = new HashMap<>();
    /* access modifiers changed from: private */
    public String mSoundName;

    public class MyPlayControlListener implements STSoundPlay.PlayControlListener {
        private boolean mbPause = false;

        public MyPlayControlListener() {
        }

        public void onSoundLoaded(String str, byte[] bArr) {
            d.a(STSoundPlayManager.TAG, "onSoundLoaded, name: " + str);
            if (str != null) {
                String access$300 = STSoundPlayManager.this.saveSoundToFile(str, bArr);
                if (access$300 != null) {
                    SoundMetaData soundMetaData = (SoundMetaData) STSoundPlayManager.this.mSoundMetaDataMap.get(str);
                    if (soundMetaData == null) {
                        soundMetaData = new SoundMetaData();
                    }
                    soundMetaData.cachePath = access$300;
                    soundMetaData.name = str;
                    STSoundPlayManager.this.mSoundMetaDataMap.put(str, soundMetaData);
                    return;
                }
                d.e(STSoundPlayManager.TAG, "onSoundLoaded, SoundFilePath is null");
            }
        }

        public void onStartPlay(String str, int i) {
            d.a(STSoundPlayManager.TAG, "onStartPlay, name: " + str + ", loop: " + i);
            String unused = STSoundPlayManager.this.mSoundName = str;
            SoundMetaData soundMetaData = (SoundMetaData) STSoundPlayManager.this.mSoundMetaDataMap.get(str);
            if (soundMetaData == null || STSoundPlayManager.this.mMediaPlayer == null) {
                d.e(STSoundPlayManager.TAG, "onStartPlay, data: " + soundMetaData + ", mMediaPlayer: " + STSoundPlayManager.this.mMediaPlayer);
                return;
            }
            soundMetaData.loop = i;
            if (STSoundPlayManager.this.mMediaPlayer.isPlaying()) {
                STSoundPlayManager.this.mMediaPlayer.reset();
            }
            try {
                MediaPlayer access$000 = STSoundPlayManager.this.mMediaPlayer;
                access$000.setDataSource(STSoundPlayManager.this.mCachedPath + File.separator + str);
                STSoundPlayManager.this.mMediaPlayer.prepare();
            } catch (Exception e) {
                d.d(STSoundPlayManager.TAG, "onStartPlay err: " + e.toString(), e);
            }
            String unused2 = STSoundPlayManager.this.mCurrentPlaying = str;
            if (i == 0) {
                STSoundPlayManager.this.mMediaPlayer.setLooping(true);
            }
            if (!this.mbPause) {
                STSoundPlayManager.this.mMediaPlayer.start();
            }
        }

        public void onStopPlay(String str) {
            d.a(STSoundPlayManager.TAG, "onStopPlay, name:  " + str);
            STSoundPlayManager.this.clearSoundCache();
            if (STSoundPlayManager.this.mMediaPlayer != null) {
                STSoundPlayManager.this.mMediaPlayer.reset();
            }
        }

        public void setPauseState(boolean z) {
            this.mbPause = z;
        }
    }

    private static class SoundMetaData {
        String cachePath;
        int loop;
        String name;

        private SoundMetaData() {
        }
    }

    public STSoundPlayManager(Context context) {
        this.mContext = context.getApplicationContext();
        this.mCachedPath = this.mContext.getFilesDir().getAbsolutePath() + File.separator + CACHED_FOLDER;
        if (!new File(this.mCachedPath).exists()) {
            a.f(this.mCachedPath);
        }
        if (this.mPlayControlDefaultListener == null) {
            this.mPlayControlDefaultListener = new MyPlayControlListener();
        }
        if (STSoundPlay.getInstance() != null) {
            STSoundPlay.getInstance().setPlayControlListener(this.mPlayControlDefaultListener);
        }
        initMediaPlayer();
    }

    /* access modifiers changed from: private */
    public void clearSoundCache() {
        HashMap<String, SoundMetaData> hashMap = this.mSoundMetaDataMap;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.mSoundName = null;
    }

    private void initMediaPlayer() {
        this.mMediaPlayer = new MediaPlayer();
        this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
        this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
        this.mMediaPlayer.reset();
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0031, code lost:
        r4 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0032, code lost:
        r5 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0036, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0037, code lost:
        r2 = r5;
        r5 = r4;
        r4 = r2;
     */
    public String saveSoundToFile(String str, byte[] bArr) {
        Throwable th;
        Throwable th2;
        new File(this.mCachedPath);
        String str2 = r0.getPath() + File.separator + str;
        try {
            OutputStream a2 = a.a(str2, a.g);
            if (a2 != null) {
                a2.write(bArr);
                if (a2 != null) {
                    a2.close();
                }
                return str2;
            }
            if (a2 != null) {
                a2.close();
            }
            return null;
            if (a2 != null) {
                if (th != null) {
                    try {
                        a2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                } else {
                    a2.close();
                }
            }
            throw th2;
            throw th2;
        } catch (Exception e) {
            d.d(TAG, "saveSoundToFile, write file failed: " + e.toString(), e);
            return null;
        }
    }

    public void pauseSound() {
        d.a(TAG, "pauseSound");
        if (this.mSoundMetaDataMap.get(this.mSoundName) != null) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                this.mMediaPlayer.pause();
            }
        }
    }

    public void release() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                this.mMediaPlayer.reset();
            }
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    public void resumeSound() {
        d.a(TAG, "resumeSound");
        if (this.mSoundMetaDataMap.get(this.mSoundName) == null) {
            d.e(TAG, "No meta-data when Resume");
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
    }

    public void setPauseState(boolean z) {
        MyPlayControlListener myPlayControlListener = this.mPlayControlDefaultListener;
        if (myPlayControlListener != null) {
            myPlayControlListener.setPauseState(z);
        }
    }
}
