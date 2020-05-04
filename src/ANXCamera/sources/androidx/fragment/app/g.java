package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.f.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentHostCallback */
public abstract class g<E> extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f685a;

    /* renamed from: b  reason: collision with root package name */
    final i f686b;
    private final Context c;
    private final Handler d;
    private final int e;

    g(Activity activity, Context context, Handler handler, int i) {
        this.f686b = new i();
        this.f685a = activity;
        this.c = (Context) e.a(context, "context == null");
        this.d = (Handler) e.a(handler, "handler == null");
        this.e = i;
    }

    g(c cVar) {
        this(cVar, cVar, new Handler(), 0);
    }

    public View a(int i) {
        return null;
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            this.c.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean a() {
        return true;
    }

    public boolean a(Fragment fragment) {
        return true;
    }

    /* access modifiers changed from: package-private */
    public void b(Fragment fragment) {
    }

    public LayoutInflater e() {
        return LayoutInflater.from(this.c);
    }

    public void g() {
    }

    public boolean h() {
        return true;
    }

    public int i() {
        return this.e;
    }

    public abstract E j();

    /* access modifiers changed from: package-private */
    public Activity k() {
        return this.f685a;
    }

    /* access modifiers changed from: package-private */
    public Context l() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public Handler m() {
        return this.d;
    }
}
