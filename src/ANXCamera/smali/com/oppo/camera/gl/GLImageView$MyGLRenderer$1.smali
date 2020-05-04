.class Lcom/oppo/camera/gl/GLImageView$MyGLRenderer$1;
.super Ljava/lang/Object;
.source "GLImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;


# direct methods
.method constructor <init>(Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer$1;->a:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer$1;->a:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    iget-object v0, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLImageView;->setVisibility(I)V

    return-void
.end method
