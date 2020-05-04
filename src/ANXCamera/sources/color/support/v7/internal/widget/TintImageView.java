package color.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.au;
import androidx.appcompat.widget.n;

public class TintImageView extends n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1372a = {16842964, 16843033};

    /* renamed from: b  reason: collision with root package name */
    private final f f1373b;

    public TintImageView(Context context) {
        this(context, (AttributeSet) null);
    }

    public TintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        au a2 = au.a(getContext(), attributeSet, f1372a, i, 0);
        if (a2.a() > 0) {
            if (a2.g(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            if (a2.g(1)) {
                setImageDrawable(a2.a(1));
            }
        }
        a2.b();
        this.f1373b = f.a(context);
    }

    public void setImageResource(int i) {
        setImageDrawable(this.f1373b.a(i));
    }
}
