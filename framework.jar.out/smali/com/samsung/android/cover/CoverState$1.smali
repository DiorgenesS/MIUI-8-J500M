.class final Lcom/samsung/android/cover/CoverState$1;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/cover/CoverState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cover/CoverState;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 531
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/cover/CoverState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 536
    new-array v0, p1, [Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState$1;->newArray(I)[Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method
