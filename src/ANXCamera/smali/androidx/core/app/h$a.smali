.class public Landroidx/core/app/h$a;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field b:Z

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/app/PendingIntent;

.field private final f:[Landroidx/core/app/k;

.field private final g:[Landroidx/core/app/k;

.field private h:Z

.field private final i:I


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/core/app/h$a;->c:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/h$a;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/h$a;->e:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/h$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/h$a;->h:Z

    return v0
.end method

.method public f()[Landroidx/core/app/k;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/h$a;->f:[Landroidx/core/app/k;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/core/app/h$a;->i:I

    return v0
.end method

.method public h()[Landroidx/core/app/k;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/h$a;->g:[Landroidx/core/app/k;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/h$a;->b:Z

    return v0
.end method
