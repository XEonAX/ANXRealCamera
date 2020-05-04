package androidx.appcompat.app;

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
import androidx.appcompat.R;
import androidx.appcompat.app.AlertController;

/* compiled from: AlertDialog */
public class b extends f implements DialogInterface {

    /* renamed from: a  reason: collision with root package name */
    final AlertController f90a = new AlertController(getContext(), this, getWindow());

    /* compiled from: AlertDialog */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final AlertController.a f91a;

        /* renamed from: b  reason: collision with root package name */
        private final int f92b;

        public a(Context context) {
            this(context, b.a(context, 0));
        }

        public a(Context context, int i) {
            this.f91a = new AlertController.a(new ContextThemeWrapper(context, b.a(context, i)));
            this.f92b = i;
        }

        public Context a() {
            return this.f91a.f50a;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f91a.u = onKeyListener;
            return this;
        }

        public a a(Drawable drawable) {
            this.f91a.d = drawable;
            return this;
        }

        public a a(View view) {
            this.f91a.g = view;
            return this;
        }

        public a a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.w = listAdapter;
            aVar.x = onClickListener;
            aVar.I = i;
            aVar.H = true;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.w = listAdapter;
            aVar.x = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f91a.f = charSequence;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.i = charSequence;
            aVar.k = onClickListener;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.v = charSequenceArr;
            aVar.x = onClickListener;
            aVar.I = i;
            aVar.H = true;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.v = charSequenceArr;
            aVar.J = onMultiChoiceClickListener;
            aVar.F = zArr;
            aVar.G = true;
            return this;
        }

        public a b(View view) {
            AlertController.a aVar = this.f91a;
            aVar.z = view;
            aVar.y = 0;
            aVar.E = false;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f91a.h = charSequence;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f91a;
            aVar.l = charSequence;
            aVar.n = onClickListener;
            return this;
        }

        public b b() {
            b bVar = new b(this.f91a.f50a, this.f92b);
            this.f91a.a(bVar.f90a);
            bVar.setCancelable(this.f91a.r);
            if (this.f91a.r) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f91a.s);
            bVar.setOnDismissListener(this.f91a.t);
            if (this.f91a.u != null) {
                bVar.setOnKeyListener(this.f91a.u);
            }
            return bVar;
        }
    }

    protected b(Context context, int i) {
        super(context, a(context, i));
    }

    static int a(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button a(int i) {
        return this.f90a.d(i);
    }

    public ListView a() {
        return this.f90a.b();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f90a.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f90a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f90a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f90a.a(charSequence);
    }
}
