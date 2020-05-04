.class Lcom/oppo/camera/gl/GLImageView$3;
.super Ljava/lang/Object;
.source "GLImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/gl/GLImageView;->c()Z
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

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$3;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$3;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;)Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->updateTexture()V

    return-void
.end method
