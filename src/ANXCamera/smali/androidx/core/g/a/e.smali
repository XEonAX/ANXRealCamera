.class public Landroidx/core/g/a/e;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/g/a/e$b;,
        Landroidx/core/g/a/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/g/a/e$b;

    invoke-direct {v0, p0}, Landroidx/core/g/a/e$b;-><init>(Landroidx/core/g/a/e;)V

    iput-object v0, p0, Landroidx/core/g/a/e;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/g/a/e$a;

    invoke-direct {v0, p0}, Landroidx/core/g/a/e$a;-><init>(Landroidx/core/g/a/e;)V

    iput-object v0, p0, Landroidx/core/g/a/e;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/g/a/e;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/g/a/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/g/a/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/core/g/a/e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/g/a/d;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Landroidx/core/g/a/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
