package com.oppo.camera.ui.menu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.TextView;
import com.oppo.camera.R;
import com.oppo.camera.ui.d;

/* compiled from: SingleTextItemView */
public class i extends TextView {

    /* renamed from: a  reason: collision with root package name */
    protected d f2755a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2756b = false;
    private boolean c = false;
    private boolean d = false;
    private boolean e = false;
    private boolean f = true;
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private int p = 0;
    private int q = 17;
    private int r = 0;
    private Bitmap s = null;
    private Bitmap t = null;
    private Bitmap u = null;
    private String v;
    private String w;
    private Context x = null;

    public i(Context context, d dVar) {
        super(context);
        this.x = context;
        this.f2755a = dVar;
        this.l = this.x.getResources().getDimensionPixelSize(R.dimen.menu_option_item_width);
        if (!com.oppo.camera.o.d.U()) {
            this.r = this.x.getResources().getDimensionPixelSize(R.dimen.setting_menu_move_down_y);
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(" ");
        if (lastIndexOf >= str.length() - 1 || lastIndexOf < 0) {
            return str;
        }
        String substring = str.substring(0, lastIndexOf);
        String str2 = substring + " ";
        return str2 + "（" + str.substring(lastIndexOf + 1) + "）";
    }

    public void a() {
        this.x = null;
    }

    public void a(int i2, boolean z) {
        if (this.n != i2) {
            if (!this.d || this.e) {
                this.n = i2;
                this.f = true;
            } else {
                this.n = 0;
                this.f = false;
            }
            if (this.d) {
                if (this.n % 180 == 0) {
                    if (this.h) {
                        setText(this.v);
                    }
                    setEms(getText() != null ? getText().length() : 1);
                } else {
                    if (this.h) {
                        setText(this.w);
                    }
                    setEms(1);
                }
                setRotation((float) (-this.n));
                this.g = true;
            }
        }
    }

    public void a(Bitmap bitmap, boolean z) {
        setItemType(false);
        if (z) {
            this.t = bitmap;
        } else {
            this.s = bitmap;
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        d dVar = this.f2755a;
        if (dVar != null && dVar.d()) {
            int actionMasked = motionEvent.getActionMasked();
            if (!(actionMasked == 3 || actionMasked == 2)) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(3);
                super.dispatchTouchEvent(obtain);
                return false;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getNoRotateWidth() {
        if (getPaint() == null || getText() == null || getText().length() <= 0) {
            return 0;
        }
        return (int) getPaint().measureText(getText().toString());
    }

    public float getShadowDy() {
        return super.getShadowDy() + ((float) this.r);
    }

    public int getViewHeight() {
        if (this.k <= 0 || this.f || this.d) {
            if (this.o == 0 || this.p == 0 || this.g) {
                measure(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.M());
                this.g = false;
            }
            if (!this.d || this.n % 180 == 0) {
                this.k = this.n % 180 == 0 ? this.p : this.o;
            } else {
                int i2 = this.o;
                int i3 = this.p;
                if (i2 <= i3) {
                    i2 = i3;
                }
                this.k = i2;
            }
            int i4 = this.n;
            if (i4 != 90 && i4 != 270) {
                this.k = this.k > com.oppo.camera.o.d.D() ? this.k : com.oppo.camera.o.d.D();
            } else if (this.d) {
                this.k = this.k > com.oppo.camera.o.d.D() ? this.k : com.oppo.camera.o.d.D();
            } else {
                int i5 = this.k;
                int i6 = this.l;
                if (i5 <= i6) {
                    i5 = i6;
                }
                this.k = i5;
            }
        }
        return this.k;
    }

    public int getViewWidth() {
        if (this.j <= 0 || this.f || this.d) {
            if (this.o == 0 || this.p == 0 || this.g) {
                measure(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.M());
                this.g = false;
            }
            if (this.d && this.n % 180 != 0) {
                int i2 = this.o;
                int i3 = this.p;
                if (i2 <= i3) {
                    i2 = i3;
                }
                this.j = i2;
            } else if (this.h) {
                this.j = getNoRotateWidth();
            } else {
                this.j = this.n % 180 == 0 ? this.o : this.p;
            }
            int i4 = this.n;
            if (i4 == 90 || i4 == 270) {
                this.j = this.j > com.oppo.camera.o.d.D() ? this.j : com.oppo.camera.o.d.D();
            } else {
                int i5 = this.j;
                int i6 = this.l;
                if (i5 <= i6) {
                    i5 = i6;
                }
                this.j = i5;
            }
        }
        return this.j;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2 = 17;
        if (getText() == null || this.d) {
            Canvas canvas2 = canvas;
            int i3 = this.n;
            if (i3 == 0 || i3 == 180) {
                if (this.h) {
                    i2 = 3;
                }
                setGravity(i2);
            } else {
                setGravity(3);
            }
            super.onDraw(canvas);
            return;
        }
        int width = getWidth();
        int height = getHeight();
        if (this.i) {
            Path path = new Path();
            String charSequence = getText().toString();
            getPaint().setColor(getCurrentTextColor());
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            float f2 = fontMetrics.bottom;
            float f3 = fontMetrics.bottom - fontMetrics.top;
            TextPaint textPaint = new TextPaint(getPaint());
            textPaint.setColor(getShadowColor());
            textPaint.setAlpha((int) ((1.0d - ((double) getAlpha())) * 255.0d));
            textPaint.setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
            int i4 = this.q;
            float f4 = 0.0f;
            if (i4 == 5) {
                float f5 = (float) (((double) (f3 - f2)) + (((double) (height - this.p)) / 2.0d));
                path.moveTo((float) (width - this.o), f5);
                path.lineTo((float) width, f5);
                if (!(getShadowDx() == 0.0f && getShadowDy() == 0.0f && getShadowRadius() == 0.0f)) {
                    Canvas canvas3 = canvas;
                    String str = charSequence;
                    Path path2 = path;
                    TextPaint textPaint2 = textPaint;
                    canvas3.drawTextOnPath(str, path2, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint2);
                    canvas3.drawTextOnPath(str, path2, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint2);
                    canvas3.drawTextOnPath(str, path2, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint2);
                    canvas3.drawTextOnPath(str, path2, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint2);
                }
                canvas.drawTextOnPath(charSequence, path, 0.0f, (float) this.r, getPaint());
            } else if (i4 != 17) {
                float f6 = (float) (((double) (f3 - f2)) + (((double) (height - this.p)) / 2.0d));
                path.moveTo(0.0f, f6);
                path.lineTo((float) this.o, f6);
                if (!(getShadowDx() == 0.0f && getShadowDy() == 0.0f && getShadowRadius() == 0.0f)) {
                    Canvas canvas4 = canvas;
                    String str2 = charSequence;
                    Path path3 = path;
                    TextPaint textPaint3 = textPaint;
                    canvas4.drawTextOnPath(str2, path3, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint3);
                    canvas4.drawTextOnPath(str2, path3, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint3);
                    canvas4.drawTextOnPath(str2, path3, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint3);
                    canvas4.drawTextOnPath(str2, path3, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint3);
                }
                canvas.drawTextOnPath(charSequence, path, 0.0f, (float) this.r, getPaint());
            } else {
                float f7 = (float) (((double) (f3 - f2)) + (((double) (height - this.p)) / 2.0d));
                int i5 = this.o;
                float f8 = (float) (((double) (width - i5)) / 2.0d);
                path.moveTo(f8, f7);
                path.lineTo(((float) i5) + f8 + getTextSize(), f7);
                if (!(getShadowDx() == 0.0f && getShadowDy() == 0.0f && getShadowRadius() == 0.0f)) {
                    Canvas canvas5 = canvas;
                    String str3 = charSequence;
                    Path path4 = path;
                    TextPaint textPaint4 = textPaint;
                    canvas5.drawTextOnPath(str3, path4, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint4);
                    canvas5.drawTextOnPath(str3, path4, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint4);
                    canvas5.drawTextOnPath(str3, path4, getShadowDx() - (getShadowRadius() / 2.0f), getShadowDy() + (getShadowRadius() / 2.0f), textPaint4);
                    canvas5.drawTextOnPath(str3, path4, getShadowDx() + (getShadowRadius() / 2.0f), getShadowDy() - (getShadowRadius() / 2.0f), textPaint4);
                }
                String[] split = charSequence.split("\\n");
                for (String drawTextOnPath : split) {
                    canvas.drawTextOnPath(drawTextOnPath, path, 0.0f, f4 + ((float) this.r), getPaint());
                    f4 += f3;
                }
            }
        } else {
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.postTranslate((float) ((width - this.u.getWidth()) / 2), (float) (((height - this.u.getHeight()) / 2) + this.r));
            canvas.drawBitmap(this.u, matrix, (Paint) null);
            super.onDraw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        try {
            if (this.d) {
                super.onMeasure(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.M());
                this.o = getMeasuredWidth();
                this.p = getMeasuredHeight();
                return;
            }
            super.onMeasure(com.oppo.camera.o.d.N(), com.oppo.camera.o.d.M());
            this.o = getMeasuredWidth();
            this.p = getMeasuredHeight();
            setMeasuredDimension(this.n % 180 == 0 ? this.o : this.p, this.n % 180 == 0 ? this.p : this.o);
        } catch (Exception unused) {
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            super.onWindowFocusChanged(z);
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setClickable(z);
    }

    public void setItemText(String str) {
        int length = str.length();
        if (length >= 14 && 17 == this.q && str.split(" ").length >= 2) {
            int i2 = length / 2;
            int i3 = length - 1;
            int i4 = i2;
            while (true) {
                if (i2 < 0 || i4 > i3) {
                    break;
                } else if (str.charAt(i2) == ' ') {
                    i3 = i2;
                    break;
                } else if (str.charAt(i4) == ' ') {
                    i3 = i4;
                    break;
                } else {
                    i2--;
                    i4++;
                }
            }
            String trim = str.substring(0, i3).trim();
            String trim2 = str.substring(i3).trim();
            str = trim + "\n" + trim2;
        }
        setItemType(true);
        setVerticalDraw(this.d);
        setTextSize(0, this.x.getResources().getDimension(R.dimen.menu_tool_item_text_size));
        setTextColor(this.x.getColor(R.color.menu_item_text_color));
        setTypeface(com.oppo.camera.o.d.t());
        setShadowLayer(2.13110029E9f, 2.13110029E9f, 2.13110029E9f, this.x.getColor(R.color.menu_item_text_color_shadow));
        setAlpha(isEnabled() ? 0.7f : 0.5f);
        if (this.f2756b) {
            setText(a(str));
        } else {
            setText(str);
        }
        if (this.c) {
            setOriginalText(str);
        }
        this.f = true;
    }

    public void setItemType(boolean z) {
        this.i = z;
    }

    public void setLayoutGravity(int i2) {
        this.q = i2;
    }

    public void setOriginalText(String str) {
        this.v = str;
        this.h = true;
        this.w = null;
        String str2 = this.v;
        if (str2 != null) {
            this.w = str2.substring(0, 2);
        }
    }

    public void setSelectState(boolean z) {
        if (this.i) {
            setTextColor(z ? this.x.getResources().getColor(R.color.menu_item_text_color_selected) : this.x.getResources().getColor(R.color.menu_item_text_color));
            getPaint().setAntiAlias(true);
            return;
        }
        this.u = z ? this.t : this.s;
        invalidate();
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        this.g = true;
    }

    public void setVerticalDraw(boolean z) {
        this.d = z;
        if (this.d) {
            setIncludeFontPadding(false);
            setLineSpacing(0.0f, 0.9f);
        }
    }
}
