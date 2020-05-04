.class Lcolor/support/a/a/c$c;
.super Lcolor/support/a/a/c$b;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcolor/support/a/a/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    invoke-static {p1}, Lcolor/support/a/a/d;->a(I)I

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 0

    invoke-static {p1}, Lcolor/support/a/a/d;->b(I)Z

    move-result p1

    return p1
.end method
