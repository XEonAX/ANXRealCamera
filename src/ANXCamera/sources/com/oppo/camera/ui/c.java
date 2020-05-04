package com.oppo.camera.ui;

import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.oppo.camera.gl.GLRootView;
import com.oppo.camera.gl.t;
import com.oppo.camera.ui.control.e;
import com.oppo.camera.ui.preview.a.g;

/* compiled from: CameraUIInterface */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2594a = {"key_beauty_custom_sticker_exfoliating", "key_beauty_custom_sticker_thin_face", "key_beauty_custom_sticker_big_eye", "key_beauty_custom_sticker_thin_nasal", "key_beauty_custom_sticker_chin", "key_beauty_custom_sticker_little_face", "key_beauty_custom_sticker_makeup", "key_beauty_custom_sticker_3d"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f2595b = {"key_beauty_custom_common_exfoliating", "key_beauty_custom_common_thin_face", "key_beauty_custom_common_big_eye", "key_beauty_custom_common_thin_nasal", "key_beauty_custom_common_chin", "key_beauty_custom_common_little_face", "key_beauty_custom_common_makeup", "key_beauty_custom_common_3d"};
    public static final String[] b_ = {"key_beauty_custom_video_exfoliating", "key_beauty_custom_video_thin_face", "key_beauty_custom_video_big_eye", "key_beauty_custom_video_thin_nasal", "key_beauty_custom_video_chin", "key_beauty_custom_video_little_face", "key_beauty_custom_video_makeup", "key_beauty_custom_video_3d"};
    public static final String[] c = {"key_beauty_custom_portrait_exfoliating", "key_beauty_custom_portrait_thin_face", "key_beauty_custom_portrait_big_eye", "key_beauty_custom_portrait_thin_nasal", "key_beauty_custom_portrait_chin", "key_beauty_custom_portrait_little_face", "key_beauty_custom_portrait_makeup", "key_beauty_custom_portrait_3d"};

    void A();

    GLRootView a();

    void a(int i);

    void a(int i, int i2);

    void a(int i, int i2, boolean z, boolean z2, boolean z3);

    void a(int i, String str);

    void a(int i, boolean z);

    void a(long j, boolean z);

    void a(DialogInterface.OnCancelListener onCancelListener);

    void a(View view, int i, int i2, int i3);

    void a(View view, String str, int i);

    void a(t.a aVar, boolean z, boolean z2, String str);

    void a(com.oppo.camera.ui.control.c cVar);

    void a(com.oppo.camera.ui.control.c cVar, boolean z);

    void a(e eVar);

    void a(Float f, int i);

    void a(String str);

    void a(String str, int i);

    void a(String str, int i, int i2);

    void a(String str, String str2);

    void a(String str, String str2, int i, int i2);

    void a(String str, boolean z);

    void a(String str, String... strArr);

    void a(boolean z);

    void a(boolean z, boolean z2);

    void a(boolean z, boolean z2, boolean z3);

    void a(boolean z, boolean z2, boolean z3, boolean z4);

    ViewGroup b();

    void b(int i);

    void b(int i, boolean z);

    void b(long j, boolean z);

    void b(String str);

    void b(String str, String str2);

    void b(String str, String... strArr);

    void b(boolean z);

    void b(boolean z, boolean z2);

    void b(boolean z, boolean z2, boolean z3);

    com.oppo.camera.ui.preview.e c();

    void c(int i);

    void c(int i, boolean z);

    void c(String str);

    void c(boolean z);

    void c(boolean z, boolean z2);

    void d();

    void d(int i);

    void d(String str);

    void d(boolean z);

    void d(boolean z, boolean z2);

    RelativeLayout e();

    void e(int i);

    void e(String str);

    void e(boolean z);

    void e(boolean z, boolean z2);

    void f();

    void f(int i);

    void f(String str);

    void f(boolean z);

    void f(boolean z, boolean z2);

    int g();

    void g(int i);

    void g(boolean z);

    void g(boolean z, boolean z2);

    int h();

    void h(int i);

    void h(boolean z);

    void h(boolean z, boolean z2);

    void i();

    void i(int i);

    void i(boolean z);

    CameraScreenHintView j();

    void j(int i);

    void j(boolean z);

    void k();

    void k(int i);

    void k(boolean z);

    void l();

    void l(boolean z);

    void m(boolean z);

    boolean m();

    void n(boolean z);

    boolean n();

    void o();

    void o(boolean z);

    void p();

    void p(boolean z);

    void q();

    void q(boolean z);

    g r();

    void s();

    void t();

    void u();

    void v();

    boolean w();

    boolean x();

    boolean y();

    void z();
}
