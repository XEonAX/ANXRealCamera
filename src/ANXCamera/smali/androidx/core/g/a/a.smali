.class public final Landroidx/core/g/a/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final a:I

.field private final b:Landroidx/core/g/a/d;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/g/a/d;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Landroidx/core/g/a/a;->a:I

    iput-object p2, p0, Landroidx/core/g/a/a;->b:Landroidx/core/g/a/d;

    iput p3, p0, Landroidx/core/g/a/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Landroidx/core/g/a/a;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/core/g/a/a;->b:Landroidx/core/g/a/d;

    iget v1, p0, Landroidx/core/g/a/a;->c:I

    invoke-virtual {v0, v1, p1}, Landroidx/core/g/a/d;->a(ILandroid/os/Bundle;)Z

    return-void
.end method
