.class final Lcom/android/internal/widget/RemoteLockInfo$1;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
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
        "Lcom/android/internal/widget/RemoteLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "lockType":I
    new-array v12, v10, [Z

    .line 108
    .local v12, "typeBooleanArray":[Z
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 109
    aget-boolean v2, v12, v0

    .line 110
    .local v2, "lockState":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 111
    .local v3, "message":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    .line 112
    .local v4, "phoneNumber":Ljava/lang/CharSequence;
    new-array v11, v10, [Z

    .line 113
    .local v11, "EMCBooleanArray":[Z
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 114
    aget-boolean v5, v11, v0

    .line 115
    .local v5, "enableEmergencyCall":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    .line 116
    .local v6, "clientName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "count":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 119
    .local v8, "time":J
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJLcom/android/internal/widget/RemoteLockInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 124
    new-array v0, p1, [Lcom/android/internal/widget/RemoteLockInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    return-object v0
.end method
