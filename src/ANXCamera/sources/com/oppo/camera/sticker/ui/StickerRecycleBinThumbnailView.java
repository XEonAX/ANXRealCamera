package com.oppo.camera.sticker.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.oppo.camera.R;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class StickerRecycleBinThumbnailView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private String f2448a;

    /* renamed from: b  reason: collision with root package name */
    private String f2449b;
    private Drawable c;
    private Drawable d;

    public StickerRecycleBinThumbnailView(Context context) {
        this(context, (AttributeSet) null);
    }

    public StickerRecycleBinThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerRecycleBinThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2448a = null;
        this.f2449b = null;
        this.c = null;
        this.d = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0037 A[SYNTHETIC, Splitter:B:25:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x004d A[SYNTHETIC, Splitter:B:32:0x004d] */
    private Drawable a(Context context, Uri uri) {
        InputStream inputStream;
        try {
            inputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                if (decodeStream != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), decodeStream);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return bitmapDrawable;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return context.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
            } catch (FileNotFoundException e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return context.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            inputStream = null;
            e.printStackTrace();
            if (inputStream != null) {
            }
            return context.getResources().getDrawable(R.drawable.sticker_undownload, (Resources.Theme) null);
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            if (inputStream != null) {
            }
            throw th;
        }
    }

    private void a(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842913}, drawable2);
        stateListDrawable.addState(new int[0], drawable);
        setImageDrawable(stateListDrawable);
    }

    public void setNormalDrawableUri(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f2448a)) {
            this.f2448a = str;
            Uri parse = Uri.parse(str);
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setCallback((Drawable.Callback) null);
            }
            this.c = a(getContext(), parse);
            Drawable drawable2 = this.c;
            if (drawable2 != null) {
                a(drawable2, this.d);
            }
        }
    }

    public void setSelectedDrawableUri(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f2449b)) {
            this.f2449b = str;
            Uri parse = Uri.parse(str);
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setCallback((Drawable.Callback) null);
            }
            this.d = a(getContext(), parse);
            Drawable drawable2 = this.d;
            if (drawable2 != null) {
                a(this.c, drawable2);
            }
        }
    }
}
