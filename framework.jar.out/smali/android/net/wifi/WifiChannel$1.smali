.class final Landroid/net/wifi/WifiChannel$1;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiChannel;
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
        "Landroid/net/wifi/WifiChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/net/wifi/WifiChannel;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 113
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->frequency:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->channel:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Landroid/net/wifi/WifiChannel;->isNoIbss:Z

    .line 122
    return-object v0

    :cond_0
    move v1, v3

    .line 115
    goto :goto_0

    :cond_1
    move v2, v3

    .line 120
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiChannel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 127
    new-array v0, p1, [Landroid/net/wifi/WifiChannel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->newArray(I)[Landroid/net/wifi/WifiChannel;

    move-result-object v0

    return-object v0
.end method
