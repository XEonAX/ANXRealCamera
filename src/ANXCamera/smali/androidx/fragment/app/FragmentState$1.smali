.class final Landroidx/fragment/app/FragmentState$1;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/FragmentState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentState;
    .locals 1

    new-instance v0, Landroidx/fragment/app/FragmentState;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/fragment/app/FragmentState;
    .locals 0

    new-array p1, p1, [Landroidx/fragment/app/FragmentState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentState$1;->a(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentState$1;->a(I)[Landroidx/fragment/app/FragmentState;

    move-result-object p1

    return-object p1
.end method
