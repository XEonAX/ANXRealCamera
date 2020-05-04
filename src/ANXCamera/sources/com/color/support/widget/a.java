package com.color.support.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import color.support.v7.appcompat.R;

/* compiled from: ColorClickableSpan */
public class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    C0048a f1674a;

    /* renamed from: b  reason: collision with root package name */
    private ColorStateList f1675b;

    /* renamed from: com.color.support.widget.a$a  reason: collision with other inner class name */
    /* compiled from: ColorClickableSpan */
    public interface C0048a {
        void a();
    }

    public a(Context context) {
        this.f1675b = context.getResources().getColorStateList(R.color.color_clickable_text_color);
    }

    public void a(C0048a aVar) {
        this.f1674a = aVar;
    }

    public void onClick(View view) {
        C0048a aVar = this.f1674a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(this.f1675b.getColorForState(textPaint.drawableState, 0));
    }
}
