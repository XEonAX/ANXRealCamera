.class Lco/polarr/renderer/textureview/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/textureview/c;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lco/polarr/renderer/textureview/c;


# direct methods
.method constructor <init>(Lco/polarr/renderer/textureview/c;II)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/textureview/c$1;->c:Lco/polarr/renderer/textureview/c;

    iput p2, p0, Lco/polarr/renderer/textureview/c$1;->a:I

    iput p3, p0, Lco/polarr/renderer/textureview/c$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lco/polarr/renderer/textureview/c$1;->c:Lco/polarr/renderer/textureview/c;

    invoke-static {v0}, Lco/polarr/renderer/textureview/c;->a(Lco/polarr/renderer/textureview/c;)Lco/polarr/renderer/render/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lco/polarr/renderer/render/b;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v0, p0, Lco/polarr/renderer/textureview/c$1;->c:Lco/polarr/renderer/textureview/c;

    invoke-static {v0}, Lco/polarr/renderer/textureview/c;->a(Lco/polarr/renderer/textureview/c;)Lco/polarr/renderer/render/b;

    move-result-object v0

    iget v2, p0, Lco/polarr/renderer/textureview/c$1;->a:I

    iget v3, p0, Lco/polarr/renderer/textureview/c$1;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lco/polarr/renderer/render/b;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method
