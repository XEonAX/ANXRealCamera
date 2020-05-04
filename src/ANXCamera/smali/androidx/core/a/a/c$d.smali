.class public final Landroidx/core/a/a/c$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/a/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/d/a;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/core/d/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/a/a/c$d;->a:Landroidx/core/d/a;

    iput p2, p0, Landroidx/core/a/a/c$d;->c:I

    iput p3, p0, Landroidx/core/a/a/c$d;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/d/a;
    .locals 1

    iget-object v0, p0, Landroidx/core/a/a/c$d;->a:Landroidx/core/d/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroidx/core/a/a/c$d;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/core/a/a/c$d;->b:I

    return v0
.end method
