.class final Landroid/location/LocationRequest$1;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
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
        "Landroid/location/LocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 618
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 619
    .local v1, "request":Landroid/location/LocationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/LocationRequest;->setExpireAt(J)Landroid/location/LocationRequest;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setAltitudeRequired(Z)Landroid/location/LocationRequest;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/location/LocationRequest;->setIsBlacklist(Z)Landroid/location/LocationRequest;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 630
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 631
    .local v2, "workSource":Landroid/os/WorkSource;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setWorkSource(Landroid/os/WorkSource;)V

    .line 632
    :cond_1
    return-object v1

    .end local v0    # "provider":Ljava/lang/String;
    .end local v2    # "workSource":Landroid/os/WorkSource;
    :cond_2
    move v3, v5

    .line 625
    goto :goto_0

    :cond_3
    move v3, v5

    .line 626
    goto :goto_1

    :cond_4
    move v4, v5

    .line 627
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 636
    new-array v0, p1, [Landroid/location/LocationRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->newArray(I)[Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method
