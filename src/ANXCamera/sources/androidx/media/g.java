package androidx.media;

import android.media.session.MediaSessionManager;
import androidx.core.f.c;
import androidx.media.e;

/* compiled from: MediaSessionManagerImplApi28 */
class g extends f {

    /* compiled from: MediaSessionManagerImplApi28 */
    static final class a implements e.b {

        /* renamed from: a  reason: collision with root package name */
        final MediaSessionManager.RemoteUserInfo f794a;

        a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f794a = remoteUserInfo;
        }

        a(String str, int i, int i2) {
            this.f794a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            return this.f794a.equals(((a) obj).f794a);
        }

        public int hashCode() {
            return c.a(this.f794a);
        }
    }
}
