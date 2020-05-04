package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.i;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.aa;
import androidx.appcompat.widget.ae;
import androidx.appcompat.widget.au;
import androidx.appcompat.widget.az;
import androidx.appcompat.widget.ba;
import androidx.core.g.ac;
import androidx.core.g.d;
import androidx.core.g.q;
import androidx.core.g.u;
import androidx.core.g.y;
import androidx.core.g.z;
import androidx.lifecycle.e;
import java.lang.Thread;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

class AppCompatDelegateImpl extends e implements LayoutInflater.Factory2, g.a {
    private static final Map<Class<?>, Integer> t = new androidx.b.a();
    private static final boolean u = (Build.VERSION.SDK_INT < 21);
    private static final int[] v = {16842836};
    private static boolean w = true;
    private static final boolean x;
    private aa A;
    private a B;
    private h C;
    private boolean D;
    private boolean E;
    private ViewGroup F;
    private TextView G;
    private View H;
    private boolean I;
    private boolean J;
    private boolean K;
    private PanelFeatureState[] L;
    private PanelFeatureState M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private int R;
    private int S;
    private boolean T;
    private boolean U;
    private e V;
    private e W;
    private final Runnable X;
    private boolean Y;
    private Rect Z;

    /* renamed from: a  reason: collision with root package name */
    final Object f61a;
    private Rect aa;
    private AppCompatViewInflater ab;

    /* renamed from: b  reason: collision with root package name */
    final Context f62b;
    Window c;
    final d d;
    a e;
    MenuInflater f;
    androidx.appcompat.view.b g;
    ActionBarContextView h;
    PopupWindow i;
    Runnable j;
    y k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    int s;
    private c y;
    private CharSequence z;

    protected static final class PanelFeatureState {

        /* renamed from: a  reason: collision with root package name */
        int f71a;

        /* renamed from: b  reason: collision with root package name */
        int f72b;
        int c;
        int d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        androidx.appcompat.view.menu.g j;
        androidx.appcompat.view.menu.e k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, (ClassLoader) null);
                }

                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                /* renamed from: a */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int featureId;
            boolean isOpen;
            Bundle menuState;

            SavedState() {
            }

            static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.isOpen = z;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            public int describeContents() {
                return 0;
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        PanelFeatureState(int i2) {
            this.f71a = i2;
        }

        /* access modifiers changed from: package-private */
        public n a(m.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                this.k = new androidx.appcompat.view.menu.e(this.l, R.layout.abc_list_menu_item_layout);
                this.k.a(aVar);
                this.j.a((m) this.k);
            }
            return this.k.a(this.g);
        }

        /* access modifiers changed from: package-private */
        public void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.f72b = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.f = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* access modifiers changed from: package-private */
        public void a(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.g gVar2 = this.j;
            if (gVar != gVar2) {
                if (gVar2 != null) {
                    gVar2.b((m) this.k);
                }
                this.j = gVar;
                if (gVar != null) {
                    androidx.appcompat.view.menu.e eVar = this.k;
                    if (eVar != null) {
                        gVar.a((m) eVar);
                    }
                }
            }
        }

        public boolean a() {
            if (this.h == null) {
                return false;
            }
            if (this.i != null) {
                return true;
            }
            return this.k.a().getCount() > 0;
        }
    }

    private final class a implements m.a {
        a() {
        }

        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            AppCompatDelegateImpl.this.b(gVar);
        }

        public boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback l = AppCompatDelegateImpl.this.l();
            if (l == null) {
                return true;
            }
            l.onMenuOpened(108, gVar);
            return true;
        }
    }

    class b implements b.a {

        /* renamed from: b  reason: collision with root package name */
        private b.a f75b;

        public b(b.a aVar) {
            this.f75b = aVar;
        }

        public void a(androidx.appcompat.view.b bVar) {
            this.f75b.a(bVar);
            if (AppCompatDelegateImpl.this.i != null) {
                AppCompatDelegateImpl.this.c.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.j);
            }
            if (AppCompatDelegateImpl.this.h != null) {
                AppCompatDelegateImpl.this.q();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.k = u.k(appCompatDelegateImpl.h).a(0.0f);
                AppCompatDelegateImpl.this.k.a((z) new androidx.core.g.aa() {
                    public void b(View view) {
                        AppCompatDelegateImpl.this.h.setVisibility(8);
                        if (AppCompatDelegateImpl.this.i != null) {
                            AppCompatDelegateImpl.this.i.dismiss();
                        } else if (AppCompatDelegateImpl.this.h.getParent() instanceof View) {
                            u.p((View) AppCompatDelegateImpl.this.h.getParent());
                        }
                        AppCompatDelegateImpl.this.h.removeAllViews();
                        AppCompatDelegateImpl.this.k.a((z) null);
                        AppCompatDelegateImpl.this.k = null;
                    }
                });
            }
            if (AppCompatDelegateImpl.this.d != null) {
                AppCompatDelegateImpl.this.d.b(AppCompatDelegateImpl.this.g);
            }
            AppCompatDelegateImpl.this.g = null;
        }

        public boolean a(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f75b.a(bVar, menu);
        }

        public boolean a(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f75b.a(bVar, menuItem);
        }

        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f75b.b(bVar, menu);
        }
    }

    class c extends i {
        c(Window.Callback callback) {
            super(callback);
        }

        /* access modifiers changed from: package-private */
        public final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(AppCompatDelegateImpl.this.f62b, callback);
            androidx.appcompat.view.b a2 = AppCompatDelegateImpl.this.a((b.a) aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        public void onContentChanged() {
        }

        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.f(i);
            return true;
        }

        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.e(i);
        }

        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.c(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.c(false);
            }
            return onPreparePanel;
        }

        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            PanelFeatureState a2 = AppCompatDelegateImpl.this.a(0, true);
            if (a2 == null || a2.j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, a2.j, i);
            }
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.p() ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.p() || i != 0) ? super.onWindowStartingActionMode(callback, i) : a(callback);
        }
    }

    private class d extends e {
        private final PowerManager c;

        d(Context context) {
            super();
            this.c = (PowerManager) context.getSystemService("power");
        }

        public int a() {
            return (Build.VERSION.SDK_INT < 21 || !this.c.isPowerSaveMode()) ? 1 : 2;
        }

        public void b() {
            AppCompatDelegateImpl.this.t();
        }

        /* access modifiers changed from: package-private */
        public IntentFilter c() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }
    }

    abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private BroadcastReceiver f79a;

        e() {
        }

        /* access modifiers changed from: package-private */
        public abstract int a();

        /* access modifiers changed from: package-private */
        public abstract void b();

        /* access modifiers changed from: package-private */
        public abstract IntentFilter c();

        /* access modifiers changed from: package-private */
        public void d() {
            e();
            IntentFilter c = c();
            if (c != null && c.countActions() != 0) {
                if (this.f79a == null) {
                    this.f79a = new BroadcastReceiver() {
                        public void onReceive(Context context, Intent intent) {
                            e.this.b();
                        }
                    };
                }
                AppCompatDelegateImpl.this.f62b.registerReceiver(this.f79a, c);
            }
        }

        /* access modifiers changed from: package-private */
        public void e() {
            if (this.f79a != null) {
                try {
                    AppCompatDelegateImpl.this.f62b.unregisterReceiver(this.f79a);
                } catch (IllegalArgumentException unused) {
                }
                this.f79a = null;
            }
        }
    }

    private class f extends e {
        private final j c;

        f(j jVar) {
            super();
            this.c = jVar;
        }

        public int a() {
            return this.c.a() ? 2 : 1;
        }

        public void b() {
            AppCompatDelegateImpl.this.t();
        }

        /* access modifiers changed from: package-private */
        public IntentFilter c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    private class g extends ContentFrameLayout {
        public g(Context context) {
            super(context);
        }

        private boolean a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.g(0);
            return true;
        }

        public void setBackgroundResource(int i) {
            setBackgroundDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
        }
    }

    private final class h implements m.a {
        h() {
        }

        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g q = gVar.q();
            boolean z2 = q != gVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                gVar = q;
            }
            PanelFeatureState a2 = appCompatDelegateImpl.a((Menu) gVar);
            if (a2 == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.a(a2.f71a, a2, q);
                AppCompatDelegateImpl.this.a(a2, true);
                return;
            }
            AppCompatDelegateImpl.this.a(a2, z);
        }

        public boolean a(androidx.appcompat.view.menu.g gVar) {
            if (gVar != null || !AppCompatDelegateImpl.this.l) {
                return true;
            }
            Window.Callback l = AppCompatDelegateImpl.this.l();
            if (l == null || AppCompatDelegateImpl.this.q) {
                return true;
            }
            l.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT <= 25) {
            z2 = true;
        }
        x = z2;
        if (u && !w) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                private boolean a(Throwable th) {
                    if (!(th instanceof Resources.NotFoundException)) {
                        return false;
                    }
                    String message = th.getMessage();
                    if (message != null) {
                        return message.contains("drawable") || message.contains("Drawable");
                    }
                    return false;
                }

                public void uncaughtException(Thread thread, Throwable th) {
                    if (a(th)) {
                        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                        notFoundException.initCause(th.getCause());
                        notFoundException.setStackTrace(th.getStackTrace());
                        defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                        return;
                    }
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }
            });
        }
    }

    AppCompatDelegateImpl(Activity activity, d dVar) {
        this(activity, (Window) null, dVar, activity);
    }

    AppCompatDelegateImpl(Dialog dialog, d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, d dVar, Object obj) {
        this.k = null;
        this.D = true;
        this.R = -100;
        this.X = new Runnable() {
            public void run() {
                if ((AppCompatDelegateImpl.this.s & 1) != 0) {
                    AppCompatDelegateImpl.this.h(0);
                }
                if ((AppCompatDelegateImpl.this.s & 4096) != 0) {
                    AppCompatDelegateImpl.this.h(108);
                }
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.r = false;
                appCompatDelegateImpl.s = 0;
            }
        };
        this.f62b = context;
        this.d = dVar;
        this.f61a = obj;
        if (this.R == -100 && (this.f61a instanceof Dialog)) {
            c B2 = B();
            if (B2 != null) {
                this.R = B2.k().i();
            }
        }
        if (this.R == -100) {
            Integer num = t.get(this.f61a.getClass());
            if (num != null) {
                this.R = num.intValue();
                t.remove(this.f61a.getClass());
            }
        }
        if (window != null) {
            a(window);
        }
        androidx.appcompat.widget.i.a();
    }

    private void A() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.F.findViewById(16908290);
        View decorView = this.c.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f62b.obtainStyledAttributes(R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private c B() {
        Context context = this.f62b;
        while (context != null) {
            if (!(context instanceof c)) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return (c) context;
            }
        }
        return null;
    }

    private void C() {
        if (this.E) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int D() {
        int i2 = this.R;
        return i2 != -100 ? i2 : j();
    }

    private e E() {
        if (this.W == null) {
            this.W = new d(this.f62b);
        }
        return this.W;
    }

    private boolean F() {
        if (!this.U && (this.f61a instanceof Activity)) {
            PackageManager packageManager = this.f62b.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f62b, this.f61a.getClass()), 0);
                this.T = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                this.T = false;
            }
        }
        this.U = true;
        return this.T;
    }

    private void a(Window window) {
        if (this.c == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof c)) {
                this.y = new c(callback);
                window.setCallback(this.y);
                au a2 = au.a(this.f62b, (AttributeSet) null, v);
                Drawable b2 = a2.b(0);
                if (b2 != null) {
                    window.setBackgroundDrawable(b2);
                }
                a2.b();
                this.c = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    private void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        if (!panelFeatureState.o && !this.q) {
            if (panelFeatureState.f71a == 0) {
                if ((this.f62b.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback l2 = l();
            if (l2 == null || l2.onMenuOpened(panelFeatureState.f71a, panelFeatureState.j)) {
                WindowManager windowManager = (WindowManager) this.f62b.getSystemService("window");
                if (windowManager != null && b(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.g == null || panelFeatureState.q) {
                        if (panelFeatureState.g == null) {
                            if (!a(panelFeatureState) || panelFeatureState.g == null) {
                                return;
                            }
                        } else if (panelFeatureState.q && panelFeatureState.g.getChildCount() > 0) {
                            panelFeatureState.g.removeAllViews();
                        }
                        if (c(panelFeatureState) && panelFeatureState.a()) {
                            ViewGroup.LayoutParams layoutParams = panelFeatureState.h.getLayoutParams();
                            if (layoutParams == null) {
                                layoutParams = new ViewGroup.LayoutParams(-2, -2);
                            }
                            panelFeatureState.g.setBackgroundResource(panelFeatureState.f72b);
                            ViewParent parent = panelFeatureState.h.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(panelFeatureState.h);
                            }
                            panelFeatureState.g.addView(panelFeatureState.h, layoutParams);
                            if (!panelFeatureState.h.hasFocus()) {
                                panelFeatureState.h.requestFocus();
                            }
                        } else {
                            return;
                        }
                    } else if (panelFeatureState.i != null) {
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.i.getLayoutParams();
                        if (layoutParams2 != null && layoutParams2.width == -1) {
                            i2 = -1;
                            panelFeatureState.n = false;
                            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.d, panelFeatureState.e, 1002, 8519680, -3);
                            layoutParams3.gravity = panelFeatureState.c;
                            layoutParams3.windowAnimations = panelFeatureState.f;
                            windowManager.addView(panelFeatureState.g, layoutParams3);
                            panelFeatureState.o = true;
                            return;
                        }
                    }
                    i2 = -2;
                    panelFeatureState.n = false;
                    WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.d, panelFeatureState.e, 1002, 8519680, -3);
                    layoutParams32.gravity = panelFeatureState.c;
                    layoutParams32.windowAnimations = panelFeatureState.f;
                    windowManager.addView(panelFeatureState.g, layoutParams32);
                    panelFeatureState.o = true;
                    return;
                }
                return;
            }
            a(panelFeatureState, true);
        }
    }

    private void a(androidx.appcompat.view.menu.g gVar, boolean z2) {
        aa aaVar = this.A;
        if (aaVar == null || !aaVar.e() || (ViewConfiguration.get(this.f62b).hasPermanentMenuKey() && !this.A.g())) {
            PanelFeatureState a2 = a(0, true);
            a2.q = true;
            a(a2, false);
            a(a2, (KeyEvent) null);
            return;
        }
        Window.Callback l2 = l();
        if (this.A.f() && z2) {
            this.A.i();
            if (!this.q) {
                l2.onPanelClosed(108, a(0, true).j);
            }
        } else if (l2 != null && !this.q) {
            if (this.r && (this.s & 1) != 0) {
                this.c.getDecorView().removeCallbacks(this.X);
                this.X.run();
            }
            PanelFeatureState a3 = a(0, true);
            if (a3.j != null && !a3.r && l2.onPreparePanel(0, a3.i, a3.j)) {
                l2.onMenuOpened(108, a3.j);
                this.A.h();
            }
        }
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || u.w((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private boolean a(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(m());
        panelFeatureState.g = new g(panelFeatureState.l);
        panelFeatureState.c = 81;
        return true;
    }

    private boolean a(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        boolean z2 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.m || b(panelFeatureState, keyEvent)) && panelFeatureState.j != null) {
            z2 = panelFeatureState.j.performShortcut(i2, keyEvent, i3);
        }
        if (z2 && (i3 & 1) == 0 && this.A == null) {
            a(panelFeatureState, true);
        }
        return z2;
    }

    private boolean a(boolean z2) {
        if (this.q) {
            return false;
        }
        int D2 = D();
        boolean b2 = b(j(D2), z2);
        if (D2 == 0) {
            u().d();
        } else {
            e eVar = this.V;
            if (eVar != null) {
                eVar.e();
            }
        }
        if (D2 == 3) {
            E().d();
        } else {
            e eVar2 = this.W;
            if (eVar2 != null) {
                eVar2.e();
            }
        }
        return b2;
    }

    private boolean b(int i2, boolean z2) {
        int i3 = this.f62b.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        boolean z3 = true;
        int i4 = i2 != 1 ? i2 != 2 ? i3 : 32 : 16;
        boolean F2 = F();
        boolean z4 = false;
        if ((x || i4 != i3) && !F2 && Build.VERSION.SDK_INT >= 17 && !this.O && (this.f61a instanceof ContextThemeWrapper)) {
            Configuration configuration = new Configuration();
            configuration.uiMode = (configuration.uiMode & -49) | i4;
            try {
                ((ContextThemeWrapper) this.f61a).applyOverrideConfiguration(configuration);
                z4 = true;
            } catch (IllegalStateException e2) {
                Log.e("AppCompatDelegate", "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()", e2);
            }
        }
        int i5 = this.f62b.getResources().getConfiguration().uiMode & 48;
        if (!z4 && i5 != i4 && z2 && !F2 && this.O && (Build.VERSION.SDK_INT >= 17 || this.P)) {
            Object obj = this.f61a;
            if (obj instanceof Activity) {
                androidx.core.app.a.b((Activity) obj);
                z4 = true;
            }
        }
        if (z4 || i5 == i4) {
            z3 = z4;
        } else {
            c(i4, F2);
        }
        if (z3) {
            Object obj2 = this.f61a;
            if (obj2 instanceof c) {
                ((c) obj2).a(i2);
            }
        }
        return z3;
    }

    private boolean b(PanelFeatureState panelFeatureState) {
        Context context = this.f62b;
        if ((panelFeatureState.f71a == 0 || panelFeatureState.f71a == 108) && this.A != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(theme2);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.a((g.a) this);
        panelFeatureState.a(gVar);
        return true;
    }

    private boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (this.q) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.M;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            a(panelFeatureState2, false);
        }
        Window.Callback l2 = l();
        if (l2 != null) {
            panelFeatureState.i = l2.onCreatePanelView(panelFeatureState.f71a);
        }
        boolean z2 = panelFeatureState.f71a == 0 || panelFeatureState.f71a == 108;
        if (z2) {
            aa aaVar = this.A;
            if (aaVar != null) {
                aaVar.j();
            }
        }
        if (panelFeatureState.i == null && (!z2 || !(k() instanceof h))) {
            if (panelFeatureState.j == null || panelFeatureState.r) {
                if (panelFeatureState.j == null && (!b(panelFeatureState) || panelFeatureState.j == null)) {
                    return false;
                }
                if (z2 && this.A != null) {
                    if (this.B == null) {
                        this.B = new a();
                    }
                    this.A.a(panelFeatureState.j, this.B);
                }
                panelFeatureState.j.h();
                if (!l2.onCreatePanelMenu(panelFeatureState.f71a, panelFeatureState.j)) {
                    panelFeatureState.a((androidx.appcompat.view.menu.g) null);
                    if (z2) {
                        aa aaVar2 = this.A;
                        if (aaVar2 != null) {
                            aaVar2.a((Menu) null, this.B);
                        }
                    }
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.j.h();
            if (panelFeatureState.s != null) {
                panelFeatureState.j.d(panelFeatureState.s);
                panelFeatureState.s = null;
            }
            if (!l2.onPreparePanel(0, panelFeatureState.i, panelFeatureState.j)) {
                if (z2) {
                    aa aaVar3 = this.A;
                    if (aaVar3 != null) {
                        aaVar3.a((Menu) null, this.B);
                    }
                }
                panelFeatureState.j.i();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.j.i();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.M = panelFeatureState;
        return true;
    }

    private void c(int i2, boolean z2) {
        Resources resources = this.f62b.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i2 | (resources.getConfiguration().uiMode & -49);
        resources.updateConfiguration(configuration, (DisplayMetrics) null);
        if (Build.VERSION.SDK_INT < 26) {
            g.a(resources);
        }
        int i3 = this.S;
        if (i3 != 0) {
            this.f62b.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f62b.getTheme().applyStyle(this.S, true);
            }
        }
        if (z2) {
            Object obj = this.f61a;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof androidx.lifecycle.h) {
                    if (((androidx.lifecycle.h) activity).b().a().isAtLeast(e.b.STARTED)) {
                        activity.onConfigurationChanged(configuration);
                    }
                } else if (this.Q) {
                    activity.onConfigurationChanged(configuration);
                }
            }
        }
    }

    private boolean c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.i != null) {
            panelFeatureState.h = panelFeatureState.i;
            return true;
        } else if (panelFeatureState.j == null) {
            return false;
        } else {
            if (this.C == null) {
                this.C = new h();
            }
            panelFeatureState.h = (View) panelFeatureState.a((m.a) this.C);
            return panelFeatureState.h != null;
        }
    }

    private boolean d(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState a2 = a(i2, true);
        if (!a2.o) {
            return b(a2, keyEvent);
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x006c  */
    private boolean e(int i2, KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        if (this.g != null) {
            return false;
        }
        PanelFeatureState a2 = a(i2, true);
        if (i2 == 0) {
            aa aaVar = this.A;
            if (aaVar != null && aaVar.e() && !ViewConfiguration.get(this.f62b).hasPermanentMenuKey()) {
                if (!this.A.f()) {
                    if (!this.q && b(a2, keyEvent)) {
                        z2 = this.A.h();
                    }
                    z2 = false;
                } else {
                    z2 = this.A.i();
                }
                if (z2) {
                    AudioManager audioManager = (AudioManager) this.f62b.getSystemService("audio");
                    if (audioManager != null) {
                        audioManager.playSoundEffect(0);
                    } else {
                        Log.w("AppCompatDelegate", "Couldn't get audio manager");
                    }
                }
                return z2;
            }
        }
        if (a2.o || a2.n) {
            z2 = a2.o;
            a(a2, true);
            if (z2) {
            }
            return z2;
        }
        if (a2.m) {
            if (a2.r) {
                a2.m = false;
                z3 = b(a2, keyEvent);
            } else {
                z3 = true;
            }
            if (z3) {
                a(a2, keyEvent);
                z2 = true;
                if (z2) {
                }
                return z2;
            }
        }
        z2 = false;
        if (z2) {
        }
        return z2;
    }

    private void k(int i2) {
        this.s = (1 << i2) | this.s;
        if (!this.r) {
            u.a(this.c.getDecorView(), this.X);
            this.r = true;
        }
    }

    private int l(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        } else if (i2 != 9) {
            return i2;
        } else {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            return 109;
        }
    }

    private void v() {
        y();
        if (this.l && this.e == null) {
            Object obj = this.f61a;
            if (obj instanceof Activity) {
                this.e = new k((Activity) obj, this.m);
            } else if (obj instanceof Dialog) {
                this.e = new k((Dialog) obj);
            }
            a aVar = this.e;
            if (aVar != null) {
                aVar.d(this.Y);
            }
        }
    }

    private void w() {
        e eVar = this.V;
        if (eVar != null) {
            eVar.e();
        }
        e eVar2 = this.W;
        if (eVar2 != null) {
            eVar2.e();
        }
    }

    private void x() {
        if (this.c == null) {
            Object obj = this.f61a;
            if (obj instanceof Activity) {
                a(((Activity) obj).getWindow());
            }
        }
        if (this.c == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private void y() {
        if (!this.E) {
            this.F = z();
            CharSequence n2 = n();
            if (!TextUtils.isEmpty(n2)) {
                aa aaVar = this.A;
                if (aaVar != null) {
                    aaVar.setWindowTitle(n2);
                } else if (k() != null) {
                    k().a(n2);
                } else {
                    TextView textView = this.G;
                    if (textView != null) {
                        textView.setText(n2);
                    }
                }
            }
            A();
            a(this.F);
            this.E = true;
            PanelFeatureState a2 = a(0, false);
            if (this.q) {
                return;
            }
            if (a2 == null || a2.j == null) {
                k(108);
            }
        }
    }

    private ViewGroup z() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f62b.obtainStyledAttributes(R.styleable.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
                d(1);
            } else if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
                d(108);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                d(109);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                d(10);
            }
            this.o = obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            x();
            this.c.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f62b);
            if (this.p) {
                viewGroup = this.n ? (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
                if (Build.VERSION.SDK_INT >= 21) {
                    u.a((View) viewGroup, (q) new q() {
                        public ac a(View view, ac acVar) {
                            int b2 = acVar.b();
                            int i = AppCompatDelegateImpl.this.i(b2);
                            if (b2 != i) {
                                acVar = acVar.a(acVar.a(), i, acVar.c(), acVar.d());
                            }
                            return u.a(view, acVar);
                        }
                    });
                } else {
                    ((ae) viewGroup).setOnFitSystemWindowsListener(new ae.a() {
                        public void a(Rect rect) {
                            rect.top = AppCompatDelegateImpl.this.i(rect.top);
                        }
                    });
                }
            } else if (this.o) {
                viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.m = false;
                this.l = false;
            } else if (this.l) {
                TypedValue typedValue = new TypedValue();
                this.f62b.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.f62b, typedValue.resourceId) : this.f62b).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
                this.A = (aa) viewGroup.findViewById(R.id.decor_content_parent);
                this.A.setWindowCallback(l());
                if (this.m) {
                    this.A.a(109);
                }
                if (this.I) {
                    this.A.a(2);
                }
                if (this.J) {
                    this.A.a(5);
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (this.A == null) {
                    this.G = (TextView) viewGroup.findViewById(R.id.title);
                }
                ba.b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
                ViewGroup viewGroup2 = (ViewGroup) this.c.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground((Drawable) null);
                    }
                }
                this.c.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new ContentFrameLayout.a() {
                    public void a() {
                    }

                    public void b() {
                        AppCompatDelegateImpl.this.s();
                    }
                });
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.l + ", windowActionBarOverlay: " + this.m + ", android:windowIsFloating: " + this.o + ", windowActionModeOverlay: " + this.n + ", windowNoTitle: " + this.p + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z2 = false;
        if (this.ab == null) {
            String string = this.f62b.obtainStyledAttributes(R.styleable.AppCompatTheme).getString(R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.ab = new AppCompatViewInflater();
            } else {
                try {
                    this.ab = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.ab = new AppCompatViewInflater();
                }
            }
        }
        if (u) {
            if (!(attributeSet instanceof XmlPullParser)) {
                z2 = a((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                z2 = true;
            }
        }
        return this.ab.a(view, str, context, attributeSet, z2, u, true, az.a());
    }

    /* access modifiers changed from: protected */
    public PanelFeatureState a(int i2, boolean z2) {
        PanelFeatureState[] panelFeatureStateArr = this.L;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[(i2 + 1)];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.L = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    /* access modifiers changed from: package-private */
    public PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.L;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    public a a() {
        v();
        return this.e;
    }

    public androidx.appcompat.view.b a(b.a aVar) {
        if (aVar != null) {
            androidx.appcompat.view.b bVar = this.g;
            if (bVar != null) {
                bVar.c();
            }
            b bVar2 = new b(aVar);
            a a2 = a();
            if (a2 != null) {
                this.g = a2.a((b.a) bVar2);
                androidx.appcompat.view.b bVar3 = this.g;
                if (bVar3 != null) {
                    d dVar = this.d;
                    if (dVar != null) {
                        dVar.a(bVar3);
                    }
                }
            }
            if (this.g == null) {
                this.g = b((b.a) bVar2);
            }
            return this.g;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    public void a(int i2) {
        this.S = i2;
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.L;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !this.q) {
            this.y.a().onPanelClosed(i2, menu);
        }
    }

    public void a(Context context) {
        a(false);
        this.O = true;
    }

    public void a(Configuration configuration) {
        if (this.l && this.E) {
            a a2 = a();
            if (a2 != null) {
                a2.a(configuration);
            }
        }
        androidx.appcompat.widget.i.b().a(this.f62b);
        a(false);
    }

    public void a(Bundle bundle) {
        this.O = true;
        a(false);
        x();
        Object obj = this.f61a;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = androidx.core.app.f.b((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                a k2 = k();
                if (k2 == null) {
                    this.Y = true;
                } else {
                    k2.d(true);
                }
            }
        }
        this.P = true;
    }

    public void a(View view) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.y.a().onContentChanged();
    }

    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.y.a().onContentChanged();
    }

    /* access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup) {
    }

    /* access modifiers changed from: package-private */
    public void a(PanelFeatureState panelFeatureState, boolean z2) {
        if (z2 && panelFeatureState.f71a == 0) {
            aa aaVar = this.A;
            if (aaVar != null && aaVar.f()) {
                b(panelFeatureState.j);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f62b.getSystemService("window");
        if (!(windowManager == null || !panelFeatureState.o || panelFeatureState.g == null)) {
            windowManager.removeView(panelFeatureState.g);
            if (z2) {
                a(panelFeatureState.f71a, panelFeatureState, (Menu) null);
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.h = null;
        panelFeatureState.q = true;
        if (this.M == panelFeatureState) {
            this.M = null;
        }
    }

    public void a(androidx.appcompat.view.menu.g gVar) {
        a(gVar, true);
    }

    public void a(Toolbar toolbar) {
        if (this.f61a instanceof Activity) {
            a a2 = a();
            if (!(a2 instanceof k)) {
                this.f = null;
                if (a2 != null) {
                    a2.g();
                }
                if (toolbar != null) {
                    h hVar = new h(toolbar, n(), this.y);
                    this.e = hVar;
                    this.c.setCallback(hVar.h());
                } else {
                    this.e = null;
                    this.c.setCallback(this.y);
                }
                f();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    public final void a(CharSequence charSequence) {
        this.z = charSequence;
        aa aaVar = this.A;
        if (aaVar != null) {
            aaVar.setWindowTitle(charSequence);
        } else if (k() != null) {
            k().a(charSequence);
        } else {
            TextView textView = this.G;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2, KeyEvent keyEvent) {
        a a2 = a();
        if (a2 != null && a2.a(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.M;
        if (panelFeatureState == null || !a(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.M == null) {
                PanelFeatureState a3 = a(0, true);
                b(a3, keyEvent);
                boolean a4 = a(a3, keyEvent.getKeyCode(), keyEvent, 1);
                a3.m = false;
                if (a4) {
                    return true;
                }
            }
            return false;
        }
        PanelFeatureState panelFeatureState2 = this.M;
        if (panelFeatureState2 != null) {
            panelFeatureState2.n = true;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean a(KeyEvent keyEvent) {
        Object obj = this.f61a;
        boolean z2 = true;
        if ((obj instanceof d.a) || (obj instanceof f)) {
            View decorView = this.c.getDecorView();
            if (decorView != null && androidx.core.g.d.a(decorView, keyEvent)) {
                return true;
            }
        }
        if (keyEvent.getKeyCode() == 82 && this.y.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z2 = false;
        }
        return z2 ? c(keyCode, keyEvent) : b(keyCode, keyEvent);
    }

    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        Window.Callback l2 = l();
        if (l2 == null || this.q) {
            return false;
        }
        PanelFeatureState a2 = a((Menu) gVar.q());
        if (a2 != null) {
            return l2.onMenuItemSelected(a2.f71a, menuItem);
        }
        return false;
    }

    public MenuInflater b() {
        if (this.f == null) {
            v();
            a aVar = this.e;
            this.f = new androidx.appcompat.view.g(aVar != null ? aVar.b() : this.f62b);
        }
        return this.f;
    }

    public <T extends View> T b(int i2) {
        y();
        return this.c.findViewById(i2);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0029  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x016a  */
    public androidx.appcompat.view.b b(b.a aVar) {
        androidx.appcompat.view.b bVar;
        androidx.appcompat.view.b bVar2;
        Context context;
        q();
        androidx.appcompat.view.b bVar3 = this.g;
        if (bVar3 != null) {
            bVar3.c();
        }
        if (!(aVar instanceof b)) {
            aVar = new b(aVar);
        }
        d dVar = this.d;
        if (dVar != null && !this.q) {
            try {
                bVar = dVar.a(aVar);
            } catch (AbstractMethodError unused) {
            }
            if (bVar == null) {
                this.g = bVar;
            } else {
                boolean z2 = true;
                if (this.h == null) {
                    if (this.o) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = this.f62b.getTheme();
                        theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme newTheme = this.f62b.getResources().newTheme();
                            newTheme.setTo(theme);
                            newTheme.applyStyle(typedValue.resourceId, true);
                            context = new androidx.appcompat.view.d(this.f62b, 0);
                            context.getTheme().setTo(newTheme);
                        } else {
                            context = this.f62b;
                        }
                        this.h = new ActionBarContextView(context);
                        this.i = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                        androidx.core.widget.h.a(this.i, 2);
                        this.i.setContentView(this.h);
                        this.i.setWidth(-1);
                        context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                        this.h.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                        this.i.setHeight(-2);
                        this.j = new Runnable() {
                            public void run() {
                                AppCompatDelegateImpl.this.i.showAtLocation(AppCompatDelegateImpl.this.h, 55, 0, 0);
                                AppCompatDelegateImpl.this.q();
                                if (AppCompatDelegateImpl.this.o()) {
                                    AppCompatDelegateImpl.this.h.setAlpha(0.0f);
                                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                                    appCompatDelegateImpl.k = u.k(appCompatDelegateImpl.h).a(1.0f);
                                    AppCompatDelegateImpl.this.k.a((z) new androidx.core.g.aa() {
                                        public void a(View view) {
                                            AppCompatDelegateImpl.this.h.setVisibility(0);
                                        }

                                        public void b(View view) {
                                            AppCompatDelegateImpl.this.h.setAlpha(1.0f);
                                            AppCompatDelegateImpl.this.k.a((z) null);
                                            AppCompatDelegateImpl.this.k = null;
                                        }
                                    });
                                    return;
                                }
                                AppCompatDelegateImpl.this.h.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.h.setVisibility(0);
                            }
                        };
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) this.F.findViewById(R.id.action_mode_bar_stub);
                        if (viewStubCompat != null) {
                            viewStubCompat.setLayoutInflater(LayoutInflater.from(m()));
                            this.h = (ActionBarContextView) viewStubCompat.a();
                        }
                    }
                }
                if (this.h != null) {
                    q();
                    this.h.c();
                    Context context2 = this.h.getContext();
                    ActionBarContextView actionBarContextView = this.h;
                    if (this.i != null) {
                        z2 = false;
                    }
                    androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(context2, actionBarContextView, aVar, z2);
                    if (aVar.a((androidx.appcompat.view.b) eVar, eVar.b())) {
                        eVar.d();
                        this.h.a(eVar);
                        this.g = eVar;
                        if (o()) {
                            this.h.setAlpha(0.0f);
                            this.k = u.k(this.h).a(1.0f);
                            this.k.a((z) new androidx.core.g.aa() {
                                public void a(View view) {
                                    AppCompatDelegateImpl.this.h.setVisibility(0);
                                    AppCompatDelegateImpl.this.h.sendAccessibilityEvent(32);
                                    if (AppCompatDelegateImpl.this.h.getParent() instanceof View) {
                                        u.p((View) AppCompatDelegateImpl.this.h.getParent());
                                    }
                                }

                                public void b(View view) {
                                    AppCompatDelegateImpl.this.h.setAlpha(1.0f);
                                    AppCompatDelegateImpl.this.k.a((z) null);
                                    AppCompatDelegateImpl.this.k = null;
                                }
                            });
                        } else {
                            this.h.setAlpha(1.0f);
                            this.h.setVisibility(0);
                            this.h.sendAccessibilityEvent(32);
                            if (this.h.getParent() instanceof View) {
                                u.p((View) this.h.getParent());
                            }
                        }
                        if (this.i != null) {
                            this.c.getDecorView().post(this.j);
                        }
                    } else {
                        this.g = null;
                    }
                }
            }
            bVar2 = this.g;
            if (bVar2 != null) {
                d dVar2 = this.d;
                if (dVar2 != null) {
                    dVar2.a(bVar2);
                }
            }
            return this.g;
        }
        bVar = null;
        if (bVar == null) {
        }
        bVar2 = this.g;
        if (bVar2 != null) {
        }
        return this.g;
    }

    public void b(Bundle bundle) {
        y();
    }

    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        y();
        ((ViewGroup) this.F.findViewById(16908290)).addView(view, layoutParams);
        this.y.a().onContentChanged();
    }

    /* access modifiers changed from: package-private */
    public void b(androidx.appcompat.view.menu.g gVar) {
        if (!this.K) {
            this.K = true;
            this.A.k();
            Window.Callback l2 = l();
            if (l2 != null && !this.q) {
                l2.onPanelClosed(108, gVar);
            }
            this.K = false;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z2 = this.N;
            this.N = false;
            PanelFeatureState a2 = a(0, false);
            if (a2 != null && a2.o) {
                if (!z2) {
                    a(a2, true);
                }
                return true;
            } else if (r()) {
                return true;
            }
        } else if (i2 == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    public void c() {
        this.Q = true;
        t();
        a((e) this);
    }

    public void c(int i2) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f62b).inflate(i2, viewGroup);
        this.y.a().onContentChanged();
    }

    public void c(Bundle bundle) {
        if (this.R != -100) {
            t.put(this.f61a.getClass(), Integer.valueOf(this.R));
        }
    }

    /* access modifiers changed from: package-private */
    public boolean c(int i2, KeyEvent keyEvent) {
        boolean z2 = true;
        if (i2 == 4) {
            if ((keyEvent.getFlags() & 128) == 0) {
                z2 = false;
            }
            this.N = z2;
        } else if (i2 == 82) {
            d(0, keyEvent);
            return true;
        }
        return false;
    }

    public void d() {
        this.Q = false;
        b((e) this);
        a a2 = a();
        if (a2 != null) {
            a2.e(false);
        }
        if (this.f61a instanceof Dialog) {
            w();
        }
    }

    public boolean d(int i2) {
        int l2 = l(i2);
        if (this.p && l2 == 108) {
            return false;
        }
        if (this.l && l2 == 1) {
            this.l = false;
        }
        if (l2 == 1) {
            C();
            this.p = true;
            return true;
        } else if (l2 == 2) {
            C();
            this.I = true;
            return true;
        } else if (l2 == 5) {
            C();
            this.J = true;
            return true;
        } else if (l2 == 10) {
            C();
            this.n = true;
            return true;
        } else if (l2 == 108) {
            C();
            this.l = true;
            return true;
        } else if (l2 != 109) {
            return this.c.requestFeature(l2);
        } else {
            C();
            this.m = true;
            return true;
        }
    }

    public void e() {
        a a2 = a();
        if (a2 != null) {
            a2.e(true);
        }
    }

    /* access modifiers changed from: package-private */
    public void e(int i2) {
        if (i2 == 108) {
            a a2 = a();
            if (a2 != null) {
                a2.f(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState a3 = a(i2, true);
            if (a3.o) {
                a(a3, false);
            }
        }
    }

    public void f() {
        a a2 = a();
        if (a2 == null || !a2.e()) {
            k(0);
        }
    }

    /* access modifiers changed from: package-private */
    public void f(int i2) {
        if (i2 == 108) {
            a a2 = a();
            if (a2 != null) {
                a2.f(true);
            }
        }
    }

    public void g() {
        b((e) this);
        if (this.r) {
            this.c.getDecorView().removeCallbacks(this.X);
        }
        this.Q = false;
        this.q = true;
        a aVar = this.e;
        if (aVar != null) {
            aVar.g();
        }
        w();
    }

    /* access modifiers changed from: package-private */
    public void g(int i2) {
        a(a(i2, true), true);
    }

    public void h() {
        LayoutInflater from = LayoutInflater.from(this.f62b);
        if (from.getFactory() == null) {
            androidx.core.g.e.a(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* access modifiers changed from: package-private */
    public void h(int i2) {
        PanelFeatureState a2 = a(i2, true);
        if (a2.j != null) {
            Bundle bundle = new Bundle();
            a2.j.c(bundle);
            if (bundle.size() > 0) {
                a2.s = bundle;
            }
            a2.j.h();
            a2.j.clear();
        }
        a2.r = true;
        a2.q = true;
        if ((i2 == 108 || i2 == 0) && this.A != null) {
            PanelFeatureState a3 = a(0, false);
            if (a3 != null) {
                a3.m = false;
                b(a3, (KeyEvent) null);
            }
        }
    }

    public int i() {
        return this.R;
    }

    /* access modifiers changed from: package-private */
    public int i(int i2) {
        boolean z2;
        boolean z3;
        ActionBarContextView actionBarContextView = this.h;
        int i3 = 0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.h.getLayoutParams();
            z2 = true;
            if (this.h.isShown()) {
                if (this.Z == null) {
                    this.Z = new Rect();
                    this.aa = new Rect();
                }
                Rect rect = this.Z;
                Rect rect2 = this.aa;
                rect.set(0, i2, 0, 0);
                ba.a(this.F, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.H;
                    if (view == null) {
                        this.H = new View(this.f62b);
                        this.H.setBackgroundColor(this.f62b.getResources().getColor(R.color.abc_input_method_navigation_guard));
                        this.F.addView(this.H, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.H.setLayoutParams(layoutParams);
                        }
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (this.H == null) {
                    z2 = false;
                }
                if (!this.n && z2) {
                    i2 = 0;
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z3 = true;
                z2 = false;
            } else {
                z3 = false;
                z2 = false;
            }
            if (z3) {
                this.h.setLayoutParams(marginLayoutParams);
            }
        }
        View view2 = this.H;
        if (view2 != null) {
            if (!z2) {
                i3 = 8;
            }
            view2.setVisibility(i3);
        }
        return i2;
    }

    /* access modifiers changed from: package-private */
    public int j(int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 == -1) {
            return i2;
        }
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                return i2;
            }
            if (i2 == 3) {
                return E().a();
            }
            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
        } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) this.f62b.getSystemService(UiModeManager.class)).getNightMode() != 0) {
            return u().a();
        } else {
            return -1;
        }
    }

    /* access modifiers changed from: package-private */
    public final a k() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final Window.Callback l() {
        return this.c.getCallback();
    }

    /* access modifiers changed from: package-private */
    public final Context m() {
        a a2 = a();
        Context b2 = a2 != null ? a2.b() : null;
        return b2 == null ? this.f62b : b2;
    }

    /* access modifiers changed from: package-private */
    public final CharSequence n() {
        Object obj = this.f61a;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.z;
    }

    /* access modifiers changed from: package-private */
    public final boolean o() {
        if (this.E) {
            ViewGroup viewGroup = this.F;
            return viewGroup != null && u.u(viewGroup);
        }
    }

    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView((View) null, str, context, attributeSet);
    }

    public boolean p() {
        return this.D;
    }

    /* access modifiers changed from: package-private */
    public void q() {
        y yVar = this.k;
        if (yVar != null) {
            yVar.b();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean r() {
        androidx.appcompat.view.b bVar = this.g;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        a a2 = a();
        return a2 != null && a2.f();
    }

    /* access modifiers changed from: package-private */
    public void s() {
        aa aaVar = this.A;
        if (aaVar != null) {
            aaVar.k();
        }
        if (this.i != null) {
            this.c.getDecorView().removeCallbacks(this.j);
            if (this.i.isShowing()) {
                try {
                    this.i.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.i = null;
        }
        q();
        PanelFeatureState a2 = a(0, false);
        if (a2 != null && a2.j != null) {
            a2.j.close();
        }
    }

    public boolean t() {
        return a(true);
    }

    /* access modifiers changed from: package-private */
    public final e u() {
        if (this.V == null) {
            this.V = new f(j.a(this.f62b));
        }
        return this.V;
    }
}
