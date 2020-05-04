package androidx.loader.b;

import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: Loader */
public class a<D> {

    /* renamed from: a  reason: collision with root package name */
    int f781a;

    /* renamed from: b  reason: collision with root package name */
    C0028a<D> f782b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;

    /* renamed from: androidx.loader.b.a$a  reason: collision with other inner class name */
    /* compiled from: Loader */
    public interface C0028a<D> {
    }

    public String a(D d2) {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.f.a.a(d2, sb);
        sb.append("}");
        return sb.toString();
    }

    public final void a() {
        this.c = true;
        this.e = false;
        this.d = false;
        b();
    }

    public void a(C0028a<D> aVar) {
        C0028a<D> aVar2 = this.f782b;
        if (aVar2 == null) {
            throw new IllegalStateException("No listener register");
        } else if (aVar2 == aVar) {
            this.f782b = null;
        } else {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f781a);
        printWriter.print(" mListener=");
        printWriter.println(this.f782b);
        if (this.c || this.f || this.g) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.c);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.g);
        }
        if (this.d || this.e) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.d);
            printWriter.print(" mReset=");
            printWriter.println(this.e);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    public boolean c() {
        return d();
    }

    /* access modifiers changed from: protected */
    public boolean d() {
        return false;
    }

    public void e() {
        this.c = false;
        f();
    }

    /* access modifiers changed from: protected */
    public void f() {
    }

    public void g() {
        this.d = true;
        h();
    }

    /* access modifiers changed from: protected */
    public void h() {
    }

    public void i() {
        j();
        this.e = true;
        this.c = false;
        this.d = false;
        this.f = false;
        this.g = false;
    }

    /* access modifiers changed from: protected */
    public void j() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.f.a.a(this, sb);
        sb.append(" id=");
        sb.append(this.f781a);
        sb.append("}");
        return sb.toString();
    }
}
