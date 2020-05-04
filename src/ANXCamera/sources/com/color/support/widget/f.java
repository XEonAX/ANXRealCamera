package com.color.support.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import color.support.v7.app.b;
import color.support.v7.appcompat.R;
import com.color.support.widget.a;

/* compiled from: ColorSecurityAlertDialog */
public class f {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public c f1682a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public color.support.v7.app.b f1683b;
    /* access modifiers changed from: private */
    public TextView c;
    /* access modifiers changed from: private */
    public CheckBox d;
    /* access modifiers changed from: private */
    public TextView e;
    /* access modifiers changed from: private */
    public View f;
    /* access modifiers changed from: private */
    public b g;

    /* compiled from: ColorSecurityAlertDialog */
    public static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public f f1684a = new f();

        /* renamed from: b  reason: collision with root package name */
        private String f1685b;
        private String c;
        private String d;
        private String e;
        private boolean f = true;
        /* access modifiers changed from: private */
        public boolean g;
        private Context h;
        private boolean i;
        private int j;
        private int k;
        private int l;
        private DialogInterface.OnKeyListener m = new DialogInterface.OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4 || keyEvent.getAction() != 0 || a.this.f1684a.f1683b == null || !a.this.f1684a.f1683b.isShowing()) {
                    return false;
                }
                a.this.f1684a.f1682a.a(-2, a.this.g);
                return false;
            }
        };

        public a(Context context) {
            a(context);
        }

        private void a(Context context) {
            this.h = context;
            View unused = this.f1684a.f = LayoutInflater.from(this.h).inflate(R.layout.color_security_alert_dialog, (ViewGroup) null);
            f fVar = this.f1684a;
            TextView unused2 = fVar.c = (TextView) fVar.f.findViewById(R.id.color_security_alertdailog_message);
            f fVar2 = this.f1684a;
            TextView unused3 = fVar2.e = (TextView) fVar2.f.findViewById(R.id.color_security_alertdialog_statement);
            f fVar3 = this.f1684a;
            CheckBox unused4 = fVar3.d = (CheckBox) fVar3.f.findViewById(R.id.color_security_alertdailog_checkbox);
            this.j = -1;
            this.k = -1;
            try {
                Class<?> loadClass = this.h.getClassLoader().loadClass("android.os.SystemProperties");
                this.i = ((String) loadClass.getDeclaredMethod("get", new Class[]{String.class, String.class}).invoke(loadClass, new Object[]{"ro.oppo.regionmark", ""})).equalsIgnoreCase("EUEX");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private void c() {
            this.f1684a.c.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    if (a.this.f1684a.c.getLineCount() > 1) {
                        a.this.f1684a.c.setTextAlignment(5);
                    } else {
                        a.this.f1684a.c.setTextAlignment(4);
                    }
                    a.this.f1684a.c.setText(a.this.f1684a.c.getText());
                    a.this.f1684a.c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
        }

        public Dialog a() {
            return this.f1684a.f1683b;
        }

        public a a(int i2) {
            this.f1685b = this.h.getString(i2);
            return this;
        }

        public a a(b bVar) {
            b unused = this.f1684a.g = bVar;
            return this;
        }

        public a a(c cVar) {
            c unused = this.f1684a.f1682a = cVar;
            return this;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }

        public a a(boolean z) {
            this.f = z;
            return this;
        }

        public a b(int i2) {
            this.c = this.h.getString(i2);
            return this;
        }

        public a b(boolean z) {
            this.g = z;
            return this;
        }

        public f b() {
            if (this.i) {
                this.f1684a.e.setVisibility(0);
            } else {
                this.f1684a.e.setVisibility(8);
            }
            int i2 = this.k;
            String string = i2 <= 0 ? this.h.getString(R.string.color_security_alertdailog_privacy) : this.h.getString(i2);
            int i3 = this.j;
            String string2 = i3 <= 0 ? this.h.getString(R.string.color_security_alertdailog_statement, new Object[]{string}) : this.h.getString(i3, new Object[]{string});
            final int indexOf = string2.indexOf(string);
            final int length = string.length();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string2);
            a aVar = new a(this.h);
            aVar.a(new a.C0048a() {
                public void a() {
                    if (a.this.f1684a.g != null) {
                        a.this.f1684a.g.a();
                    }
                }
            });
            spannableStringBuilder.setSpan(aVar, indexOf, indexOf + length, 33);
            this.f1684a.e.setHighlightColor(this.h.getResources().getColor(17170445));
            this.f1684a.e.setText(spannableStringBuilder);
            this.f1684a.e.setMovementMethod(LinkMovementMethod.getInstance());
            int dimensionPixelSize = this.h.getResources().getDimensionPixelSize(R.dimen.TD05);
            float f2 = this.h.getResources().getConfiguration().fontScale;
            this.f1684a.e.setTextSize(0, (float) ((int) com.color.support.d.b.a((float) dimensionPixelSize, f2, 5)));
            this.f1684a.e.setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int actionMasked = motionEvent.getActionMasked();
                    int offsetForPosition = a.this.f1684a.e.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                    int i = indexOf;
                    boolean z = offsetForPosition <= i || offsetForPosition >= i + length;
                    if (actionMasked != 0) {
                        if (actionMasked == 1 || actionMasked == 3) {
                            a.this.f1684a.e.setPressed(false);
                            a.this.f1684a.e.postInvalidateDelayed(70);
                        }
                    } else if (z) {
                        return true;
                    } else {
                        a.this.f1684a.e.setPressed(true);
                        a.this.f1684a.e.invalidate();
                    }
                    return false;
                }
            });
            this.f1684a.c.setText(this.c);
            this.f1684a.c.setTextSize(0, (float) ((int) com.color.support.d.b.a((float) this.h.getResources().getDimensionPixelSize(R.dimen.TD07), f2, 5)));
            c();
            if (this.f) {
                this.f1684a.d.setVisibility(0);
                this.f1684a.d.setChecked(this.g);
                this.f1684a.d.setTextSize(0, (float) ((int) com.color.support.d.b.a((float) this.h.getResources().getDimensionPixelSize(R.dimen.TD05), f2, 5)));
                this.f1684a.d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        boolean unused = a.this.g = z;
                        if (a.this.f1684a.f1682a != null) {
                            a.this.f1684a.f1682a.a(0, a.this.g);
                        }
                    }
                });
            } else {
                this.f1684a.d.setVisibility(8);
            }
            f fVar = this.f1684a;
            b.a d2 = new b.a(this.h, this.l).a((CharSequence) this.f1685b).b(this.f1684a.f);
            String str = this.e;
            if (str == null) {
                str = this.h.getString(R.string.color_allow_text);
            }
            b.a c2 = d2.a((CharSequence) str, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (a.this.f1684a.f1682a != null) {
                        a.this.f1684a.f1682a.a(i, a.this.g);
                    }
                }
            });
            String str2 = this.d;
            if (str2 == null) {
                str2 = this.h.getString(R.string.color_reject_text);
            }
            color.support.v7.app.b unused = fVar.f1683b = c2.b(str2, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (a.this.f1684a.f1682a != null) {
                        a.this.f1684a.f1682a.a(i, a.this.g);
                    }
                }
            }).a(false).a(this.m).b();
            return this.f1684a;
        }

        public a c(int i2) {
            this.d = this.h.getString(i2);
            return this;
        }

        public a c(boolean z) {
            this.i = z;
            return this;
        }

        public a d(int i2) {
            this.e = this.h.getString(i2);
            return this;
        }
    }

    /* compiled from: ColorSecurityAlertDialog */
    public interface b {
        void a();
    }

    /* compiled from: ColorSecurityAlertDialog */
    public interface c {
        void a(int i, boolean z);
    }

    protected f() {
    }

    public boolean a() {
        color.support.v7.app.b bVar = this.f1683b;
        if (bVar != null) {
            return bVar.isShowing();
        }
        return false;
    }

    public void b() {
        color.support.v7.app.b bVar = this.f1683b;
        if (bVar != null) {
            bVar.show();
        }
    }

    public void c() {
        color.support.v7.app.b bVar = this.f1683b;
        if (bVar != null) {
            bVar.dismiss();
        }
    }
}
