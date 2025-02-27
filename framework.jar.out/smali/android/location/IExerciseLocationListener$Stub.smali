.class public abstract Landroid/location/IExerciseLocationListener$Stub;
.super Landroid/os/Binder;
.source "IExerciseLocationListener.java"

# interfaces
.implements Landroid/location/IExerciseLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IExerciseLocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IExerciseLocationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IExerciseLocationListener"

.field static final TRANSACTION_onLocationChanged:I = 0x1

.field static final TRANSACTION_onStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.IExerciseLocationListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/IExerciseLocationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.location.IExerciseLocationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IExerciseLocationListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/IExerciseLocationListener;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/IExerciseLocationListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/IExerciseLocationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "android.location.IExerciseLocationListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.location.IExerciseLocationListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 56
    .local v1, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    .line 58
    .local v2, "_arg1":[D
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v3

    .line 60
    .local v3, "_arg2":[D
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 62
    .local v4, "_arg3":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .line 64
    .local v5, "_arg4":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    .line 66
    .local v6, "_arg5":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v7

    .line 68
    .local v7, "_arg6":[D
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v8

    .line 70
    .local v8, "_arg7":[D
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v9

    .line 72
    .local v9, "_arg8":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg9":I
    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v10}, Landroid/location/IExerciseLocationListener$Stub;->onLocationChanged([J[D[D[F[F[F[D[D[JI)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "_arg0":[J
    .end local v2    # "_arg1":[D
    .end local v3    # "_arg2":[D
    .end local v4    # "_arg3":[F
    .end local v5    # "_arg4":[F
    .end local v6    # "_arg5":[F
    .end local v7    # "_arg6":[D
    .end local v8    # "_arg7":[D
    .end local v9    # "_arg8":[J
    .end local v10    # "_arg9":I
    :sswitch_2
    const-string v0, "android.location.IExerciseLocationListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/location/IExerciseLocationListener$Stub;->onStatusChanged(I)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
