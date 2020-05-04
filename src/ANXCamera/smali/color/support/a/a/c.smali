.class public Lcolor/support/a/a/c;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/a/a/c$c;,
        Lcolor/support/a/a/c$b;,
        Lcolor/support/a/a/c$a;,
        Lcolor/support/a/a/c$d;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/a/a/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcolor/support/a/a/c$c;

    invoke-direct {v0}, Lcolor/support/a/a/c$c;-><init>()V

    sput-object v0, Lcolor/support/a/a/c;->a:Lcolor/support/a/a/c$d;

    goto :goto_0

    :cond_0
    new-instance v0, Lcolor/support/a/a/c$a;

    invoke-direct {v0}, Lcolor/support/a/a/c$a;-><init>()V

    sput-object v0, Lcolor/support/a/a/c;->a:Lcolor/support/a/a/c$d;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcolor/support/a/a/c;->a:Lcolor/support/a/a/c$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-interface {v0, p0}, Lcolor/support/a/a/c$d;->b(I)Z

    move-result p0

    return p0
.end method
