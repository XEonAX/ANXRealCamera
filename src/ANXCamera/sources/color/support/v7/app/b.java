package color.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.b;
import color.support.v7.app.a;
import color.support.v7.appcompat.R;

/* compiled from: AlertDialog */
public class b extends androidx.appcompat.app.b implements DialogInterface {

    /* renamed from: b  reason: collision with root package name */
    final a f1351b = new ColorAlertController(getContext(), this, getWindow());

    /* compiled from: AlertDialog */
    public static class a extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private final a.C0039a f1352a;

        /* renamed from: b  reason: collision with root package name */
        private final int f1353b;

        public a(Context context) {
            this(context, b.b(context, 0));
        }

        public a(Context context, int i) {
            super(context, i);
            this.f1352a = new a.C0039a(new ContextThemeWrapper(context, b.b(context, i)));
            this.f1353b = i;
        }

        public Context a() {
            return this.f1352a.f1336a;
        }

        public a a(int i) {
            a.C0039a aVar = this.f1352a;
            aVar.f = aVar.f1336a.getText(i);
            return this;
        }

        public a a(int i, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.i = aVar.f1336a.getText(i);
            this.f1352a.k = onClickListener;
            return this;
        }

        public a a(DialogInterface.OnCancelListener onCancelListener) {
            this.f1352a.s = onCancelListener;
            return this;
        }

        public a a(boolean z) {
            this.f1352a.r = z;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.v = charSequenceArr;
            aVar.z = onClickListener;
            return this;
        }

        public a b(int i) {
            a.C0039a aVar = this.f1352a;
            aVar.h = aVar.f1336a.getText(i);
            return this;
        }

        public a b(int i, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.l = aVar.f1336a.getText(i);
            this.f1352a.n = onClickListener;
            return this;
        }

        /* renamed from: b */
        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f1352a.u = onKeyListener;
            return this;
        }

        /* renamed from: b */
        public a a(Drawable drawable) {
            this.f1352a.d = drawable;
            return this;
        }

        /* renamed from: b */
        public a a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.y = listAdapter;
            aVar.z = onClickListener;
            aVar.K = i;
            aVar.J = true;
            return this;
        }

        /* renamed from: b */
        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.y = listAdapter;
            aVar.z = onClickListener;
            return this;
        }

        /* renamed from: b */
        public a a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.v = charSequenceArr;
            aVar.z = onClickListener;
            aVar.K = i;
            aVar.J = true;
            return this;
        }

        /* renamed from: b */
        public a a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.v = charSequenceArr;
            aVar.L = onMultiChoiceClickListener;
            aVar.H = zArr;
            aVar.I = true;
            return this;
        }

        public a c(int i) {
            TypedValue typedValue = new TypedValue();
            this.f1352a.f1336a.getTheme().resolveAttribute(i, typedValue, true);
            this.f1352a.c = typedValue.resourceId;
            return this;
        }

        public a c(int i, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.o = aVar.f1336a.getText(i);
            this.f1352a.q = onClickListener;
            return this;
        }

        /* renamed from: c */
        public a a(View view) {
            this.f1352a.g = view;
            return this;
        }

        /* renamed from: c */
        public a a(CharSequence charSequence) {
            this.f1352a.f = charSequence;
            return this;
        }

        /* renamed from: c */
        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.i = charSequence;
            aVar.k = onClickListener;
            return this;
        }

        /* renamed from: c */
        public b b() {
            b bVar = new b(this.f1352a.f1336a, this.f1353b);
            this.f1352a.a(bVar.f1351b);
            bVar.setCancelable(this.f1352a.r);
            if (this.f1352a.r) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f1352a.s);
            bVar.setOnDismissListener(this.f1352a.t);
            if (this.f1352a.u != null) {
                bVar.setOnKeyListener(this.f1352a.u);
            }
            return bVar;
        }

        public a d(int i) {
            this.f1352a.S = i;
            return this;
        }

        /* renamed from: d */
        public a b(View view) {
            a.C0039a aVar = this.f1352a;
            aVar.B = view;
            aVar.A = 0;
            aVar.G = false;
            return this;
        }

        /* renamed from: d */
        public a b(CharSequence charSequence) {
            this.f1352a.h = charSequence;
            return this;
        }

        /* renamed from: d */
        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.l = charSequence;
            aVar.n = onClickListener;
            return this;
        }

        public b d() {
            b c = b();
            c.show();
            return c;
        }

        public a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            a.C0039a aVar = this.f1352a;
            aVar.o = charSequence;
            aVar.q = onClickListener;
            return this;
        }
    }

    protected b(Context context, int i) {
        super(context, b(context, i));
    }

    static int b(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorAlertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button a(int i) {
        return this.f1351b.d(i);
    }

    public ListView a() {
        return this.f1351b.c();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        this.f1351b.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f1351b.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f1351b.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f1351b.a(charSequence);
    }
}
