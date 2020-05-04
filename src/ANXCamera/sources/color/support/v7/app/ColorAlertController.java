package color.support.v7.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.f;
import color.support.v7.app.a;
import color.support.v7.appcompat.R;
import color.support.v7.internal.widget.ColorAlertLinearLayout;
import com.oppo.camera.statistics.model.MenuClickMsgData;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ColorAlertController extends a {
    /* access modifiers changed from: private */
    public Handler A;
    private TextPaint B;
    private ViewStub C;
    /* access modifiers changed from: private */
    public ContentObserver D = new ContentObserver(this.A) {
        public void onChange(boolean z) {
            if (Settings.Secure.getInt(ColorAlertController.this.z.getContentResolver(), "manual_hide_navigationbar", -1) == 0) {
                ColorAlertController.this.A.sendMessage(Message.obtain(ColorAlertController.this.A, 1, ColorAlertController.this));
            } else {
                ColorAlertController.this.A.sendMessage(Message.obtain(ColorAlertController.this.A, 2, ColorAlertController.this));
            }
        }
    };
    /* access modifiers changed from: private */
    public ComponentCallbacks E = new ComponentCallbacks() {
        public void onConfigurationChanged(Configuration configuration) {
            ColorAlertController.this.g();
            ColorAlertController.this.N();
            ColorAlertController.this.u();
        }

        public void onLowMemory() {
        }
    };
    private boolean y;
    /* access modifiers changed from: private */
    public Context z;

    public static class ColorRecyclerListView extends a.d {

        /* renamed from: a  reason: collision with root package name */
        private Path f1322a;

        /* renamed from: b  reason: collision with root package name */
        private int f1323b;
        private boolean c;

        public ColorRecyclerListView(Context context) {
            this(context, (AttributeSet) null);
        }

        public ColorRecyclerListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1323b = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_bottom_corner_radius);
        }

        private void a(Canvas canvas) {
            int i = this.f1323b;
            float[] fArr = {(float) i, (float) i, (float) i, (float) i, 0.0f, 0.0f, 0.0f, 0.0f};
            if (this.f1322a == null) {
                this.f1322a = new Path();
                this.f1322a.addRoundRect((float) getLeft(), (float) getTop(), (float) getRight(), (float) getBottom(), fArr, Path.Direction.CW);
            }
            canvas.clipPath(this.f1322a);
        }

        public void draw(Canvas canvas) {
            canvas.save();
            if (this.c) {
                a(canvas);
            }
            super.draw(canvas);
            canvas.restore();
        }

        public void setNeedClip(boolean z) {
            this.c = z;
        }
    }

    private static final class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<ColorAlertController> f1324a;

        public a(ColorAlertController colorAlertController) {
            this.f1324a = new WeakReference<>(colorAlertController);
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1 || i == 2) {
                ((ColorAlertController) message.obj).N();
            }
        }
    }

    public ColorAlertController(Context context, f fVar, Window window) {
        super(context, fVar, window);
        this.z = context;
        this.A = new a(this);
        f();
    }

    private boolean A() {
        return D() == 2;
    }

    private boolean B() {
        return D() == 3;
    }

    private boolean C() {
        if (D() == 0) {
            return false;
        }
        int J = (J() / D()) - (this.z.getResources().getDimensionPixelOffset(R.dimen.color_alert_dialog_button_horizontal_padding) * 2);
        return (E() ? (int) this.B.measureText(this.g.toString()) : 0) >= J || (F() ? (int) this.B.measureText(this.j.toString()) : 0) >= J || (G() ? (int) this.B.measureText(this.m.toString()) : 0) >= J;
    }

    private int D() {
        int i = E() ? 1 : 0;
        if (F()) {
            i++;
        }
        return G() ? i + 1 : i;
    }

    private boolean E() {
        return !TextUtils.isEmpty(this.g);
    }

    private boolean F() {
        return !TextUtils.isEmpty(this.j);
    }

    private boolean G() {
        return !TextUtils.isEmpty(this.m);
    }

    private boolean H() {
        return !TextUtils.isEmpty(this.d);
    }

    private boolean I() {
        return !TextUtils.isEmpty(this.c);
    }

    private int J() {
        View findViewById = this.f1326b.findViewById(R.id.parentPanel);
        int paddingLeft = findViewById != null ? findViewById.getPaddingLeft() : 0;
        Point point = new Point();
        ((WindowManager) this.z.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        int i = point.x;
        int i2 = point.y;
        if (i < i2) {
            i2 = i;
        }
        return i2 - (paddingLeft * 2);
    }

    private void K() {
        this.C.setLayoutResource(R.layout.alert_dialog_vertical_button_panel);
        this.C.inflate();
        View findViewById = this.f1326b.findViewById(R.id.list_divider);
        View findViewById2 = this.f1326b.findViewById(R.id.color_alert_dialog_divider2);
        if (j() && !TextUtils.isEmpty(this.d)) {
            findViewById.setVisibility(0);
        } else if (!j()) {
            findViewById2.setVisibility(0);
        }
    }

    private void L() {
        this.C.setLayoutResource(R.layout.alert_dialog_horizontal_button_panel);
        this.C.inflate();
        M();
    }

    private void M() {
        ImageView imageView = (ImageView) this.f1326b.findViewById(R.id.iv_button_divider_1);
        ImageView imageView2 = (ImageView) this.f1326b.findViewById(R.id.iv_button_divider_2);
        if (D() == 2) {
            imageView.setVisibility(0);
        }
        if (D() == 3) {
            imageView.setVisibility(0);
            imageView2.setVisibility(0);
        }
    }

    /* access modifiers changed from: private */
    public void N() {
        ViewGroup viewGroup = (ViewGroup) this.f1326b.findViewById(R.id.parentPanel);
        if (viewGroup != null) {
            View findViewById = viewGroup.findViewById(R.id.alert_dialog_bottom_space);
            if (findViewById != null) {
                ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                layoutParams.height = m();
                findViewById.setLayoutParams(layoutParams);
            }
        }
        t();
        WindowManager.LayoutParams attributes = this.f1326b.getAttributes();
        if (b(attributes)) {
            if (!o()) {
                attributes.y = 0;
            } else if (q()) {
                attributes.y = 0;
            } else {
                attributes.y -= n();
            }
        }
        this.f1326b.setAttributes(attributes);
    }

    private void a(WindowManager.LayoutParams layoutParams) {
        try {
            Field declaredField = layoutParams.getClass().getDeclaredField("privateFlags");
            declaredField.setAccessible(true);
            declaredField.set(layoutParams, Integer.valueOf(declaredField.getInt(layoutParams) | 16777216 | 64));
        } catch (Exception e) {
            Log.d("ColorAlertController", "addPrivateFlag failed.Fail msg is " + e.getMessage());
        }
    }

    private boolean b(WindowManager.LayoutParams layoutParams) {
        return layoutParams.type == 2003 || layoutParams.type == 2038 || layoutParams.type == 2303;
    }

    private void d(ViewGroup viewGroup) {
        if (this.x) {
            if (this.o != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.o.getLayoutParams();
                layoutParams.height = 0;
                layoutParams.weight = 1.0f;
                this.o.setLayoutParams(layoutParams);
            }
            if (viewGroup != null) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewGroup.getLayoutParams();
                layoutParams2.height = 0;
                layoutParams2.weight = 1.0f;
                viewGroup.setLayoutParams(layoutParams2);
            }
        }
    }

    private void e(ViewGroup viewGroup) {
        final TextView textView = (TextView) viewGroup.findViewById(16908299);
        textView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                if (textView.getLineCount() > 1) {
                    textView.setTextAlignment(5);
                } else {
                    textView.setTextAlignment(4);
                }
                TextView textView = textView;
                textView.setText(textView.getText());
                textView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    private void f() {
        this.B = new TextPaint();
        this.B.setTextSize((float) this.z.getResources().getDimensionPixelSize(R.dimen.oppo_dialog_button_text_size));
    }

    /* access modifiers changed from: private */
    public void g() {
        Point h = h();
        boolean z2 = h.x < h.y;
        DisplayMetrics displayMetrics = this.z.getResources().getDisplayMetrics();
        WindowManager.LayoutParams attributes = this.f1326b.getAttributes();
        if (z2) {
            this.f1326b.setGravity(81);
            this.f1326b.clearFlags(-2147482112);
            attributes.width = Math.min(h.x, displayMetrics.widthPixels);
            attributes.height = -2;
            return;
        }
        this.f1326b.setGravity(17);
        this.f1326b.addFlags(-2147482112);
        attributes.width = Math.min(h.y, displayMetrics.widthPixels);
        attributes.height = this.z.getResources().getDimensionPixelSize(R.dimen.alert_dialog_central_max_height);
    }

    private Point h() {
        Point point = new Point();
        ((WindowManager) this.z.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        return point;
    }

    private void i() {
        WindowManager.LayoutParams attributes = this.f1326b.getAttributes();
        if (j()) {
            attributes.windowAnimations = R.style.Animation_ColorSupport_Dialog_Alpha;
            attributes.gravity = 17;
        } else {
            attributes.windowAnimations = R.style.ColorDialogAnimation;
        }
        this.f1326b.setAttributes(attributes);
    }

    private boolean j() {
        return e() == 0;
    }

    private void k() {
        if (!j()) {
            l();
            this.z.registerComponentCallbacks(this.E);
        }
        if (r()) {
            N();
            t();
            WindowManager.LayoutParams attributes = this.f1326b.getAttributes();
            a(attributes);
            if (b(attributes) && Build.VERSION.SDK_INT < 29) {
                attributes.y -= m();
            }
            this.f1326b.setAttributes(attributes);
        }
    }

    private void l() {
        this.z.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("manual_hide_navigationbar"), false, this.D);
    }

    private int m() {
        if (!s()) {
            return 0;
        }
        int n = q() ? 0 : o() ? n() : this.z.getResources().getDimensionPixelSize(R.dimen.alert_dialog_padding_bottom);
        if (!this.y) {
            return 0;
        }
        return n;
    }

    private int n() {
        Resources resources = this.z.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    private boolean o() {
        if (!p()) {
            return false;
        }
        int i = Settings.Secure.getInt(this.z.getContentResolver(), "hide_navigationbar_enable", 0);
        int i2 = Settings.Secure.getInt(this.z.getContentResolver(), "manual_hide_navigationbar", 0);
        this.y = (i == -1 || i2 == -1) ? false : true;
        return i == 0 || (i == 1 && i2 == 0);
    }

    private boolean p() {
        Resources resources = this.z.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z2 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", new Class[]{String.class}).invoke(cls, new Object[]{"qemu.hw.mainkeys"});
            if (MenuClickMsgData.VALUE_SLOGAN_CONTENT_EXIST.equals(str)) {
                return false;
            }
            if ("0".equals(str)) {
                return true;
            }
            return z2;
        } catch (Exception e) {
            Log.d("ColorAlertController", "fail to get navigation bar status message is " + e.getMessage());
            return z2;
        }
    }

    private boolean q() {
        return this.f1326b.getAttributes().gravity == 17;
    }

    private boolean r() {
        return !j() && s();
    }

    private boolean s() {
        try {
            Method declaredMethod = Class.forName("android.view.WindowManagerGlobal").getDeclaredMethod("getWindowManagerService", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke((Object) null, new Object[0]);
            return ((Integer) invoke.getClass().getDeclaredMethod("getDockedStackSide", new Class[0]).invoke(invoke, new Object[0])).intValue() == -1;
        } catch (Exception e) {
            Log.d("ColorAlertController", "isFullScreen operation failed.Return false.Failed msg is " + e.getMessage());
            return false;
        }
    }

    private void t() {
        if (q()) {
            this.f1326b.clearFlags(-2147482112);
        } else if (o()) {
            this.f1326b.setNavigationBarColor(-1);
            this.f1326b.clearFlags(134217728);
            this.f1326b.getDecorView().setSystemUiVisibility(16);
            this.f1326b.addFlags(-2147482112);
        }
    }

    /* access modifiers changed from: private */
    public void u() {
        View findViewById = this.f1326b.findViewById(R.id.parentPanel);
        if (findViewById != null && (findViewById instanceof ColorAlertLinearLayout)) {
            ColorAlertLinearLayout colorAlertLinearLayout = (ColorAlertLinearLayout) findViewById;
            if (q()) {
                colorAlertLinearLayout.setNeedClip(true);
                colorAlertLinearLayout.setHasShadow(true);
                return;
            }
            colorAlertLinearLayout.setNeedClip(false);
            colorAlertLinearLayout.setHasShadow(false);
        }
    }

    private boolean v() {
        return !H() && !I() && !j();
    }

    private void w() {
        int paddingLeft = this.l.getPaddingLeft();
        int paddingTop = this.l.getPaddingTop();
        int paddingRight = this.l.getPaddingRight();
        int paddingBottom = this.l.getPaddingBottom();
        int dimensionPixelSize = this.z.getResources().getDimensionPixelSize(R.dimen.alert_dialog_item_padding_offset);
        if (!j()) {
            int color2 = this.z.getResources().getColor(R.color.color_bottom_alert_dialog_button_text_color);
            this.f.setTextColor(color2);
            this.i.setTextColor(color2);
            boolean z2 = !TextUtils.isEmpty(this.d);
            boolean z3 = !TextUtils.isEmpty(this.c);
            this.l.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom + dimensionPixelSize);
            this.l.setMinHeight(this.l.getMinHeight() + dimensionPixelSize);
            if (!z2 && !z3 && G() && !E()) {
                this.l.setPadding(paddingLeft, paddingTop + dimensionPixelSize, paddingRight, paddingBottom);
                this.l.setMinHeight(this.l.getMinHeight() + dimensionPixelSize);
            }
        }
        if (C()) {
            this.f.setPadding(paddingLeft, paddingTop + dimensionPixelSize, paddingRight, paddingBottom);
            this.f.setMinHeight(this.f.getMinHeight() + dimensionPixelSize);
            this.i.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom + dimensionPixelSize);
            this.i.setMinHeight(this.i.getMinHeight() + dimensionPixelSize);
        }
    }

    private void x() {
        if (!j() && !I() && !H() && this.e == null && !y()) {
            if (z()) {
                (E() ? this.f : G() ? this.l : this.i).setBackgroundResource(R.drawable.color_alert_bottom_dialog_corner_button_background);
            } else if (A()) {
                (E() ? this.f : this.l).setBackgroundResource(R.drawable.color_alert_bottom_dialog_corner_button_background);
            } else if (B()) {
                this.f.setBackgroundResource(R.drawable.color_alert_bottom_dialog_corner_button_background);
            }
        }
    }

    private boolean y() {
        return ((FrameLayout) this.f1326b.findViewById(R.id.custom)).getChildCount() != 0;
    }

    private boolean z() {
        return D() == 1;
    }

    public void a() {
        super.a();
        this.f1326b.setGravity(81);
        g();
        i();
        k();
        u();
    }

    /* access modifiers changed from: protected */
    public int b() {
        return j() ? super.b() : R.layout.color_bottom_alert_dialog;
    }

    /* access modifiers changed from: protected */
    public void b(final ViewGroup viewGroup) {
        super.b(viewGroup);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.listPanel);
        if (!(this.d == null || viewGroup2 == null || this.e == null)) {
            viewGroup2.addView(this.e, new ViewGroup.LayoutParams(-1, -1));
            ImageView imageView = (ImageView) viewGroup.findViewById(R.id.color_alert_dialog_list_divider);
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        }
        if (!j()) {
            d(viewGroup2);
        } else if (this.d != null) {
            e(viewGroup);
        }
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            public void onViewAttachedToWindow(View view) {
            }

            public void onViewDetachedFromWindow(View view) {
                viewGroup.removeOnAttachStateChangeListener(this);
                if (ColorAlertController.this.E != null) {
                    ColorAlertController.this.z.unregisterComponentCallbacks(ColorAlertController.this.E);
                    ComponentCallbacks unused = ColorAlertController.this.E = null;
                }
                ColorAlertController.this.z.getContentResolver().unregisterContentObserver(ColorAlertController.this.D);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void c(ViewGroup viewGroup) {
        super.c(viewGroup);
        w();
        x();
    }

    /* access modifiers changed from: protected */
    public void d() {
        ListView c = c();
        if (c instanceof ColorRecyclerListView) {
            ((ColorRecyclerListView) c).setNeedClip(v());
        }
        this.C = (ViewStub) this.f1326b.findViewById(R.id.button_view_stub);
        if (!j()) {
            K();
        } else if (C()) {
            K();
        } else {
            L();
        }
        super.d();
    }
}
