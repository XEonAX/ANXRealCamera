package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

@TargetApi(21)
/* compiled from: AudioAttributesImplApi21 */
class b implements a {

    /* renamed from: a  reason: collision with root package name */
    AudioAttributes f787a;

    /* renamed from: b  reason: collision with root package name */
    int f788b = -1;

    b() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f787a.equals(((b) obj).f787a);
    }

    public int hashCode() {
        return this.f787a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f787a;
    }
}
