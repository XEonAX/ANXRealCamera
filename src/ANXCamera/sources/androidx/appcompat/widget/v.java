package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.f.e;

/* compiled from: AppCompatTextClassifierHelper */
final class v {

    /* renamed from: a  reason: collision with root package name */
    private TextView f408a;

    /* renamed from: b  reason: collision with root package name */
    private TextClassifier f409b;

    v(TextView textView) {
        this.f408a = (TextView) e.a(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f409b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.f408a.getContext().getSystemService(TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
    }

    public void a(TextClassifier textClassifier) {
        this.f409b = textClassifier;
    }
}
