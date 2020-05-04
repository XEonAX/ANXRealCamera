.class Lco/polarr/renderer/textureview/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/textureview/c;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lco/polarr/renderer/textureview/c;


# direct methods
.method constructor <init>(Lco/polarr/renderer/textureview/c;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/textureview/c$3;->a:Lco/polarr/renderer/textureview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/textureview/c$3;->a:Lco/polarr/renderer/textureview/c;

    invoke-static {v0}, Lco/polarr/renderer/textureview/c;->a(Lco/polarr/renderer/textureview/c;)Lco/polarr/renderer/render/b;

    move-result-object v0

    invoke-virtual {v0}, Lco/polarr/renderer/render/b;->i()V

    return-void
.end method
