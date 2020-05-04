package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import org.apache.commons.codec.CharEncoding;

public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    public int f597a = -1;

    /* renamed from: b  reason: collision with root package name */
    Object f598b;
    public byte[] c = null;
    public Parcelable d = null;
    public int e = 0;
    public int f = 0;
    public ColorStateList g = null;
    PorterDuff.Mode i = h;
    public String j = null;

    private static String a(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "UNKNOWN" : "BITMAP_MASKABLE" : "URI" : "DATA" : "RESOURCE" : "BITMAP";
    }

    private static String a(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        } catch (NoSuchMethodException e4) {
            Log.e("IconCompat", "Unable to get icon package", e4);
            return null;
        }
    }

    private static int b(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        } catch (NoSuchMethodException e4) {
            Log.e("IconCompat", "Unable to get icon resource", e4);
            return 0;
        }
    }

    public String a() {
        if (this.f597a == -1 && Build.VERSION.SDK_INT >= 23) {
            return a((Icon) this.f598b);
        }
        if (this.f597a == 2) {
            return ((String) this.f598b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public void a(boolean z) {
        this.j = this.i.name();
        int i2 = this.f597a;
        if (i2 != -1) {
            if (i2 != 1) {
                if (i2 == 2) {
                    this.c = ((String) this.f598b).getBytes(Charset.forName(CharEncoding.UTF_16));
                    return;
                } else if (i2 == 3) {
                    this.c = (byte[]) this.f598b;
                    return;
                } else if (i2 == 4) {
                    this.c = this.f598b.toString().getBytes(Charset.forName(CharEncoding.UTF_16));
                    return;
                } else if (i2 != 5) {
                    return;
                }
            }
            if (z) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ((Bitmap) this.f598b).compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.c = byteArrayOutputStream.toByteArray();
                return;
            }
            this.d = (Parcelable) this.f598b;
        } else if (!z) {
            this.d = (Parcelable) this.f598b;
        } else {
            throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
        }
    }

    public int b() {
        if (this.f597a == -1 && Build.VERSION.SDK_INT >= 23) {
            return b((Icon) this.f598b);
        }
        if (this.f597a == 2) {
            return this.e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public void c() {
        this.i = PorterDuff.Mode.valueOf(this.j);
        int i2 = this.f597a;
        if (i2 != -1) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        this.f598b = this.c;
                        return;
                    } else if (i2 != 4) {
                        if (i2 != 5) {
                            return;
                        }
                    }
                }
                this.f598b = new String(this.c, Charset.forName(CharEncoding.UTF_16));
                return;
            }
            Parcelable parcelable = this.d;
            if (parcelable != null) {
                this.f598b = parcelable;
                return;
            }
            byte[] bArr = this.c;
            this.f598b = bArr;
            this.f597a = 3;
            this.e = 0;
            this.f = bArr.length;
            return;
        }
        Parcelable parcelable2 = this.d;
        if (parcelable2 != null) {
            this.f598b = parcelable2;
            return;
        }
        throw new IllegalArgumentException("Invalid icon");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
        if (r1 != 5) goto L_0x009a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00ae  */
    public String toString() {
        if (this.f597a == -1) {
            return String.valueOf(this.f598b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(a(this.f597a));
        int i2 = this.f597a;
        if (i2 != 1) {
            if (i2 == 2) {
                sb.append(" pkg=");
                sb.append(a());
                sb.append(" id=");
                sb.append(String.format("0x%08x", new Object[]{Integer.valueOf(b())}));
            } else if (i2 == 3) {
                sb.append(" len=");
                sb.append(this.e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                }
            } else if (i2 == 4) {
                sb.append(" uri=");
                sb.append(this.f598b);
            }
            if (this.g != null) {
                sb.append(" tint=");
                sb.append(this.g);
            }
            if (this.i != h) {
                sb.append(" mode=");
                sb.append(this.i);
            }
            sb.append(")");
            return sb.toString();
        }
        sb.append(" size=");
        sb.append(((Bitmap) this.f598b).getWidth());
        sb.append("x");
        sb.append(((Bitmap) this.f598b).getHeight());
        if (this.g != null) {
        }
        if (this.i != h) {
        }
        sb.append(")");
        return sb.toString();
    }
}
