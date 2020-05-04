.class Lcom/oppo/camera/ui/preview/h$a;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/h;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/preview/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->i(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1, v5}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;Z)Z

    goto/16 :goto_2

    :pswitch_5
    const-string p1, "MSG_RESET_AUTO_FOCUS"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c()V

    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->l()V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "MSG_CAPTURE_WHATERVER_CASE"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    move v4, v5

    :goto_0
    if-eqz v4, :cond_d

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    if-nez v4, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto :goto_2

    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    move v5, v4

    :cond_e
    if-eqz v5, :cond_f

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    :goto_1
    invoke-interface {p1, v4}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    goto :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->p()V

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->a()V

    :cond_10
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
