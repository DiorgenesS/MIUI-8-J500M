.class final Lcom/samsung/android/cepproxyks/CertByte$1;
.super Ljava/lang/Object;
.source "CertByte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cepproxyks/CertByte;
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
        "Lcom/samsung/android/cepproxyks/CertByte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cepproxyks/CertByte;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/cepproxyks/CertByte;

    invoke-direct {v0, p1}, Lcom/samsung/android/cepproxyks/CertByte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/cepproxyks/CertByte$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cepproxyks/CertByte;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/cepproxyks/CertByte;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/cepproxyks/CertByte$1;->newArray(I)[Lcom/samsung/android/cepproxyks/CertByte;

    move-result-object v0

    return-object v0
.end method
