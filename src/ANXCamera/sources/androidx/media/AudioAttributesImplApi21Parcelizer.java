package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.versionedparcelable.a;

public final class AudioAttributesImplApi21Parcelizer {
    public static b read(a aVar) {
        b bVar = new b();
        bVar.f787a = (AudioAttributes) aVar.b(bVar.f787a, 1);
        bVar.f788b = aVar.b(bVar.f788b, 2);
        return bVar;
    }

    public static void write(b bVar, a aVar) {
        aVar.a(false, false);
        aVar.a((Parcelable) bVar.f787a, 1);
        aVar.a(bVar.f788b, 2);
    }
}
