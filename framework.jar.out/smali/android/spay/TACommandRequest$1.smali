.class final Landroid/spay/TACommandRequest$1;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/TACommandRequest;
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
        "Landroid/spay/TACommandRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/spay/TACommandRequest;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Landroid/spay/TACommandRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/spay/TACommandRequest;-><init>(Landroid/os/Parcel;Landroid/spay/TACommandRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/spay/TACommandRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/spay/TACommandRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    new-array v0, p1, [Landroid/spay/TACommandRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest$1;->newArray(I)[Landroid/spay/TACommandRequest;

    move-result-object v0

    return-object v0
.end method
