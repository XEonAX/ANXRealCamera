package androidx.core.f;

import android.util.Log;
import java.io.Writer;

/* compiled from: LogWriter */
public class b extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final String f534a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f535b = new StringBuilder(128);

    public b(String str) {
        this.f534a = str;
    }

    private void a() {
        if (this.f535b.length() > 0) {
            Log.d(this.f534a, this.f535b.toString());
            StringBuilder sb = this.f535b;
            sb.delete(0, sb.length());
        }
    }

    public void close() {
        a();
    }

    public void flush() {
        a();
    }

    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == 10) {
                a();
            } else {
                this.f535b.append(c);
            }
        }
    }
}
