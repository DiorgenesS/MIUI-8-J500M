.class public Lcom/android/internal/telephony/cat/DataDestinationAddress;
.super Ljava/lang/Object;
.source "DataDestinationAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/DataDestinationAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:[B

.field public addressType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/DataDestinationAddress$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DataDestinationAddress$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 24
    .local v0, "addLength":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .line 28
    iget-object v1, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/DataDestinationAddress$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/DataDestinationAddress$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DataDestinationAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 40
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    array-length v0, v0

    goto :goto_0
.end method
