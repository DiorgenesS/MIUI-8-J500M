.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addExerciseLocationListener:I = 0x23

.field static final TRANSACTION_addGpsMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGpsNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x17

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1c

.field static final TRANSACTION_clearTestProviderLocation:I = 0x1a

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1e

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x10

.field static final TRANSACTION_getBestProvider:I = 0x12

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getLocBlacklist:I = 0x2a

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x15

.field static final TRANSACTION_getProviderProperties:I = 0x14

.field static final TRANSACTION_getProviders:I = 0x11

.field static final TRANSACTION_isProviderEnabled:I = 0x16

.field static final TRANSACTION_isProviderRunning:I = 0x28

.field static final TRANSACTION_locationCallbackFinished:I = 0x21

.field static final TRANSACTION_notifyNSFLP:I = 0x29

.field static final TRANSACTION_pauseProvider:I = 0x26

.field static final TRANSACTION_providerMeetsCriteria:I = 0x13

.field static final TRANSACTION_removeExerciseLocationListener:I = 0x24

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGpsNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x18

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x20

.field static final TRANSACTION_requestExerciseLocationUpdates:I = 0x22

.field static final TRANSACTION_requestFlushExerciseLocation:I = 0x25

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_resumeProvider:I = 0x27

.field static final TRANSACTION_sendExtraCommand:I = 0x1f

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setDataFromNSFLP:I = 0x2b

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1b

.field static final TRANSACTION_setTestProviderLocation:I = 0x19

.field static final TRANSACTION_setTestProviderStatus:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
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
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/ILocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 33
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

    .line 672
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 61
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v6

    .line 63
    .local v6, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 70
    .local v8, "_arg2":Landroid/app/PendingIntent;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v3, 0x1

    goto :goto_0

    .line 58
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/ILocationListener;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_1

    .line 67
    .restart local v6    # "_arg1":Landroid/location/ILocationListener;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_2

    .line 77
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/ILocationListener;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v4

    .line 81
    .local v4, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 88
    .local v6, "_arg1":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v3, 0x1

    goto :goto_0

    .line 85
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3

    .line 95
    .end local v4    # "_arg0":Landroid/location/ILocationListener;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 104
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    sget-object v3, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Geofence;

    .line 111
    .local v6, "_arg1":Landroid/location/Geofence;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 118
    .local v8, "_arg2":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 119
    .restart local v9    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 101
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/Geofence;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_4

    .line 108
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Geofence;
    goto :goto_5

    .line 115
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_6

    .line 125
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/Geofence;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_4
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    sget-object v3, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Geofence;

    .line 134
    .local v4, "_arg0":Landroid/location/Geofence;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 135
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 141
    .local v6, "_arg1":Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 131
    .end local v4    # "_arg0":Landroid/location/Geofence;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Geofence;
    goto :goto_7

    .line 138
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_8

    .line 148
    .end local v4    # "_arg0":Landroid/location/Geofence;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 157
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 159
    .local v2, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_9

    .line 161
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 154
    .end local v2    # "_result":Landroid/location/Location;
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_9

    .line 165
    .restart local v2    # "_result":Landroid/location/Location;
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 171
    .end local v2    # "_result":Landroid/location/Location;
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v4

    .line 175
    .local v4, "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v2

    .line 177
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v2, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 178
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 183
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v4

    .line 186
    .restart local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 192
    .end local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    :sswitch_8
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v2

    .line 194
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 195
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 200
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 204
    .local v4, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 206
    .local v6, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 208
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 209
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/GeocoderParams;

    .line 215
    .local v9, "_arg3":Landroid/location/GeocoderParams;
    :goto_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v3, p0

    .line 216
    invoke-virtual/range {v3 .. v10}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2    # "_result":Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/location/GeocoderParams;
    .end local v10    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/location/GeocoderParams;
    goto :goto_d

    .line 224
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_a
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 230
    .restart local v6    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 232
    .local v16, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 234
    .local v18, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 236
    .local v20, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 238
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 239
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/location/GeocoderParams;

    .line 245
    .local v23, "_arg6":Landroid/location/GeocoderParams;
    :goto_e
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v12, p0

    move-object v13, v4

    move-wide v14, v6

    .line 246
    invoke-virtual/range {v12 .. v24}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 250
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 242
    .end local v2    # "_result":Ljava/lang/String;
    .end local v23    # "_arg6":Landroid/location/GeocoderParams;
    .end local v24    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_d
    const/16 v23, 0x0

    .restart local v23    # "_arg6":Landroid/location/GeocoderParams;
    goto :goto_e

    .line 254
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":D
    .end local v16    # "_arg2":D
    .end local v18    # "_arg3":D
    .end local v20    # "_arg4":D
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_b
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 259
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v2

    .line 260
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v2, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 261
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 266
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_c
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v4

    .line 270
    .local v4, "_arg0":Landroid/location/IGpsMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    move-result v2

    .line 272
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v2, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 278
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    :sswitch_e
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v4

    .line 291
    .local v4, "_arg0":Landroid/location/IGpsNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 292
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

    move-result v2

    .line 293
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v2, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 294
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 299
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v4

    .line 302
    .restart local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 308
    .end local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    :sswitch_10
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v11

    .line 310
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 312
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 316
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 319
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Criteria;

    .line 325
    .local v4, "_arg0":Landroid/location/Criteria;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    const/4 v6, 0x1

    .line 326
    .local v6, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v11

    .line 327
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 329
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 322
    .end local v4    # "_arg0":Landroid/location/Criteria;
    .end local v6    # "_arg1":Z
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Criteria;
    goto :goto_12

    .line 325
    :cond_12
    const/4 v6, 0x0

    goto :goto_13

    .line 333
    .end local v4    # "_arg0":Landroid/location/Criteria;
    :sswitch_12
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 336
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Criteria;

    .line 342
    .restart local v4    # "_arg0":Landroid/location/Criteria;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    const/4 v6, 0x1

    .line 343
    .restart local v6    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 339
    .end local v2    # "_result":Ljava/lang/String;
    .end local v4    # "_arg0":Landroid/location/Criteria;
    .end local v6    # "_arg1":Z
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Criteria;
    goto :goto_14

    .line 342
    :cond_14
    const/4 v6, 0x0

    goto :goto_15

    .line 350
    .end local v4    # "_arg0":Landroid/location/Criteria;
    :sswitch_13
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 355
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Criteria;

    .line 360
    .local v6, "_arg1":Landroid/location/Criteria;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v2

    .line 361
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v2, :cond_16

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 358
    .end local v2    # "_result":Z
    .end local v6    # "_arg1":Landroid/location/Criteria;
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Criteria;
    goto :goto_16

    .line 362
    .restart local v2    # "_result":Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 367
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/location/Criteria;
    :sswitch_14
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 371
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v2, :cond_17

    .line 373
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :goto_18
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 377
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 383
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 391
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 395
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v2, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 396
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 401
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 406
    sget-object v3, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/location/ProviderProperties;

    .line 412
    .local v6, "_arg1":Lcom/android/internal/location/ProviderProperties;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 409
    .end local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_1a

    .line 419
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_18
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 423
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 430
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 435
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 441
    .local v6, "_arg1":Landroid/location/Location;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 442
    .restart local v8    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 438
    .end local v6    # "_arg1":Landroid/location/Location;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Location;
    goto :goto_1b

    .line 448
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/location/Location;
    :sswitch_1a
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 459
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 463
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v6, 0x1

    .line 465
    .local v6, "_arg1":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 466
    .restart local v8    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 463
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_1b
    const/4 v6, 0x0

    goto :goto_1c

    .line 472
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 483
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 489
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 490
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 496
    .local v8, "_arg2":Landroid/os/Bundle;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 498
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg4":Ljava/lang/String;
    move-object/from16 v26, p0

    move-object/from16 v27, v4

    move/from16 v28, v6

    move-object/from16 v29, v8

    move-wide/from16 v30, v18

    move-object/from16 v32, v20

    .line 499
    invoke-virtual/range {v26 .. v32}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 493
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":Ljava/lang/String;
    :cond_1c
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_1d

    .line 505
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :sswitch_1e
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 509
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 516
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 520
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 522
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 523
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 528
    .restart local v8    # "_arg2":Landroid/os/Bundle;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 529
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    if-eqz v8, :cond_1f

    .line 532
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 526
    .end local v2    # "_result":Z
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :cond_1d
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_1e

    .line 530
    .restart local v2    # "_result":Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 536
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 542
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :sswitch_20
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 545
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 551
    .local v4, "_arg0":Landroid/location/Location;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v6, 0x1

    .line 552
    .local v6, "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 548
    .end local v4    # "_arg0":Landroid/location/Location;
    .end local v6    # "_arg1":Z
    :cond_20
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Location;
    goto :goto_21

    .line 551
    :cond_21
    const/4 v6, 0x0

    goto :goto_22

    .line 558
    .end local v4    # "_arg0":Landroid/location/Location;
    :sswitch_21
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v4

    .line 561
    .local v4, "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 567
    .end local v4    # "_arg0":Landroid/location/ILocationListener;
    :sswitch_22
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 571
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 572
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->requestExerciseLocationUpdates(II)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_23
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v4

    .line 582
    .local v4, "_arg0":Landroid/location/IExerciseLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addExerciseLocationListener(Landroid/location/IExerciseLocationListener;Ljava/lang/String;)Z

    move-result v2

    .line 584
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v2, :cond_22

    const/4 v3, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 585
    :cond_22
    const/4 v3, 0x0

    goto :goto_23

    .line 590
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v4

    .line 593
    .restart local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 599
    .end local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    :sswitch_25
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->requestFlushExerciseLocation()V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 606
    :sswitch_26
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->pauseProvider(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 615
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 618
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->resumeProvider(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 624
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 627
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->isProviderRunning(Ljava/lang/String;)Z

    move-result v2

    .line 628
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v2, :cond_23

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 629
    :cond_23
    const/4 v3, 0x0

    goto :goto_24

    .line 634
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 637
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 642
    .local v4, "_arg0":Landroid/os/Message;
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->notifyNSFLP(Landroid/os/Message;)Z

    move-result v2

    .line 643
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v2, :cond_25

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 640
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/os/Message;
    :cond_24
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/os/Message;
    goto :goto_25

    .line 644
    .restart local v2    # "_result":Z
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 649
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/os/Message;
    :sswitch_2a
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getLocBlacklist()Ljava/util/Map;

    move-result-object v2

    .line 651
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 653
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 657
    .end local v2    # "_result":Ljava/util/Map;
    :sswitch_2b
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 661
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 662
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 667
    .local v6, "_arg1":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->setDataFromNSFLP(ILandroid/os/Bundle;)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 665
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_26
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_27

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
