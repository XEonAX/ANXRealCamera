.class Lcom/oppo/camera/ui/OppoNumSeekBar$1;
.super Ljava/lang/Object;
.source "OppoNumSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/OppoNumSeekBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/OppoNumSeekBar;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$1;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$1;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->requestLayout()V

    return-void
.end method
