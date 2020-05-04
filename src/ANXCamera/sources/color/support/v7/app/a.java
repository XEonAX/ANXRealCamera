package color.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.app.f;
import color.support.v7.appcompat.R;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.lang.ref.WeakReference;

/* compiled from: AlertController */
public class a {
    private View A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private boolean G = false;
    private Drawable H;
    private Drawable I;
    private Drawable J;
    private int K = 0;
    private Drawable L;
    private ImageView M;
    private TextView N;
    private TextView O;
    private View P;
    private int Q;
    private boolean R;
    private int S = 0;
    private int T = 0;
    private final View.OnClickListener U = new View.OnClickListener() {
        public void onClick(View view) {
            Message obtain = (view != a.this.f || a.this.h == null) ? (view != a.this.i || a.this.k == null) ? (view != a.this.l || a.this.n == null) ? null : Message.obtain(a.this.n) : Message.obtain(a.this.k) : Message.obtain(a.this.h);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            a.this.w.obtainMessage(1, a.this.f1325a).sendToTarget();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final f f1325a;

    /* renamed from: b  reason: collision with root package name */
    final Window f1326b;
    CharSequence c;
    CharSequence d;
    ListView e;
    Button f;
    CharSequence g;
    Message h;
    Button i;
    CharSequence j;
    Message k;
    Button l;
    CharSequence m;
    Message n;
    ScrollView o;
    ListAdapter p;
    int q = -1;
    protected int r;
    int s;
    int t;
    int u;
    int v;
    Handler w;
    boolean x = false;
    private final Context y;
    private final int z;

    /* renamed from: color.support.v7.app.a$a  reason: collision with other inner class name */
    /* compiled from: AlertController */
    public static class C0039a {
        public int A;
        public View B;
        public int C;
        public int D;
        public int E;
        public int F;
        public boolean G = false;
        public boolean[] H;
        public boolean I;
        public boolean J;
        public int K = -1;
        public DialogInterface.OnMultiChoiceClickListener L;
        public Cursor M;
        public String N;
        public String O;
        public AdapterView.OnItemSelectedListener P;
        public C0040a Q;
        public boolean R = true;
        public int S;

        /* renamed from: a  reason: collision with root package name */
        public final Context f1336a;

        /* renamed from: b  reason: collision with root package name */
        public final LayoutInflater f1337b;
        public int c = 0;
        public Drawable d;
        public int e = 0;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public Drawable j;
        public DialogInterface.OnClickListener k;
        public CharSequence l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public boolean r;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public CharSequence[] w;
        public boolean x;
        public ListAdapter y;
        public DialogInterface.OnClickListener z;

        /* renamed from: color.support.v7.app.a$a$a  reason: collision with other inner class name */
        /* compiled from: AlertController */
        public interface C0040a {
            void a(ListView listView);
        }

        public C0039a(Context context) {
            this.f1336a = context;
            this.r = true;
            this.f1337b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARNING: type inference failed for: r10v0, types: [android.widget.ListAdapter] */
        /* JADX WARNING: type inference failed for: r10v2 */
        /* JADX WARNING: type inference failed for: r10v3 */
        /* JADX WARNING: type inference failed for: r10v7 */
        /* JADX WARNING: type inference failed for: r2v9, types: [android.widget.SimpleCursorAdapter] */
        /* JADX WARNING: type inference failed for: r1v23, types: [color.support.v7.app.a$a$2] */
        /* JADX WARNING: type inference failed for: r1v24, types: [color.support.v7.app.a$a$1] */
        /* JADX WARNING: Multi-variable type inference failed */
        private void b(final a aVar) {
            ? r10;
            final d dVar = (d) this.f1337b.inflate(aVar.s, (ViewGroup) null);
            if (this.I) {
                Cursor cursor = this.M;
                if (cursor == null) {
                    final d dVar2 = dVar;
                    AnonymousClass1 r1 = new ArrayAdapter<CharSequence>(this.f1336a, aVar.t, 16908308, this.v) {
                        public View getView(int i, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i, view, viewGroup);
                            if (C0039a.this.H != null && C0039a.this.H[i]) {
                                dVar2.setItemChecked(i, true);
                            }
                            return view2;
                        }
                    };
                    r10 = r1;
                } else {
                    final d dVar3 = dVar;
                    final a aVar2 = aVar;
                    AnonymousClass2 r12 = new CursorAdapter(this.f1336a, cursor, false) {
                        private final int d;
                        private final int e;

                        {
                            Cursor cursor = getCursor();
                            this.d = cursor.getColumnIndexOrThrow(C0039a.this.N);
                            this.e = cursor.getColumnIndexOrThrow(C0039a.this.O);
                        }

                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.d));
                            d dVar = dVar3;
                            int position = cursor.getPosition();
                            boolean z = true;
                            if (cursor.getInt(this.e) != 1) {
                                z = false;
                            }
                            dVar.setItemChecked(position, z);
                        }

                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return C0039a.this.f1337b.inflate(aVar2.t, viewGroup, false);
                        }
                    };
                    r10 = r12;
                }
            } else if (this.J) {
                int i2 = aVar.u;
                Cursor cursor2 = this.M;
                if (cursor2 != null) {
                    SimpleCursorAdapter simpleCursorAdapter = new SimpleCursorAdapter(this.f1336a, i2, cursor2, new String[]{this.N}, new int[]{16908308});
                    r10 = simpleCursorAdapter;
                } else {
                    Object obj = this.y;
                    if (obj == null) {
                        obj = new c(this.f1336a, i2, 16908308, this.v);
                    }
                    r10 = obj;
                }
            } else {
                ListAdapter listAdapter = this.y;
                r10 = listAdapter;
                if (listAdapter == null) {
                    c cVar = new c(this.f1336a, !TextUtils.isEmpty(this.f), !TextUtils.isEmpty(this.h), this.v, this.w);
                    r10 = cVar;
                }
            }
            C0040a aVar3 = this.Q;
            if (aVar3 != null) {
                aVar3.a(dVar);
            }
            aVar.p = r10;
            aVar.q = this.K;
            if (this.z != null) {
                dVar.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        C0039a.this.z.onClick(aVar.f1325a, i);
                        if (!C0039a.this.J) {
                            aVar.f1325a.dismiss();
                        }
                    }
                });
            } else if (this.L != null) {
                dVar.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        if (C0039a.this.H != null) {
                            C0039a.this.H[i] = dVar.isItemChecked(i);
                        }
                        C0039a.this.L.onClick(aVar.f1325a, i, dVar.isItemChecked(i));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.P;
            if (onItemSelectedListener != null) {
                dVar.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.J) {
                dVar.setSelector(R.drawable.color_alert_dialog_item_background);
                dVar.setItemsCanFocus(false);
                dVar.setChoiceMode(1);
            } else if (this.I) {
                dVar.setSelector(R.drawable.color_alert_dialog_item_background);
                dVar.setItemsCanFocus(false);
                dVar.setChoiceMode(2);
            }
            aVar.e = dVar;
        }

        public void a(a aVar) {
            View view = this.g;
            if (view != null) {
                aVar.b(view);
            } else {
                CharSequence charSequence = this.f;
                if (charSequence != null) {
                    aVar.a(charSequence);
                }
                Drawable drawable = this.d;
                if (drawable != null) {
                    aVar.a(drawable);
                }
                int i2 = this.c;
                if (i2 != 0) {
                    aVar.b(i2);
                }
                int i3 = this.e;
                if (i3 != 0) {
                    aVar.b(aVar.c(i3));
                }
            }
            aVar.x = this.x;
            CharSequence charSequence2 = this.h;
            if (charSequence2 != null) {
                aVar.b(charSequence2);
            }
            if (!(this.i == null && this.j == null)) {
                aVar.a(-1, this.i, this.k, (Message) null, this.j);
            }
            if (!(this.l == null && this.m == null)) {
                aVar.a(-2, this.l, this.n, (Message) null, this.m);
            }
            if (!(this.o == null && this.p == null)) {
                aVar.a(-3, this.o, this.q, (Message) null, this.p);
            }
            if (!(this.v == null && this.M == null && this.y == null)) {
                b(aVar);
            }
            View view2 = this.B;
            if (view2 == null) {
                int i4 = this.A;
                if (i4 != 0) {
                    aVar.a(i4);
                }
            } else if (this.G) {
                aVar.a(view2, this.C, this.D, this.E, this.F);
            } else {
                aVar.c(view2);
            }
            aVar.e(this.S);
        }
    }

    /* compiled from: AlertController */
    private static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<DialogInterface> f1346a;

        public b(DialogInterface dialogInterface) {
            this.f1346a = new WeakReference<>(dialogInterface);
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f1346a.get(), message.what);
            } else if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* compiled from: AlertController */
    private static class c extends ArrayAdapter<CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        private int f1347a;

        /* renamed from: b  reason: collision with root package name */
        private int f1348b;
        private int c;
        private int d;
        private int e;
        private int f;

        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
            this.f1347a = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_single_list_padding_left);
            this.f1348b = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_single_list_padding_right);
            this.d = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_single_list_padding_vertical);
            this.e = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_item_padding_offset);
            this.c = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_single_list_padding_vertical);
            this.f = context.getResources().getDimensionPixelOffset(R.dimen.alert_dialog_list_item_min_height);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            if (i == getCount() - 1) {
                view2.setMinimumHeight(this.f + this.e);
                view2.setPaddingRelative(this.f1347a, this.c, this.f1348b, this.d + this.e);
            } else {
                view2.setMinimumHeight(this.f);
                view2.setPaddingRelative(this.f1347a, this.c, this.f1348b, this.d);
            }
            return view2;
        }

        public boolean hasStableIds() {
            return true;
        }
    }

    /* compiled from: AlertController */
    public static class d extends ListView {

        /* renamed from: a  reason: collision with root package name */
        private final int f1349a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1350b;

        public d(Context context) {
            this(context, (AttributeSet) null);
        }

        public d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.f1350b = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f1349a = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f1349a, getPaddingRight(), z2 ? getPaddingBottom() : this.f1350b);
            }
        }
    }

    public a(Context context, f fVar, Window window) {
        this.y = context;
        this.f1325a = fVar;
        this.f1326b = window;
        this.w = new b(fVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, R.styleable.ColorSupportAlertDialog, R.attr.colorAlertDialogStyle, 0);
        this.r = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_android_layout, 0);
        this.Q = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_buttonPanelSideLayout, 0);
        this.s = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_listLayout, 0);
        this.t = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_multiChoiceItemLayout, 0);
        this.u = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_singleChoiceItemLayout, 0);
        this.v = obtainStyledAttributes.getResourceId(R.styleable.ColorSupportAlertDialog_listItemLayout, 0);
        this.R = obtainStyledAttributes.getBoolean(R.styleable.ColorSupportAlertDialog_showTitle, true);
        this.z = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ColorSupportAlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        fVar.b(1);
    }

    private ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    static void a(View view, View view2, View view3) {
        int i2 = 0;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!view.canScrollVertically(1)) {
                i2 = 4;
            }
            view3.setVisibility(i2);
        }
    }

    private void a(ViewGroup viewGroup, View view, int i2, int i3) {
        final View findViewById = this.f1326b.findViewById(R.id.scrollIndicatorUp);
        final View findViewById2 = this.f1326b.findViewById(R.id.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i2 & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 != null && (i2 & 2) == 0) {
            viewGroup.removeView(findViewById2);
            findViewById2 = null;
        }
        if (findViewById != null || findViewById2 != null) {
            if (this.d != null) {
                this.o.setOnScrollChangeListener(new View.OnScrollChangeListener() {
                    public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                        a.a(view, findViewById, findViewById2);
                    }
                });
                this.o.post(new Runnable() {
                    public void run() {
                        a.a(a.this.o, findViewById, findViewById2);
                    }
                });
                return;
            }
            ListView listView = this.e;
            if (listView != null) {
                listView.setOnScrollListener(new AbsListView.OnScrollListener() {
                    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                        a.a(absListView, findViewById, findViewById2);
                    }

                    public void onScrollStateChanged(AbsListView absListView, int i) {
                    }
                });
                this.e.post(new Runnable() {
                    public void run() {
                        a.a(a.this.e, findViewById, findViewById2);
                    }
                });
                return;
            }
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
            }
        }
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void d(ViewGroup viewGroup) {
        View view = this.A;
        boolean z2 = false;
        if (view == null) {
            view = this.B != 0 ? LayoutInflater.from(this.y).inflate(this.B, viewGroup, false) : null;
        }
        if (view != null) {
            z2 = true;
        }
        if (!z2 || !a(view)) {
            this.f1326b.setFlags(STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_VIDEO, STMobileHumanActionNative.ST_MOBILE_DETECT_MODE_VIDEO);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) this.f1326b.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.G) {
                frameLayout.setPadding(this.C, this.D, this.E, this.F);
            }
            if (this.e != null) {
                ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    public void a() {
        this.f1325a.setContentView(b());
        d();
    }

    public void a(int i2) {
        this.A = null;
        this.B = i2;
        this.G = false;
    }

    public void a(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.w.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.m = charSequence;
            this.n = message;
            this.J = drawable;
        } else if (i2 == -2) {
            this.j = charSequence;
            this.k = message;
            this.I = drawable;
        } else if (i2 == -1) {
            this.g = charSequence;
            this.h = message;
            this.H = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void a(Drawable drawable) {
        this.L = drawable;
        this.K = 0;
        ImageView imageView = this.M;
        if (imageView == null) {
            return;
        }
        if (drawable != null) {
            imageView.setVisibility(0);
            this.M.setImageDrawable(drawable);
            return;
        }
        imageView.setVisibility(8);
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        this.A = view;
        this.B = 0;
        this.G = true;
        this.C = i2;
        this.D = i3;
        this.E = i4;
        this.F = i5;
    }

    /* access modifiers changed from: protected */
    public void a(ViewGroup viewGroup) {
        if (this.P != null) {
            viewGroup.addView(this.P, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f1326b.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.M = (ImageView) this.f1326b.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.c)) || !this.R) {
            this.f1326b.findViewById(R.id.title_template).setVisibility(8);
            this.M.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        this.N = (TextView) this.f1326b.findViewById(R.id.alertTitle);
        this.N.setText(this.c);
        int i2 = this.K;
        if (i2 != 0) {
            this.M.setImageResource(i2);
            return;
        }
        Drawable drawable = this.L;
        if (drawable != null) {
            this.M.setImageDrawable(drawable);
            return;
        }
        this.N.setPadding(this.M.getPaddingLeft(), this.M.getPaddingTop(), this.M.getPaddingRight(), this.M.getPaddingBottom());
        this.M.setVisibility(8);
    }

    public void a(CharSequence charSequence) {
        this.c = charSequence;
        TextView textView = this.N;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.o;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    /* access modifiers changed from: protected */
    public int b() {
        int i2 = this.Q;
        return i2 == 0 ? this.r : this.S == 1 ? i2 : this.r;
    }

    public void b(int i2) {
        this.L = null;
        this.K = i2;
        ImageView imageView = this.M;
        if (imageView == null) {
            return;
        }
        if (i2 != 0) {
            imageView.setVisibility(0);
            this.M.setImageResource(this.K);
            return;
        }
        imageView.setVisibility(8);
    }

    public void b(View view) {
        this.P = view;
    }

    /* access modifiers changed from: protected */
    public void b(ViewGroup viewGroup) {
        this.o = (ScrollView) this.f1326b.findViewById(R.id.scrollView);
        this.o.setFocusable(false);
        this.o.setNestedScrollingEnabled(false);
        this.O = (TextView) viewGroup.findViewById(16908299);
        TextView textView = this.O;
        if (textView != null) {
            CharSequence charSequence = this.d;
            if (charSequence != null) {
                textView.setText(charSequence);
                return;
            }
            textView.setVisibility(8);
            this.o.removeView(this.O);
            if (this.e != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.o.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.o);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    public void b(CharSequence charSequence) {
        this.d = charSequence;
        TextView textView = this.O;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean b(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.o;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    public int c(int i2) {
        TypedValue typedValue = new TypedValue();
        this.y.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView c() {
        return this.e;
    }

    public void c(View view) {
        this.A = view;
        this.B = 0;
        this.G = false;
    }

    /* access modifiers changed from: protected */
    public void c(ViewGroup viewGroup) {
        boolean z2;
        this.f = (Button) viewGroup.findViewById(16908313);
        this.f.setOnClickListener(this.U);
        boolean z3 = true;
        if (!TextUtils.isEmpty(this.g) || this.H != null) {
            this.f.setText(this.g);
            Drawable drawable = this.H;
            if (drawable != null) {
                int i2 = this.z;
                drawable.setBounds(0, 0, i2, i2);
                this.f.setCompoundDrawables(this.H, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            this.f.setVisibility(0);
            z2 = true;
        } else {
            this.f.setVisibility(8);
            z2 = false;
        }
        this.i = (Button) viewGroup.findViewById(16908314);
        this.i.setOnClickListener(this.U);
        if (!TextUtils.isEmpty(this.j) || this.I != null) {
            this.i.setText(this.j);
            Drawable drawable2 = this.I;
            if (drawable2 != null) {
                int i3 = this.z;
                drawable2.setBounds(0, 0, i3, i3);
                this.i.setCompoundDrawables(this.I, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            this.i.setVisibility(0);
            z2 |= true;
        } else {
            this.i.setVisibility(8);
        }
        this.l = (Button) viewGroup.findViewById(16908315);
        this.l.setOnClickListener(this.U);
        if (!TextUtils.isEmpty(this.m) || this.J != null) {
            this.l.setText(this.m);
            Drawable drawable3 = this.H;
            if (drawable3 != null) {
                int i4 = this.z;
                drawable3.setBounds(0, 0, i4, i4);
                this.f.setCompoundDrawables(this.H, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            this.l.setVisibility(0);
            z2 |= true;
        } else {
            this.l.setVisibility(8);
        }
        if (a(this.y)) {
            if (z2) {
                a(this.f);
            } else if (z2) {
                a(this.i);
            } else if (z2) {
                a(this.l);
            }
        }
        if (!z2) {
            z3 = false;
        }
        if (!z3) {
            viewGroup.setVisibility(8);
        }
    }

    public Button d(int i2) {
        if (i2 == -3) {
            return this.l;
        }
        if (i2 == -2) {
            return this.i;
        }
        if (i2 != -1) {
            return null;
        }
        return this.f;
    }

    /* access modifiers changed from: protected */
    public void d() {
        View findViewById = this.f1326b.findViewById(R.id.parentPanel);
        View findViewById2 = findViewById.findViewById(R.id.topPanel);
        View findViewById3 = findViewById.findViewById(R.id.contentPanel);
        View findViewById4 = findViewById.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById.findViewById(R.id.customPanel);
        d(viewGroup);
        View findViewById5 = viewGroup.findViewById(R.id.topPanel);
        View findViewById6 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById7 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup a2 = a(findViewById5, findViewById2);
        ViewGroup a3 = a(findViewById6, findViewById3);
        ViewGroup a4 = a(findViewById7, findViewById4);
        b(a3);
        c(a4);
        a(a2);
        char c2 = 0;
        boolean z2 = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z3 = (a2 == null || a2.getVisibility() == 8) ? false : true;
        boolean z4 = (a4 == null || a4.getVisibility() == 8) ? false : true;
        if (!z4 && a3 != null) {
            View findViewById8 = a3.findViewById(R.id.textSpacerNoButtons);
            if (findViewById8 != null) {
                findViewById8.setVisibility(0);
            }
        }
        if (z3) {
            ScrollView scrollView = this.o;
            if (scrollView != null) {
                scrollView.setClipToPadding(true);
            }
            View view = null;
            if (!(this.d == null && this.e == null)) {
                view = a2.findViewById(R.id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (a3 != null) {
            View findViewById9 = a3.findViewById(R.id.textSpacerNoTitle);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        }
        ListView listView = this.e;
        if (listView instanceof d) {
            ((d) listView).a(z3, z4);
        }
        if (!z2) {
            View view2 = this.e;
            if (view2 == null) {
                view2 = this.o;
            }
            if (view2 != null) {
                if (z4) {
                    c2 = 2;
                }
                a(a3, view2, z3 | c2 ? 1 : 0, 3);
            }
        }
        ListView listView2 = this.e;
        if (listView2 != null) {
            ListAdapter listAdapter = this.p;
            if (listAdapter != null) {
                listView2.setAdapter(listAdapter);
                int i2 = this.q;
                if (i2 > -1) {
                    listView2.setItemChecked(i2, true);
                    listView2.setSelection(i2);
                }
            }
        }
    }

    public int e() {
        return this.T;
    }

    public void e(int i2) {
        this.T = i2;
    }
}
