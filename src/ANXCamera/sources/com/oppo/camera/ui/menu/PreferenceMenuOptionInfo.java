package com.oppo.camera.ui.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.oppo.camera.R;
import com.oppo.camera.d;
import java.util.ArrayList;

public class PreferenceMenuOptionInfo extends a {
    private static final String TAG = "PreferenceMenuOptionInfo";

    public PreferenceMenuOptionInfo(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CameraMenuOptionInfo, 0, 0);
        initMenuOptionInfo(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private boolean checkTypedArray(TypedArray typedArray) {
        return typedArray != null && typedArray.length() > 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:101:0x01f7  */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01fc  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01ed  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x01f2  */
    private void initMenuOptionInfo(Context context, TypedArray typedArray) {
        TypedArray typedArray2;
        TypedArray typedArray3;
        TypedArray typedArray4;
        int i;
        Bitmap bitmap;
        TypedArray typedArray5;
        Context context2 = context;
        TypedArray typedArray6 = typedArray;
        if (typedArray6 != null) {
            setOptionKey(typedArray6.getString(6));
            setOptionTitle(typedArray6.getString(9));
            setOptionDefaultValue(typedArray6.getString(0));
            setOptionOnOff(typedArray6.getBoolean(7, false));
            setImageTitleMode(typedArray6.getBoolean(5, false));
            setImageTitleColorChangeable(typedArray6.getBoolean(4, false));
            String string = typedArray6.getString(2);
            if (!TextUtils.isEmpty(string)) {
                setGroupType(Integer.parseInt(string));
            }
            int resourceId = typedArray6.getResourceId(12, 0);
            int resourceId2 = typedArray6.getResourceId(11, 0);
            int resourceId3 = typedArray6.getResourceId(3, 0);
            int resourceId4 = typedArray6.getResourceId(10, 0);
            int resourceId5 = typedArray6.getResourceId(8, 0);
            int i2 = 1;
            int resourceId6 = typedArray6.getResourceId(1, 0);
            TypedArray typedArray7 = null;
            if (resourceId != 0) {
                try {
                    typedArray4 = context.getResources().obtainTypedArray(resourceId);
                } catch (Throwable th) {
                    th = th;
                    typedArray4 = null;
                    typedArray3 = null;
                    typedArray2 = typedArray3;
                    if (typedArray4 != null) {
                        typedArray4.recycle();
                    }
                    if (typedArray3 != null) {
                        typedArray3.recycle();
                    }
                    if (typedArray2 != null) {
                        typedArray2.recycle();
                    }
                    if (typedArray7 != null) {
                        typedArray7.recycle();
                    }
                    throw th;
                }
            } else {
                typedArray4 = null;
            }
            if (resourceId2 != 0) {
                try {
                    typedArray5 = context.getResources().obtainTypedArray(resourceId2);
                } catch (Throwable th2) {
                    th = th2;
                    typedArray3 = null;
                    typedArray2 = typedArray3;
                    if (typedArray4 != null) {
                    }
                    if (typedArray3 != null) {
                    }
                    if (typedArray2 != null) {
                    }
                    if (typedArray7 != null) {
                    }
                    throw th;
                }
            } else {
                typedArray5 = null;
            }
            if (resourceId3 != 0) {
                try {
                    typedArray2 = context.getResources().obtainTypedArray(resourceId3);
                } catch (Throwable th3) {
                    th = th3;
                    typedArray2 = null;
                    if (typedArray4 != null) {
                    }
                    if (typedArray3 != null) {
                    }
                    if (typedArray2 != null) {
                    }
                    if (typedArray7 != null) {
                    }
                    throw th;
                }
            } else {
                typedArray2 = null;
            }
            if (resourceId4 != 0) {
                try {
                    typedArray7 = context.getResources().obtainTypedArray(resourceId4);
                } catch (Throwable th4) {
                    th = th4;
                    if (typedArray4 != null) {
                    }
                    if (typedArray3 != null) {
                    }
                    if (typedArray2 != null) {
                    }
                    if (typedArray7 != null) {
                    }
                    throw th;
                }
            }
            if (resourceId5 != 0) {
                setOptionSingleIcon(BitmapFactory.decodeResource(context.getResources(), resourceId5));
            }
            if (resourceId6 != 0) {
                setOptionExpandIcon(BitmapFactory.decodeResource(context.getResources(), resourceId6));
            }
            if (!checkTypedArray(typedArray4)) {
                d.a(TAG, "initMenuOptionInfo, give preference value info Error.");
                if (typedArray4 != null) {
                    typedArray4.recycle();
                }
                if (typedArray3 != null) {
                    typedArray3.recycle();
                }
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                if (typedArray7 != null) {
                    typedArray7.recycle();
                }
            } else if (!checkTypedArray(typedArray3)) {
                d.a(TAG, "initMenuOptionInfo, give preference value name info Error.");
                if (typedArray4 != null) {
                    typedArray4.recycle();
                }
                if (typedArray3 != null) {
                    typedArray3.recycle();
                }
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                if (typedArray7 != null) {
                    typedArray7.recycle();
                }
            } else {
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                while (i3 < typedArray4.length()) {
                    d dVar = new d();
                    dVar.a(typedArray4.getString(i3));
                    dVar.b(typedArray3.getString(i3));
                    int i4 = -1;
                    if (typedArray2 != null && i3 <= typedArray2.length() - i2) {
                        i4 = typedArray2.getResourceId(i3, -1);
                        if (getOptionKey() == null || !getOptionKey().equals("pref_subsetting_key")) {
                            dVar.a(BitmapFactory.decodeResource(context.getResources(), typedArray2.getResourceId(i3, 0)));
                        } else {
                            dVar.a(context2.getDrawable(typedArray2.getResourceId(i3, 0)));
                            if (Build.VERSION.SDK_INT > 21) {
                                Drawable drawable = context2.getDrawable(typedArray2.getResourceId(i3, 0));
                                bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                Canvas canvas = new Canvas(bitmap);
                                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                                drawable.draw(canvas);
                            } else {
                                bitmap = BitmapFactory.decodeResource(context.getResources(), typedArray2.getResourceId(i3, 0));
                            }
                            dVar.a(bitmap);
                        }
                    }
                    if (typedArray7 != null) {
                        i = 1;
                        if (i3 <= typedArray7.length() - 1) {
                            if (i4 == typedArray7.getResourceId(i3, 0)) {
                                dVar.b(dVar.b());
                            } else {
                                dVar.b(BitmapFactory.decodeResource(context.getResources(), typedArray7.getResourceId(i3, 0)));
                            }
                        }
                    } else {
                        i = 1;
                    }
                    arrayList.add(dVar);
                    i3++;
                    i2 = i;
                }
                setOptionItems(arrayList);
                if (typedArray4 != null) {
                    typedArray4.recycle();
                }
                if (typedArray3 != null) {
                    typedArray3.recycle();
                }
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                if (typedArray7 != null) {
                    typedArray7.recycle();
                }
            }
        }
    }
}
