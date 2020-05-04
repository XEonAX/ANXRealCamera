package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TaskStackBuilder */
public final class m implements Iterable<Intent> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Intent> f502a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final Context f503b;

    /* compiled from: TaskStackBuilder */
    public interface a {
        Intent i();
    }

    private m(Context context) {
        this.f503b = context;
    }

    public static m a(Context context) {
        return new m(context);
    }

    public m a(Activity activity) {
        Intent i = activity instanceof a ? ((a) activity).i() : null;
        if (i == null) {
            i = f.a(activity);
        }
        if (i != null) {
            ComponentName component = i.getComponent();
            if (component == null) {
                component = i.resolveActivity(this.f503b.getPackageManager());
            }
            a(component);
            a(i);
        }
        return this;
    }

    public m a(ComponentName componentName) {
        int size = this.f502a.size();
        try {
            Intent a2 = f.a(this.f503b, componentName);
            while (a2 != null) {
                this.f502a.add(size, a2);
                a2 = f.a(this.f503b, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public m a(Intent intent) {
        this.f502a.add(intent);
        return this;
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (!this.f502a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f502a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!androidx.core.a.a.a(this.f503b, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f503b.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f502a.iterator();
    }
}
