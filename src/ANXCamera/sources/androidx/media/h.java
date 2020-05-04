package androidx.media;

import android.text.TextUtils;
import androidx.core.f.c;
import androidx.media.e;

/* compiled from: MediaSessionManagerImplBase */
class h {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f795a = e.f791a;

    /* compiled from: MediaSessionManagerImplBase */
    static class a implements e.b {

        /* renamed from: a  reason: collision with root package name */
        private String f796a;

        /* renamed from: b  reason: collision with root package name */
        private int f797b;
        private int c;

        a(String str, int i, int i2) {
            this.f796a = str;
            this.f797b = i;
            this.c = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f796a, aVar.f796a) && this.f797b == aVar.f797b && this.c == aVar.c;
        }

        public int hashCode() {
            return c.a(this.f796a, Integer.valueOf(this.f797b), Integer.valueOf(this.c));
        }
    }
}
