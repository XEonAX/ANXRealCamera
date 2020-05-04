.class public Lcom/oppo/camera/ui/menu/d;
.super Ljava/lang/Object;
.source "OptionItemInfo.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/d;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/d;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/d;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/d;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/d;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/d;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/d;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/d;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/d;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/d;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/d;->b:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/d;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/d;->d:Ljava/lang/String;

    return-void
.end method
