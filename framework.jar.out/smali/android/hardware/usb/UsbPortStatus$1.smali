.class final Landroid/hardware/usb/UsbPortStatus$1;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
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
        "Landroid/hardware/usb/UsbPortStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "currentMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "currentPowerRole":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "currentDataRole":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, "supportedRoleCombinations":I
    new-instance v4, Landroid/hardware/usb/UsbPortStatus;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbPortStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Landroid/hardware/usb/UsbPortStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->newArray(I)[Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    return-object v0
.end method
