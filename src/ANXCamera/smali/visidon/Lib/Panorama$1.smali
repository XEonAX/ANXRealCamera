.class Lvisidon/Lib/Panorama$1;
.super Ljava/util/TimerTask;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvisidon/Lib/Panorama;->StartFrameDelayTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvisidon/Lib/Panorama;


# direct methods
.method constructor <init>(Lvisidon/Lib/Panorama;)V
    .locals 0

    iput-object p1, p0, Lvisidon/Lib/Panorama$1;->this$0:Lvisidon/Lib/Panorama;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lvisidon/Lib/Panorama$1;->this$0:Lvisidon/Lib/Panorama;

    invoke-static {v0}, Lvisidon/Lib/Panorama;->access$000(Lvisidon/Lib/Panorama;)V

    return-void
.end method
