package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NotificationCompatBuilder */
class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final Notification.Builder f496a;

    /* renamed from: b  reason: collision with root package name */
    private final h.b f497b;
    private RemoteViews c;
    private RemoteViews d;
    private final List<Bundle> e = new ArrayList();
    private final Bundle f = new Bundle();
    private int g;
    private RemoteViews h;

    i(h.b bVar) {
        this.f497b = bVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f496a = new Notification.Builder(bVar.f494a, bVar.I);
        } else {
            this.f496a = new Notification.Builder(bVar.f494a);
        }
        Notification notification = bVar.N;
        this.f496a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, bVar.h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(bVar.d).setContentText(bVar.e).setContentInfo(bVar.j).setContentIntent(bVar.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(bVar.g, (notification.flags & 128) != 0).setLargeIcon(bVar.i).setNumber(bVar.k).setProgress(bVar.r, bVar.s, bVar.t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f496a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f496a.setSubText(bVar.p).setUsesChronometer(bVar.n).setPriority(bVar.l);
            Iterator<h.a> it = bVar.f495b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            if (bVar.B != null) {
                this.f.putAll(bVar.B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (bVar.x) {
                    this.f.putBoolean("android.support.localOnly", true);
                }
                if (bVar.u != null) {
                    this.f.putString("android.support.groupKey", bVar.u);
                    if (bVar.v) {
                        this.f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (bVar.w != null) {
                    this.f.putString("android.support.sortKey", bVar.w);
                }
            }
            this.c = bVar.F;
            this.d = bVar.G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f496a.setShowWhen(bVar.m);
            if (Build.VERSION.SDK_INT < 21 && bVar.O != null && !bVar.O.isEmpty()) {
                this.f.putStringArray("android.people", (String[]) bVar.O.toArray(new String[bVar.O.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f496a.setLocalOnly(bVar.x).setGroup(bVar.u).setGroupSummary(bVar.v).setSortKey(bVar.w);
            this.g = bVar.M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f496a.setCategory(bVar.A).setColor(bVar.C).setVisibility(bVar.D).setPublicVersion(bVar.E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = bVar.O.iterator();
            while (it2.hasNext()) {
                this.f496a.addPerson(it2.next());
            }
            this.h = bVar.H;
            if (bVar.c.size() > 0) {
                Bundle bundle = bVar.a().getBundle("android.car.EXTENSIONS");
                bundle = bundle == null ? new Bundle() : bundle;
                Bundle bundle2 = new Bundle();
                for (int i = 0; i < bVar.c.size(); i++) {
                    bundle2.putBundle(Integer.toString(i), j.a(bVar.c.get(i)));
                }
                bundle.putBundle("invisible_actions", bundle2);
                bVar.a().putBundle("android.car.EXTENSIONS", bundle);
                this.f.putBundle("android.car.EXTENSIONS", bundle);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f496a.setExtras(bVar.B).setRemoteInputHistory(bVar.q);
            if (bVar.F != null) {
                this.f496a.setCustomContentView(bVar.F);
            }
            if (bVar.G != null) {
                this.f496a.setCustomBigContentView(bVar.G);
            }
            if (bVar.H != null) {
                this.f496a.setCustomHeadsUpContentView(bVar.H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f496a.setBadgeIconType(bVar.J).setShortcutId(bVar.K).setTimeoutAfter(bVar.L).setGroupAlertBehavior(bVar.M);
            if (bVar.z) {
                this.f496a.setColorized(bVar.y);
            }
            if (!TextUtils.isEmpty(bVar.I)) {
                this.f496a.setSound((Uri) null).setDefaults(0).setLights(0, 0, 0).setVibrate((long[]) null);
            }
        }
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    private void a(h.a aVar) {
        if (Build.VERSION.SDK_INT >= 20) {
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.a(), aVar.b(), aVar.c());
            if (aVar.f() != null) {
                for (RemoteInput addRemoteInput : k.a(aVar.f())) {
                    builder.addRemoteInput(addRemoteInput);
                }
            }
            Bundle bundle = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.e());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.g());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.g());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.i());
            builder.addExtras(bundle);
            this.f496a.addAction(builder.build());
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.e.add(j.a(this.f496a, aVar));
        }
    }

    public Notification a() {
        h.c cVar = this.f497b.o;
        if (cVar != null) {
            cVar.a((g) this);
        }
        RemoteViews b2 = cVar != null ? cVar.b(this) : null;
        Notification b3 = b();
        if (b2 != null) {
            b3.contentView = b2;
        } else if (this.f497b.F != null) {
            b3.contentView = this.f497b.F;
        }
        if (Build.VERSION.SDK_INT >= 16 && cVar != null) {
            RemoteViews c2 = cVar.c(this);
            if (c2 != null) {
                b3.bigContentView = c2;
            }
        }
        if (Build.VERSION.SDK_INT >= 21 && cVar != null) {
            RemoteViews d2 = this.f497b.o.d(this);
            if (d2 != null) {
                b3.headsUpContentView = d2;
            }
        }
        if (Build.VERSION.SDK_INT >= 16 && cVar != null) {
            Bundle a2 = h.a(b3);
            if (a2 != null) {
                cVar.a(a2);
            }
        }
        return b3;
    }

    /* access modifiers changed from: protected */
    public Notification b() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f496a.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.f496a.build();
            if (this.g != 0) {
                if (!(build.getGroup() == null || (build.flags & 512) == 0 || this.g != 2)) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.g == 1) {
                    a(build);
                }
            }
            return build;
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f496a.setExtras(this.f);
            Notification build2 = this.f496a.build();
            RemoteViews remoteViews = this.c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.g != 0) {
                if (!(build2.getGroup() == null || (build2.flags & 512) == 0 || this.g != 2)) {
                    a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.g == 1) {
                    a(build2);
                }
            }
            return build2;
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f496a.setExtras(this.f);
            Notification build3 = this.f496a.build();
            RemoteViews remoteViews4 = this.c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.g != 0) {
                if (!(build3.getGroup() == null || (build3.flags & 512) == 0 || this.g != 2)) {
                    a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.g == 1) {
                    a(build3);
                }
            }
            return build3;
        } else if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> a2 = j.a(this.e);
            if (a2 != null) {
                this.f.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.f496a.setExtras(this.f);
            Notification build4 = this.f496a.build();
            RemoteViews remoteViews6 = this.c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (Build.VERSION.SDK_INT < 16) {
            return this.f496a.getNotification();
        } else {
            Notification build5 = this.f496a.build();
            Bundle a3 = h.a(build5);
            Bundle bundle = new Bundle(this.f);
            for (String str : this.f.keySet()) {
                if (a3.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a3.putAll(bundle);
            SparseArray<Bundle> a4 = j.a(this.e);
            if (a4 != null) {
                h.a(build5).putSparseParcelableArray("android.support.actionExtras", a4);
            }
            RemoteViews remoteViews8 = this.c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }
}
