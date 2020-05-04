package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

/* compiled from: NotificationCompat */
public class h {

    /* compiled from: NotificationCompat */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Bundle f492a;

        /* renamed from: b  reason: collision with root package name */
        boolean f493b;
        public int c;
        public CharSequence d;
        public PendingIntent e;
        private final k[] f;
        private final k[] g;
        private boolean h;
        private final int i;

        public int a() {
            return this.c;
        }

        public CharSequence b() {
            return this.d;
        }

        public PendingIntent c() {
            return this.e;
        }

        public Bundle d() {
            return this.f492a;
        }

        public boolean e() {
            return this.h;
        }

        public k[] f() {
            return this.f;
        }

        public int g() {
            return this.i;
        }

        public k[] h() {
            return this.g;
        }

        public boolean i() {
            return this.f493b;
        }
    }

    /* compiled from: NotificationCompat */
    public static class b {
        String A;
        Bundle B;
        int C = 0;
        int D = 0;
        Notification E;
        RemoteViews F;
        RemoteViews G;
        RemoteViews H;
        String I;
        int J = 0;
        String K;
        long L;
        int M = 0;
        Notification N = new Notification();
        @Deprecated
        public ArrayList<String> O;

        /* renamed from: a  reason: collision with root package name */
        public Context f494a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<a> f495b = new ArrayList<>();
        ArrayList<a> c = new ArrayList<>();
        CharSequence d;
        CharSequence e;
        PendingIntent f;
        PendingIntent g;
        RemoteViews h;
        Bitmap i;
        CharSequence j;
        int k;
        int l;
        boolean m = true;
        boolean n;
        c o;
        CharSequence p;
        CharSequence[] q;
        int r;
        int s;
        boolean t;
        String u;
        boolean v;
        String w;
        boolean x = false;
        boolean y;
        boolean z;

        public b(Context context, String str) {
            this.f494a = context;
            this.I = str;
            this.N.when = System.currentTimeMillis();
            this.N.audioStreamType = -1;
            this.l = 0;
            this.O = new ArrayList<>();
        }

        private void a(int i2, boolean z2) {
            if (z2) {
                Notification notification = this.N;
                notification.flags = i2 | notification.flags;
                return;
            }
            Notification notification2 = this.N;
            notification2.flags = (~i2) & notification2.flags;
        }

        public Bundle a() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        public b a(int i2) {
            this.l = i2;
            return this;
        }

        public b a(String str) {
            this.A = str;
            return this;
        }

        public b a(boolean z2) {
            a(2, z2);
            return this;
        }

        public Notification b() {
            return new i(this).a();
        }
    }

    /* compiled from: NotificationCompat */
    public static abstract class c {
        public void a(Bundle bundle) {
        }

        public void a(g gVar) {
        }

        public RemoteViews b(g gVar) {
            return null;
        }

        public RemoteViews c(g gVar) {
            return null;
        }

        public RemoteViews d(g gVar) {
            return null;
        }
    }

    public static Bundle a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return j.a(notification);
        }
        return null;
    }
}
