.class Lcom/oppo/camera/gl/GLImageView$2;
.super Ljava/lang/Object;
.source "GLImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/gl/GLImageView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/GLImageView;


# direct methods
.method constructor <init>(Lcom/oppo/camera/gl/GLImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$2;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$2;->a:Lcom/oppo/camera/gl/GLImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLImageView;->setVisibility(I)V

    return-void
.end method
