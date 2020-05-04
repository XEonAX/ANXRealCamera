package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.g.u;
import androidx.customview.view.AbsSavedState;
import com.sensetime.stmobile.STCommon;
import com.sensetime.stmobile.STMobileHumanActionNative;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView extends ag implements androidx.appcompat.view.c {
    static final a i = new a();
    private c A;
    private b B;
    private d C;
    private View.OnClickListener D;
    private boolean E;
    private boolean F;
    private boolean G;
    private CharSequence H;
    private boolean I;
    private boolean J;
    private int K;
    private boolean L;
    private CharSequence M;
    private CharSequence N;
    private boolean O;
    private int P;
    private Bundle Q;
    private final Runnable R;
    private Runnable S;
    private final WeakHashMap<String, Drawable.ConstantState> T;
    private final View.OnClickListener U;
    private final TextView.OnEditorActionListener V;
    private final AdapterView.OnItemClickListener W;

    /* renamed from: a  reason: collision with root package name */
    final SearchAutoComplete f268a;
    private final AdapterView.OnItemSelectedListener aa;
    private TextWatcher ab;

    /* renamed from: b  reason: collision with root package name */
    final ImageView f269b;
    final ImageView c;
    final ImageView d;
    final ImageView e;
    View.OnFocusChangeListener f;
    androidx.c.a.a g;
    SearchableInfo h;
    View.OnKeyListener j;
    private final View k;
    private final View l;
    private final View m;
    private final View n;
    private e o;
    private Rect p;
    private Rect q;
    private int[] r;
    private int[] s;
    private final ImageView t;
    private final Drawable u;
    private final int v;
    private final int w;
    private final Intent x;
    private final Intent y;
    private final CharSequence z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isIconified;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue((ClassLoader) null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }
    }

    public static class SearchAutoComplete extends d {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f280a;

        /* renamed from: b  reason: collision with root package name */
        private int f281b;
        private SearchView c;
        private boolean d;

        public SearchAutoComplete(Context context) {
            this(context, (AttributeSet) null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f280a = new Runnable() {
                public void run() {
                    SearchAutoComplete.this.b();
                }
            };
            this.f281b = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        /* access modifiers changed from: package-private */
        public boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            if (this.d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.d = false;
            }
        }

        public boolean enoughToFilter() {
            return this.f281b <= 0 || super.enoughToFilter();
        }

        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.d) {
                removeCallbacks(this.f280a);
                post(this.f280a);
            }
            return onCreateInputConnection;
        }

        /* access modifiers changed from: protected */
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, (float) getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        /* access modifiers changed from: protected */
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.c.i();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.c.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.c.hasFocus() && getVisibility() == 0) {
                this.d = true;
                if (SearchView.a(getContext())) {
                    SearchView.i.a(this, true);
                }
            }
        }

        public void performCompletion() {
        }

        /* access modifiers changed from: protected */
        public void replaceText(CharSequence charSequence) {
        }

        /* access modifiers changed from: package-private */
        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.d = false;
                removeCallbacks(this.f280a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.d = false;
                removeCallbacks(this.f280a);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.d = true;
            }
        }

        /* access modifiers changed from: package-private */
        public void setSearchView(SearchView searchView) {
            this.c = searchView;
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f281b = i;
        }
    }

    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private Method f283a;

        /* renamed from: b  reason: collision with root package name */
        private Method f284b;
        private Method c;

        a() {
            try {
                this.f283a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f283a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                this.f284b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f284b.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            Class<AutoCompleteTextView> cls = AutoCompleteTextView.class;
            try {
                this.c = cls.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.c.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* access modifiers changed from: package-private */
        public void a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f283a;
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
            Method method = this.f284b;
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
        boolean a(int i);

        boolean b(int i);
    }

    private static class e extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        private final View f285a;

        /* renamed from: b  reason: collision with root package name */
        private final Rect f286b = new Rect();
        private final Rect c = new Rect();
        private final Rect d = new Rect();
        private final int e;
        private boolean f;

        public e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect2);
            this.f285a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f286b.set(rect);
            this.d.set(rect);
            Rect rect3 = this.d;
            int i = this.e;
            rect3.inset(-i, -i);
            this.c.set(rect2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z = this.f;
                    if (z && !this.d.contains(x, y)) {
                        z2 = false;
                    }
                    if (z) {
                        return false;
                    }
                    if (!z2 || this.c.contains(x, y)) {
                        motionEvent.setLocation((float) (x - this.c.left), (float) (y - this.c.top));
                    } else {
                        motionEvent.setLocation((float) (this.f285a.getWidth() / 2), (float) (this.f285a.getHeight() / 2));
                    }
                    return this.f285a.dispatchTouchEvent(motionEvent);
                } else if (action == 3) {
                    z = this.f;
                    this.f = false;
                    if (z) {
                    }
                }
            } else if (this.f286b.contains(x, y)) {
                this.f = true;
                z = true;
                if (z) {
                }
            }
            z = false;
            if (z) {
            }
        }
    }

    public SearchView(Context context) {
        this(context, (AttributeSet) null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.p = new Rect();
        this.q = new Rect();
        this.r = new int[2];
        this.s = new int[2];
        this.R = new Runnable() {
            public void run() {
                SearchView.this.d();
            }
        };
        this.S = new Runnable() {
            public void run() {
                if (SearchView.this.g instanceof ao) {
                    SearchView.this.g.a((Cursor) null);
                }
            }
        };
        this.T = new WeakHashMap<>();
        this.U = new View.OnClickListener() {
            public void onClick(View view) {
                if (view == SearchView.this.f269b) {
                    SearchView.this.g();
                } else if (view == SearchView.this.d) {
                    SearchView.this.f();
                } else if (view == SearchView.this.c) {
                    SearchView.this.e();
                } else if (view == SearchView.this.e) {
                    SearchView.this.h();
                } else if (view == SearchView.this.f268a) {
                    SearchView.this.l();
                }
            }
        };
        this.j = new View.OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (SearchView.this.h == null) {
                    return false;
                }
                if (SearchView.this.f268a.isPopupShowing() && SearchView.this.f268a.getListSelection() != -1) {
                    return SearchView.this.a(view, i, keyEvent);
                }
                if (SearchView.this.f268a.a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView = SearchView.this;
                searchView.a(0, (String) null, searchView.f268a.getText().toString());
                return true;
            }
        };
        this.V = new TextView.OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                SearchView.this.e();
                return true;
            }
        };
        this.W = new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                SearchView.this.a(i, 0, (String) null);
            }
        };
        this.aa = new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                SearchView.this.a(i);
            }

            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.ab = new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchView.this.b(charSequence);
            }
        };
        au a2 = au.a(context, attributeSet, R.styleable.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(a2.g(R.styleable.SearchView_layout, R.layout.abc_search_view), this, true);
        this.f268a = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f268a.setSearchView(this);
        this.k = findViewById(R.id.search_edit_frame);
        this.l = findViewById(R.id.search_plate);
        this.m = findViewById(R.id.submit_area);
        this.f269b = (ImageView) findViewById(R.id.search_button);
        this.c = (ImageView) findViewById(R.id.search_go_btn);
        this.d = (ImageView) findViewById(R.id.search_close_btn);
        this.e = (ImageView) findViewById(R.id.search_voice_btn);
        this.t = (ImageView) findViewById(R.id.search_mag_icon);
        u.a(this.l, a2.a(R.styleable.SearchView_queryBackground));
        u.a(this.m, a2.a(R.styleable.SearchView_submitBackground));
        this.f269b.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.c.setImageDrawable(a2.a(R.styleable.SearchView_goIcon));
        this.d.setImageDrawable(a2.a(R.styleable.SearchView_closeIcon));
        this.e.setImageDrawable(a2.a(R.styleable.SearchView_voiceIcon));
        this.t.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.u = a2.a(R.styleable.SearchView_searchHintIcon);
        aw.a(this.f269b, getResources().getString(R.string.abc_searchview_description_search));
        this.v = a2.g(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.w = a2.g(R.styleable.SearchView_commitIcon, 0);
        this.f269b.setOnClickListener(this.U);
        this.d.setOnClickListener(this.U);
        this.c.setOnClickListener(this.U);
        this.e.setOnClickListener(this.U);
        this.f268a.setOnClickListener(this.U);
        this.f268a.addTextChangedListener(this.ab);
        this.f268a.setOnEditorActionListener(this.V);
        this.f268a.setOnItemClickListener(this.W);
        this.f268a.setOnItemSelectedListener(this.aa);
        this.f268a.setOnKeyListener(this.j);
        this.f268a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.f != null) {
                    SearchView.this.f.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(R.styleable.SearchView_iconifiedByDefault, true));
        int e2 = a2.e(R.styleable.SearchView_android_maxWidth, -1);
        if (e2 != -1) {
            setMaxWidth(e2);
        }
        this.z = a2.c(R.styleable.SearchView_defaultQueryHint);
        this.H = a2.c(R.styleable.SearchView_queryHint);
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
        this.x = new Intent("android.speech.action.WEB_SEARCH");
        this.x.addFlags(268435456);
        this.x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.y.addFlags(268435456);
        this.n = findViewById(this.f268a.getDropDownAnchor());
        View view = this.n;
        if (view != null) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    SearchView.this.k();
                }
            });
        }
        a(this.E);
        r();
    }

    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private Intent a(Cursor cursor, int i2, String str) {
        int i3;
        try {
            String a2 = ao.a(cursor, "suggest_intent_action");
            if (a2 == null) {
                a2 = this.h.getSuggestIntentAction();
            }
            if (a2 == null) {
                a2 = "android.intent.action.SEARCH";
            }
            String str2 = a2;
            String a3 = ao.a(cursor, "suggest_intent_data");
            if (a3 == null) {
                a3 = this.h.getSuggestIntentData();
            }
            if (a3 != null) {
                if (ao.a(cursor, "suggest_intent_data_id") != null) {
                    a3 = a3 + "/" + Uri.encode(r3);
                }
            }
            return a(str2, a3 == null ? null : Uri.parse(a3), ao.a(cursor, "suggest_intent_extra_data"), ao.a(cursor, "suggest_intent_query"), i2, str);
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
        intent.putExtra("user_query", this.N);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.Q;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.h.getSearchActivity());
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

    private void a(View view, Rect rect) {
        view.getLocationInWindow(this.r);
        getLocationInWindow(this.s);
        int[] iArr = this.r;
        int i2 = iArr[1];
        int[] iArr2 = this.s;
        int i3 = i2 - iArr2[1];
        int i4 = iArr[0] - iArr2[0];
        rect.set(i4, i3, view.getWidth() + i4, view.getHeight() + i3);
    }

    private void a(boolean z2) {
        this.F = z2;
        int i2 = 8;
        boolean z3 = false;
        int i3 = z2 ? 0 : 8;
        boolean z4 = !TextUtils.isEmpty(this.f268a.getText());
        this.f269b.setVisibility(i3);
        b(z4);
        this.k.setVisibility(z2 ? 8 : 0);
        if (this.t.getDrawable() != null && !this.E) {
            i2 = 0;
        }
        this.t.setVisibility(i2);
        p();
        if (!z4) {
            z3 = true;
        }
        c(z3);
        o();
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.Q;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i2 = 1;
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String str = null;
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i2 = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i2);
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private void b(boolean z2) {
        this.c.setVisibility((!this.G || !n() || !hasFocus() || (!z2 && this.L)) ? 8 : 0);
    }

    private boolean b(int i2, int i3, String str) {
        Cursor a2 = this.g.a();
        if (a2 == null || !a2.moveToPosition(i2)) {
            return false;
        }
        a(a(a2, i3, str));
        return true;
    }

    private CharSequence c(CharSequence charSequence) {
        if (!this.E || this.u == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f268a.getTextSize()) * 1.25d);
        this.u.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.u), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void c(boolean z2) {
        int i2;
        if (!this.L || c() || !z2) {
            i2 = 8;
        } else {
            i2 = 0;
            this.c.setVisibility(8);
        }
        this.e.setVisibility(i2);
    }

    private void e(int i2) {
        Editable text = this.f268a.getText();
        Cursor a2 = this.g.a();
        if (a2 != null) {
            if (a2.moveToPosition(i2)) {
                CharSequence b2 = this.g.b(a2);
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

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private boolean m() {
        SearchableInfo searchableInfo = this.h;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.h.getVoiceSearchLaunchWebSearch()) {
            intent = this.x;
        } else if (this.h.getVoiceSearchLaunchRecognizer()) {
            intent = this.y;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD) == null) ? false : true;
    }

    private boolean n() {
        return (this.G || this.L) && !c();
    }

    private void o() {
        this.m.setVisibility((!n() || !(this.c.getVisibility() == 0 || this.e.getVisibility() == 0)) ? 8 : 0);
    }

    private void p() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f268a.getText());
        int i2 = 0;
        if (!z3 && (!this.E || this.O)) {
            z2 = false;
        }
        ImageView imageView = this.d;
        if (!z2) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.d.getDrawable();
        if (drawable != null) {
            drawable.setState(z3 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void q() {
        post(this.R);
    }

    private void r() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f268a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(c(queryHint));
    }

    private void s() {
        this.f268a.setThreshold(this.h.getSuggestThreshold());
        this.f268a.setImeOptions(this.h.getImeOptions());
        int inputType = this.h.getInputType();
        int i2 = 1;
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.h.getSuggestAuthority() != null) {
                inputType = inputType | STCommon.ST_MOBILE_TRACKING_SINGLE_THREAD | STMobileHumanActionNative.ST_MOBILE_ENABLE_INPUT_CUSTOM;
            }
        }
        this.f268a.setInputType(inputType);
        androidx.c.a.a aVar = this.g;
        if (aVar != null) {
            aVar.a((Cursor) null);
        }
        if (this.h.getSuggestAuthority() != null) {
            this.g = new ao(getContext(), this, this.h, this.T);
            this.f268a.setAdapter(this.g);
            ao aoVar = (ao) this.g;
            if (this.I) {
                i2 = 2;
            }
            aoVar.a(i2);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f268a.setText(charSequence);
        this.f268a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    private void t() {
        this.f268a.dismissDropDown();
    }

    public void a() {
        if (!this.O) {
            this.O = true;
            this.P = this.f268a.getImeOptions();
            this.f268a.setImeOptions(this.P | 33554432);
            this.f268a.setText("");
            setIconified(false);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i2, str));
    }

    /* access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void a(CharSequence charSequence, boolean z2) {
        this.f268a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f268a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.N = charSequence;
        }
        if (z2 && !TextUtils.isEmpty(charSequence)) {
            e();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2) {
        d dVar = this.C;
        if (dVar != null && dVar.a(i2)) {
            return false;
        }
        e(i2);
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean a(int i2, int i3, String str) {
        d dVar = this.C;
        if (dVar != null && dVar.b(i2)) {
            return false;
        }
        b(i2, 0, (String) null);
        this.f268a.setImeVisibility(false);
        t();
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean a(View view, int i2, KeyEvent keyEvent) {
        if (this.h != null && this.g != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return a(this.f268a.getListSelection(), 0, (String) null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f268a.setSelection(i2 == 21 ? 0 : this.f268a.length());
                this.f268a.setListSelection(0);
                this.f268a.clearListSelection();
                i.a(this.f268a, true);
                return true;
            } else if (i2 != 19 || this.f268a.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    public void b() {
        a((CharSequence) "", false);
        clearFocus();
        a(true);
        this.f268a.setImeOptions(this.P);
        this.O = false;
    }

    /* access modifiers changed from: package-private */
    public void b(CharSequence charSequence) {
        Editable text = this.f268a.getText();
        this.N = text;
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(text);
        b(z3);
        if (z3) {
            z2 = false;
        }
        c(z2);
        p();
        o();
        if (this.A != null && !TextUtils.equals(charSequence, this.M)) {
            this.A.b(charSequence.toString());
        }
        this.M = charSequence.toString();
    }

    public boolean c() {
        return this.F;
    }

    public void clearFocus() {
        this.J = true;
        super.clearFocus();
        this.f268a.clearFocus();
        this.f268a.setImeVisibility(false);
        this.J = false;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        int[] iArr = this.f268a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* access modifiers changed from: package-private */
    public void e() {
        Editable text = this.f268a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            c cVar = this.A;
            if (cVar == null || !cVar.a(text.toString())) {
                if (this.h != null) {
                    a(0, (String) null, text.toString());
                }
                this.f268a.setImeVisibility(false);
                t();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void f() {
        if (!TextUtils.isEmpty(this.f268a.getText())) {
            this.f268a.setText("");
            this.f268a.requestFocus();
            this.f268a.setImeVisibility(true);
        } else if (this.E) {
            b bVar = this.B;
            if (bVar == null || !bVar.a()) {
                clearFocus();
                a(true);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void g() {
        a(false);
        this.f268a.requestFocus();
        this.f268a.setImeVisibility(true);
        View.OnClickListener onClickListener = this.D;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public int getImeOptions() {
        return this.f268a.getImeOptions();
    }

    public int getInputType() {
        return this.f268a.getInputType();
    }

    public int getMaxWidth() {
        return this.K;
    }

    public CharSequence getQuery() {
        return this.f268a.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.H;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.h;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.z : getContext().getText(this.h.getHintId());
    }

    /* access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.w;
    }

    /* access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.v;
    }

    public androidx.c.a.a getSuggestionsAdapter() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public void h() {
        SearchableInfo searchableInfo = this.h;
        if (searchableInfo != null) {
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(a(this.x, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(b(this.y, searchableInfo));
                }
            } catch (ActivityNotFoundException unused) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        a(c());
        q();
        if (this.f268a.hasFocus()) {
            l();
        }
    }

    /* access modifiers changed from: package-private */
    public void k() {
        if (this.n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.l.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = ba.a(this);
            int dimensionPixelSize = this.E ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f268a.getDropDownBackground().getPadding(rect);
            this.f268a.setDropDownHorizontalOffset(a2 ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f268a.setDropDownWidth((((this.n.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* access modifiers changed from: package-private */
    public void l() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f268a.refreshAutoCompleteResults();
            return;
        }
        i.a(this.f268a);
        i.b(this.f268a);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.R);
        post(this.S);
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            a((View) this.f268a, this.p);
            this.q.set(this.p.left, 0, this.p.right, i5 - i3);
            e eVar = this.o;
            if (eVar == null) {
                this.o = new e(this.q, this.p, this.f268a);
                setTouchDelegate(this.o);
                return;
            }
            eVar.a(this.q, this.p);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (c()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.K;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.K;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824) {
            int i5 = this.K;
            if (i5 > 0) {
                size = Math.min(i5, size);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        a(savedState.isIconified);
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = c();
        return savedState;
    }

    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        q();
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.J || !isFocusable()) {
            return false;
        }
        if (c()) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.f268a.requestFocus(i2, rect);
        if (requestFocus) {
            a(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.Q = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            f();
        } else {
            g();
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.E != z2) {
            this.E = z2;
            a(z2);
            r();
        }
    }

    public void setImeOptions(int i2) {
        this.f268a.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f268a.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.K = i2;
        requestLayout();
    }

    public void setOnCloseListener(b bVar) {
        this.B = bVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f = onFocusChangeListener;
    }

    public void setOnQueryTextListener(c cVar) {
        this.A = cVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.D = onClickListener;
    }

    public void setOnSuggestionListener(d dVar) {
        this.C = dVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.H = charSequence;
        r();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.I = z2;
        androidx.c.a.a aVar = this.g;
        if (aVar instanceof ao) {
            ((ao) aVar).a(z2 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.h = searchableInfo;
        if (this.h != null) {
            s();
            r();
        }
        this.L = m();
        if (this.L) {
            this.f268a.setPrivateImeOptions("nm");
        }
        a(c());
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.G = z2;
        a(c());
    }

    public void setSuggestionsAdapter(androidx.c.a.a aVar) {
        this.g = aVar;
        this.f268a.setAdapter(this.g);
    }
}
