package color.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.CollapsibleActionView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.ag;
import androidx.appcompat.widget.au;
import androidx.appcompat.widget.ba;
import color.support.v7.appcompat.R;
import color.support.v7.internal.widget.f;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView extends ag implements CollapsibleActionView {
    static final a l = new a();
    private static final boolean n = (Build.VERSION.SDK_INT >= 8);
    private static final boolean o;
    private View.OnClickListener A;
    private boolean B;
    /* access modifiers changed from: private */
    public androidx.c.a.a C;
    private boolean D;
    private CharSequence E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private CharSequence J;
    private CharSequence K;
    private int L;
    private Bundle M;
    private final f N;
    private Runnable O;
    private final Runnable P;
    private Runnable Q;
    private final WeakHashMap<String, Drawable.ConstantState> R;
    private final View.OnClickListener S;
    private final TextView.OnEditorActionListener T;
    private final AdapterView.OnItemClickListener U;
    private final AdapterView.OnItemSelectedListener V;
    private TextWatcher W;

    /* renamed from: a  reason: collision with root package name */
    public final SearchAutoComplete f1410a;
    private boolean aa;
    /* access modifiers changed from: private */
    public d ab;

    /* renamed from: b  reason: collision with root package name */
    public final View f1411b;
    public final View c;
    public final ImageView d;
    public final ImageView e;
    public final ImageView f;
    public final ImageView g;
    public c h;
    public boolean i;
    public boolean j;
    public SearchableInfo k;
    View.OnKeyListener m;
    private final View p;
    private final View q;
    private final ImageView r;
    private final Drawable s;
    private final int t;
    private final int u;
    private final Intent v;
    private final Intent w;
    private b x;
    /* access modifiers changed from: private */
    public View.OnFocusChangeListener y;
    private e z;

    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f1424a;

        /* renamed from: b  reason: collision with root package name */
        private int f1425b;
        private SearchView c;

        public SearchAutoComplete(Context context) {
            this(context, (AttributeSet) null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 16842859);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1424a = new Runnable() {
                public void run() {
                    SearchAutoComplete.this.a();
                }
            };
            this.f1425b = getThreshold();
        }

        /* access modifiers changed from: private */
        public boolean b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
        }

        public boolean enoughToFilter() {
            return this.f1425b <= 0 || super.enoughToFilter();
        }

        /* access modifiers changed from: protected */
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.c.i();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            boolean onKeyPreIme = super.onKeyPreIme(i, keyEvent);
            if (onKeyPreIme && i == 4 && keyEvent.getAction() == 1) {
                this.c.setImeVisibility(false);
            }
            return onKeyPreIme;
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.c.hasFocus() && getVisibility() == 0) {
                post(this.f1424a);
                if (SearchView.a(getContext())) {
                    SearchView.l.a(this, true);
                }
            }
        }

        public void performCompletion() {
        }

        /* access modifiers changed from: protected */
        public void replaceText(CharSequence charSequence) {
        }

        /* access modifiers changed from: package-private */
        public void setSearchView(SearchView searchView) {
            this.c = searchView;
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1425b = i;
        }
    }

    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private Method f1427a;

        /* renamed from: b  reason: collision with root package name */
        private Method f1428b;
        private Method c;
        private Method d;

        a() {
            try {
                this.f1427a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1427a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.f1428b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1428b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            Class<AutoCompleteTextView> cls = AutoCompleteTextView.class;
            try {
                this.c = cls.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            Class<InputMethodManager> cls2 = InputMethodManager.class;
            try {
                this.d = cls2.getMethod("showSoftInputUnchecked", new Class[]{Integer.TYPE, ResultReceiver.class});
                this.d.setAccessible(true);
            } catch (NoSuchMethodException unused4) {
            }
        }

        /* access modifiers changed from: package-private */
        public void a(InputMethodManager inputMethodManager, View view, int i) {
            Method method = this.d;
            if (method != null) {
                try {
                    method.invoke(inputMethodManager, new Object[]{Integer.valueOf(i), null});
                    return;
                } catch (Exception unused) {
                }
            }
            inputMethodManager.showSoftInput(view, i);
        }

        /* access modifiers changed from: package-private */
        public void a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f1427a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            Method method = this.c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[]{Boolean.valueOf(z)});
                } catch (Exception unused) {
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f1428b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface b {
        boolean a();
    }

    public interface c {
        boolean a(String str);

        boolean b(String str);
    }

    public interface d {
        void a();
    }

    public interface e {
        boolean a(int i);

        boolean b(int i);
    }

    static {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT < 29 && (Build.VERSION.SDK_INT != 28 || !"Q".equals(Build.VERSION.CODENAME))) {
            z2 = false;
        }
        o = z2;
    }

    public SearchView(Context context) {
        this(context, (AttributeSet) null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.O = new Runnable() {
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    SearchView.l.a(inputMethodManager, SearchView.this, 0);
                }
            }
        };
        this.P = new Runnable() {
            public void run() {
                SearchView.this.c();
            }
        };
        this.Q = new Runnable() {
            public void run() {
                if (SearchView.this.C != null && (SearchView.this.C instanceof f)) {
                    SearchView.this.C.a((Cursor) null);
                }
            }
        };
        this.R = new WeakHashMap<>();
        this.S = new View.OnClickListener() {
            public void onClick(View view) {
                if (view == SearchView.this.d) {
                    SearchView.this.g();
                } else if (view == SearchView.this.f) {
                    SearchView.this.f();
                } else if (view == SearchView.this.e) {
                    SearchView.this.d();
                } else if (view == SearchView.this.g) {
                    SearchView.this.h();
                } else if (view == SearchView.this.f1410a) {
                    SearchView.this.k();
                    if (SearchView.this.ab != null) {
                        SearchView.this.ab.a();
                    }
                }
            }
        };
        this.m = new View.OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (SearchView.this.k == null) {
                    return false;
                }
                if (SearchView.this.f1410a.isPopupShowing() && SearchView.this.f1410a.getListSelection() != -1) {
                    return SearchView.this.a(view, i, keyEvent);
                }
                if (SearchView.this.f1410a.b() || !color.support.a.a.c.a(keyEvent) || keyEvent.getAction() != 1 || i != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView = SearchView.this;
                searchView.a(0, (String) null, searchView.f1410a.getText().toString());
                return true;
            }
        };
        this.T = new TextView.OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                SearchView.this.d();
                return true;
            }
        };
        this.U = new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean unused = SearchView.this.a(i, 0, (String) null);
            }
        };
        this.V = new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                boolean unused = SearchView.this.a(i);
            }

            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.W = new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchView.this.c(charSequence);
            }
        };
        this.aa = true;
        this.ab = null;
        au a2 = au.a(context, attributeSet, R.styleable.SearchView, i2, 0);
        this.N = f.a(context);
        LayoutInflater.from(context).inflate(a2.g(R.styleable.SearchView_layout, R.layout.abc_search_view), this, true);
        this.f1410a = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f1410a.setSearchView(this);
        this.p = findViewById(R.id.search_edit_frame);
        this.f1411b = findViewById(R.id.search_plate);
        this.c = findViewById(R.id.submit_area);
        this.d = (ImageView) findViewById(R.id.search_button);
        this.e = (ImageView) findViewById(R.id.search_go_btn);
        this.f = (ImageView) findViewById(R.id.search_close_btn);
        this.g = (ImageView) findViewById(R.id.search_voice_btn);
        this.r = (ImageView) findViewById(R.id.search_mag_icon);
        this.f1411b.setBackgroundDrawable(a2.a(R.styleable.SearchView_queryBackground));
        this.c.setBackgroundDrawable(a2.a(R.styleable.SearchView_submitBackground));
        this.d.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.e.setImageDrawable(a2.a(R.styleable.SearchView_goIcon));
        this.f.setImageDrawable(a2.a(R.styleable.SearchView_closeIcon));
        this.g.setImageDrawable(a2.a(R.styleable.SearchView_voiceIcon));
        this.r.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.s = a2.a(R.styleable.SearchView_searchHintIcon);
        this.t = a2.g(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.u = a2.g(R.styleable.SearchView_commitIcon, 0);
        this.d.setOnClickListener(this.S);
        this.f.setOnClickListener(this.S);
        this.e.setOnClickListener(this.S);
        this.g.setOnClickListener(this.S);
        this.f1410a.setOnClickListener(this.S);
        this.f1410a.addTextChangedListener(this.W);
        this.f1410a.setOnEditorActionListener(this.T);
        this.f1410a.setOnItemClickListener(this.U);
        this.f1410a.setOnItemSelectedListener(this.V);
        this.f1410a.setOnKeyListener(this.m);
        this.f1410a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.y != null) {
                    SearchView.this.y.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(R.styleable.SearchView_iconifiedByDefault, true));
        int e2 = a2.e(R.styleable.SearchView_android_maxWidth, -1);
        if (e2 != -1) {
            setMaxWidth(e2);
        }
        CharSequence c2 = a2.c(R.styleable.SearchView_queryHint);
        if (!TextUtils.isEmpty(c2)) {
            setQueryHint(c2);
        }
        int a3 = a2.a(R.styleable.SearchView_android_imeOptions, -1);
        if (a3 != -1) {
            setImeOptions(a3);
        }
        int a4 = a2.a(R.styleable.SearchView_android_inputType, -1);
        if (a4 != -1) {
            setInputType(a4);
        }
        setFocusable(a2.a(R.styleable.SearchView_android_focusable, true));
        a2.b();
        this.v = new Intent("android.speech.action.WEB_SEARCH");
        this.v.addFlags(268435456);
        this.v.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.w = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.w.addFlags(268435456);
        this.q = findViewById(this.f1410a.getDropDownAnchor());
        if (this.q != null) {
            if (Build.VERSION.SDK_INT >= 11) {
                l();
            } else {
                m();
            }
        }
        a(this.i);
        r();
        this.f.setBackgroundDrawable((Drawable) null);
    }

    @TargetApi(8)
    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private Intent a(Cursor cursor, int i2, String str) {
        int i3;
        try {
            String a2 = f.a(cursor, "suggest_intent_action");
            if (a2 == null && Build.VERSION.SDK_INT >= 8) {
                a2 = this.k.getSuggestIntentAction();
            }
            if (a2 == null) {
                a2 = "android.intent.action.SEARCH";
            }
            String str2 = a2;
            String a3 = f.a(cursor, "suggest_intent_data");
            if (n && a3 == null) {
                a3 = this.k.getSuggestIntentData();
            }
            if (a3 != null) {
                if (f.a(cursor, "suggest_intent_data_id") != null) {
                    a3 = a3 + "/" + Uri.encode(r3);
                }
            }
            return a(str2, a3 == null ? null : Uri.parse(a3), f.a(cursor, "suggest_intent_extra_data"), f.a(cursor, "suggest_intent_query"), i2, str);
        } catch (RuntimeException e2) {
            try {
                i3 = cursor.getPosition();
            } catch (RuntimeException unused) {
                i3 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i3 + " returned exception.", e2);
            return null;
        }
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.K);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.M;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        if (n) {
            intent.setComponent(this.k.getSearchActivity());
        }
        return intent;
    }

    private void a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e2) {
                Log.e("SearchView", "Failed launch activity: " + intent, e2);
            }
        }
    }

    private void a(boolean z2) {
        this.B = z2;
        boolean z3 = false;
        int i2 = z2 ? 0 : 8;
        boolean z4 = !TextUtils.isEmpty(this.f1410a.getText());
        this.d.setVisibility(i2);
        b(z4);
        this.p.setVisibility(z2 ? 8 : 0);
        this.r.setVisibility(8);
        b();
        if (!z4) {
            z3 = true;
        }
        c(z3);
        p();
    }

    /* access modifiers changed from: private */
    public boolean a(int i2) {
        e eVar = this.z;
        if (eVar != null && eVar.a(i2)) {
            return false;
        }
        e(i2);
        return true;
    }

    /* access modifiers changed from: private */
    public boolean a(int i2, int i3, String str) {
        e eVar = this.z;
        if (eVar != null && eVar.b(i2)) {
            return false;
        }
        b(i2, 0, (String) null);
        setImeVisibility(false);
        e();
        return true;
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* access modifiers changed from: private */
    public boolean a(View view, int i2, KeyEvent keyEvent) {
        if (this.k != null && this.C != null && keyEvent.getAction() == 0 && color.support.a.a.c.a(keyEvent)) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return a(this.f1410a.getListSelection(), 0, (String) null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f1410a.setSelection(i2 == 21 ? 0 : this.f1410a.length());
                this.f1410a.setListSelection(0);
                this.f1410a.clearListSelection();
                l.a(this.f1410a, true);
                return true;
            } else if (i2 != 19 || this.f1410a.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    @TargetApi(8)
    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        String str;
        String str2;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.M;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        String str3 = "free_form";
        int i2 = 1;
        String str4 = null;
        if (Build.VERSION.SDK_INT >= 8) {
            Resources resources = getResources();
            if (searchableInfo.getVoiceLanguageModeId() != 0) {
                str3 = resources.getString(searchableInfo.getVoiceLanguageModeId());
            }
            str = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
            str2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
            if (searchableInfo.getVoiceMaxResults() != 0) {
                i2 = searchableInfo.getVoiceMaxResults();
            }
        } else {
            str2 = null;
            str = null;
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str3);
        intent3.putExtra("android.speech.extra.PROMPT", str);
        intent3.putExtra("android.speech.extra.LANGUAGE", str2);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i2);
        if (searchActivity != null) {
            str4 = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str4);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private void b(boolean z2) {
        this.e.setVisibility((!this.D || !o() || !hasFocus() || (!z2 && this.I)) ? 8 : 0);
    }

    private boolean b(int i2, int i3, String str) {
        Cursor a2 = this.C.a();
        if (a2 == null || !a2.moveToPosition(i2)) {
            return false;
        }
        a(a(a2, i3, str));
        return true;
    }

    private void c(boolean z2) {
        int i2;
        if (!this.I || a() || !z2) {
            i2 = 8;
        } else {
            i2 = 0;
            this.e.setVisibility(8);
        }
        this.g.setVisibility(i2);
    }

    private void e(int i2) {
        Editable text = this.f1410a.getText();
        Cursor a2 = this.C.a();
        if (a2 != null) {
            if (a2.moveToPosition(i2)) {
                CharSequence b2 = this.C.b(a2);
                if (b2 != null) {
                    setQuery(b2);
                } else {
                    setQuery(text);
                }
            } else {
                setQuery(text);
            }
        }
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.support_abc_search_view_preferred_width);
    }

    @TargetApi(11)
    private void l() {
        this.q.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                SearchView.this.t();
            }
        });
    }

    private void m() {
        this.q.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                SearchView.this.t();
            }
        });
    }

    @TargetApi(8)
    private boolean n() {
        SearchableInfo searchableInfo = this.k;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.k.getVoiceSearchLaunchWebSearch()) {
            intent = this.v;
        } else if (this.k.getVoiceSearchLaunchRecognizer()) {
            intent = this.w;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD) == null) ? false : true;
    }

    private boolean o() {
        return (this.D || this.I) && !a();
    }

    private void p() {
        this.c.setVisibility((!o() || !(this.e.getVisibility() == 0 || this.g.getVisibility() == 0)) ? 8 : 0);
    }

    private void q() {
        post(this.P);
    }

    private void r() {
        CharSequence charSequence = this.E;
        if (charSequence != null) {
            this.f1410a.setHint(b(charSequence));
            return;
        }
        if (n) {
            SearchableInfo searchableInfo = this.k;
            if (searchableInfo != null) {
                String str = null;
                int hintId = searchableInfo.getHintId();
                if (hintId != 0) {
                    str = getContext().getString(hintId);
                }
                if (str != null) {
                    this.f1410a.setHint(b((CharSequence) str));
                    return;
                }
                return;
            }
        }
        this.f1410a.setHint(b((CharSequence) ""));
    }

    @TargetApi(8)
    private void s() {
        this.f1410a.setThreshold(this.k.getSuggestThreshold());
        this.f1410a.setImeOptions(this.k.getImeOptions());
        int inputType = this.k.getInputType();
        int i2 = 1;
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.k.getSuggestAuthority() != null) {
                inputType = inputType | STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD | STMobileHumanActionNative.ST_MOBILE_ENABLE_INPUT_CUSTOM;
            }
        }
        this.f1410a.setInputType(inputType);
        androidx.c.a.a aVar = this.C;
        if (aVar != null) {
            aVar.a((Cursor) null);
        }
        if (this.k.getSuggestAuthority() != null) {
            this.C = new f(getContext(), this, this.k, this.R);
            this.f1410a.setAdapter(this.C);
            f fVar = (f) this.C;
            if (this.F) {
                i2 = 2;
            }
            fVar.a(i2);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f1410a.setText(charSequence);
        this.f1410a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* access modifiers changed from: private */
    public void t() {
        if (this.q.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1411b.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = ba.a(this);
            int dimensionPixelSize = this.i ? resources.getDimensionPixelSize(R.dimen.support_abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R.dimen.support_abc_dropdownitem_text_padding_left) : 0;
            this.f1410a.getDropDownBackground().getPadding(rect);
            this.f1410a.setDropDownHorizontalOffset(a2 ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1410a.setDropDownWidth((((this.q.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i2, str));
    }

    /* access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void a(CharSequence charSequence, boolean z2) {
        this.f1410a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1410a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.K = charSequence;
        }
        if (z2 && !TextUtils.isEmpty(charSequence)) {
            d();
        }
    }

    public boolean a() {
        return this.B;
    }

    public CharSequence b(CharSequence charSequence) {
        return charSequence;
    }

    public void b() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f1410a.getText());
        int i2 = 0;
        if (!z3 && (!this.i || this.j)) {
            z2 = false;
        }
        ImageView imageView = this.f;
        if (!z2) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.f.getDrawable();
        if (drawable != null) {
            drawable.setState(z3 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    public void c() {
        boolean hasFocus = this.f1410a.hasFocus();
        int[] iArr = this.f1410a.isEnabled() ? hasFocus ? FOCUSED_STATE_SET : ENABLED_FOCUSED_STATE_SET : hasFocus ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f1411b.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.c.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public void c(CharSequence charSequence) {
        Editable text = this.f1410a.getText();
        this.K = text;
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(text);
        b(z3);
        if (z3) {
            z2 = false;
        }
        c(z2);
        b();
        p();
        if (this.h != null && !TextUtils.equals(charSequence, this.J)) {
            this.h.b(charSequence.toString());
        }
        this.J = charSequence.toString();
    }

    public void clearFocus() {
        this.G = true;
        setImeVisibility(false);
        super.clearFocus();
        this.f1410a.clearFocus();
        this.G = false;
    }

    public void d() {
        Editable text = this.f1410a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            c cVar = this.h;
            if (cVar == null || !cVar.a(text.toString())) {
                if (this.k != null) {
                    a(0, (String) null, text.toString());
                }
                setImeVisibility(false);
                e();
            }
        }
    }

    public void e() {
        this.f1410a.dismissDropDown();
    }

    public void f() {
        if (!TextUtils.isEmpty(this.f1410a.getText())) {
            this.f1410a.setText("");
            this.f1410a.requestFocus();
            setImeVisibility(true);
        } else if (this.i) {
            b bVar = this.x;
            if (bVar == null || !bVar.a()) {
                clearFocus();
                a(true);
            }
        }
    }

    public void g() {
        a(false);
        this.f1410a.requestFocus();
        setImeVisibility(true);
        View.OnClickListener onClickListener = this.A;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public int getImeOptions() {
        return this.f1410a.getImeOptions();
    }

    public int getInputType() {
        return this.f1410a.getInputType();
    }

    public int getMaxWidth() {
        return this.H;
    }

    public CharSequence getQuery() {
        return this.f1410a.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.E;
        if (charSequence != null) {
            return charSequence;
        }
        if (!n) {
            return null;
        }
        SearchableInfo searchableInfo = this.k;
        if (searchableInfo == null) {
            return null;
        }
        int hintId = searchableInfo.getHintId();
        if (hintId != 0) {
            return getContext().getString(hintId);
        }
        return null;
    }

    public AutoCompleteTextView getSearchAutoComplete() {
        return this.f1410a;
    }

    /* access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.u;
    }

    /* access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.t;
    }

    public androidx.c.a.a getSuggestionsAdapter() {
        return this.C;
    }

    public void h() {
        SearchableInfo searchableInfo = this.k;
        if (searchableInfo != null) {
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(a(this.v, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(b(this.w, searchableInfo));
                }
            } catch (ActivityNotFoundException unused) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        a(a());
        q();
        if (this.f1410a.hasFocus()) {
            k();
        }
    }

    public void k() {
        if (o) {
            SearchAutoComplete searchAutoComplete = this.f1410a;
            if (searchAutoComplete != null) {
                searchAutoComplete.refreshAutoCompleteResults();
                return;
            }
            return;
        }
        l.a(this.f1410a);
        l.b(this.f1410a);
    }

    public void onActionViewCollapsed() {
        a((CharSequence) "", false);
        clearFocus();
        a(true);
        this.f1410a.setImeOptions(this.L);
        this.j = false;
    }

    public void onActionViewExpanded() {
        if (!this.j) {
            this.j = true;
            this.L = this.f1410a.getImeOptions();
            this.f1410a.setImeOptions(this.L | 33554432);
            this.f1410a.setText("");
            setIconified(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.P);
        post(this.Q);
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (a()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.H;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.H;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824) {
            int i5 = this.H;
            if (i5 > 0) {
                size = Math.min(i5, size);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i3);
    }

    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        q();
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.G || !isFocusable()) {
            return false;
        }
        if (a()) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.f1410a.requestFocus(i2, rect);
        if (requestFocus) {
            a(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.M = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            f();
        } else {
            g();
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.i != z2) {
            this.i = z2;
            a(z2);
            r();
        }
    }

    public void setImeOptions(int i2) {
        this.f1410a.setImeOptions(i2);
    }

    public void setImeVisibility(boolean z2) {
        if (z2) {
            post(this.O);
            return;
        }
        removeCallbacks(this.O);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    public void setInputType(int i2) {
        this.f1410a.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.H = i2;
        requestLayout();
    }

    public void setOnCloseListener(b bVar) {
        this.x = bVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.y = onFocusChangeListener;
    }

    public void setOnQueryTextListener(c cVar) {
        this.h = cVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.A = onClickListener;
    }

    public void setOnSearchViewClickListener(d dVar) {
        this.ab = dVar;
    }

    public void setOnSuggestionListener(e eVar) {
        this.z = eVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.E = charSequence;
        r();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.F = z2;
        androidx.c.a.a aVar = this.C;
        if (aVar instanceof f) {
            ((f) aVar).a(z2 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.k = searchableInfo;
        if (this.k != null) {
            if (n) {
                s();
            }
            r();
        }
        this.I = n && n();
        if (this.I) {
            this.f1410a.setPrivateImeOptions("nm");
        }
        a(a());
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.D = z2;
        a(a());
    }

    public void setSuggestionsAdapter(androidx.c.a.a aVar) {
        this.C = aVar;
        this.f1410a.setAdapter(this.C);
    }
}
