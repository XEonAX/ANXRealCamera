.class public Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;
.super Ljava/lang/Object;
.source "STSoundPlayManager.java"

# interfaces
.implements Lcom/sensetime/stmobile/STSoundPlay$PlayControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensetime/stmobile/STSoundPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPlayControlListener"
.end annotation


# instance fields
.field private mbPause:Z

.field final synthetic this$0:Lcom/sensetime/stmobile/STSoundPlayManager;


# direct methods
.method public constructor <init>(Lcom/sensetime/stmobile/STSoundPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->mbPause:Z

    return-void
.end method


# virtual methods
.method public onSoundLoaded(Ljava/lang/String;[B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSoundLoaded, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STSoundPlayManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0, p1, p2}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$300(Lcom/sensetime/stmobile/STSoundPlayManager;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$200(Lcom/sensetime/stmobile/STSoundPlayManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;-><init>(Lcom/sensetime/stmobile/STSoundPlayManager$1;)V

    :cond_1
    iput-object p2, v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;->cachePath:Ljava/lang/String;

    iput-object p1, v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;->name:Ljava/lang/String;

    iget-object p2, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p2}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$200(Lcom/sensetime/stmobile/STSoundPlayManager;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p1, "onSoundLoaded, SoundFilePath is null"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartPlay(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartPlay, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STSoundPlayManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0, p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$502(Lcom/sensetime/stmobile/STSoundPlayManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$200(Lcom/sensetime/stmobile/STSoundPlayManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v2}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iput p2, v0, Lcom/sensetime/stmobile/STSoundPlayManager$SoundMetaData;->loop:I

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v3}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$600(Lcom/sensetime/stmobile/STSoundPlayManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartPlay err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {v0, p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$102(Lcom/sensetime/stmobile/STSoundPlayManager;Ljava/lang/String;)Ljava/lang/String;

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->mbPause:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStartPlay, data: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mMediaPlayer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p2}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopPlay(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopPlay, name:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STSoundPlayManager"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$700(Lcom/sensetime/stmobile/STSoundPlayManager;)V

    iget-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->this$0:Lcom/sensetime/stmobile/STSoundPlayManager;

    invoke-static {p1}, Lcom/sensetime/stmobile/STSoundPlayManager;->access$000(Lcom/sensetime/stmobile/STSoundPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public setPauseState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sensetime/stmobile/STSoundPlayManager$MyPlayControlListener;->mbPause:Z

    return-void
.end method
