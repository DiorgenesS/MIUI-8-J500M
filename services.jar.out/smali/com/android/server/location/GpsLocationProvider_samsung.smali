.class public Lcom/android/server/location/GpsLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# static fields
.field public static final APN_CTWAP:I = 0x1

.field private static final CARD_STATUS_DISABLE:I = 0x2

.field private static final CARD_STATUS_EMPTY:I = 0x0

.field private static final CARD_STATUS_ENABLE:I = 0x3

.field private static final CARD_STATUS_UNKNOW:I = 0x1

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DB_ID:Ljava/lang/String; = "_id"

.field private static final DEBUG:Z = true

.field private static final EVENT_STOP_GPS_TONE:I = 0x40

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final LOCATION_MODE_BATTERY_SAVING:I = 0x2

.field private static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3

.field private static final LOCATION_MODE_OFF:I = 0x0

.field private static final LOCATION_MODE_SENSORS_ONLY:I = 0x1

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final Num_Top_SV:I = 0x5

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final PROPERTIES_FILE_CMCC:Ljava/lang/String; = "/etc/gps_cmcc.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field private static final SEC_SERVER_TYPE_AUTO_CONFIG:I = 0x0

.field private static final SEC_SERVER_TYPE_CUSTOM_CONFIG:I = 0x1

.field private static final SEC_SERVER_TYPE_SPIRENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider_ex"

.field private static final VERBOSE:Z

.field private static WAKELOCK_KEY:Ljava/lang/String;

.field private static mSecSalesCode:Ljava/lang/String;

.field public static sIsRJIO4G:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private ktPositionMode:I

.field private mAutoConfigEnabled:Z

.field private mBatteryTemp:D

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field public mEngineCapabilities:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPositionModeFromCSC:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field mProperties:Ljava/util/Properties;

.field private mProperties_cmcc:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSecGpsAccuracy:Ljava/lang/String;

.field private mSecGpsAgnssProtocol:Ljava/lang/String;

.field private mSecGpsAgpsMode:Ljava/lang/String;

.field private mSecGpsDynamicAccuracy:Ljava/lang/String;

.field private mSecGpsEnableXtra:Ljava/lang/String;

.field private mSecGpsGnssRfConfig:Ljava/lang/String;

.field private mSecGpsLppProfile:Ljava/lang/String;

.field private mSecGpsOperationMode:Ljava/lang/String;

.field private mSecGpsServerModeQcom:Ljava/lang/String;

.field private mSecGpsSessionType:Ljava/lang/String;

.field private mSecGpsSpirent:Ljava/lang/String;

.field private mSecGpsSsl:Ljava/lang/String;

.field private mSecGpsSslType:Ljava/lang/String;

.field private mSecGpsStartMode:Ljava/lang/String;

.field private mSecGpsSuplHost:Ljava/lang/String;

.field private mSecGpsSuplPort:Ljava/lang/String;

.field private mSecGpsSuplVersion:Ljava/lang/String;

.field private mSecGpsTimeout:Ljava/lang/String;

.field mSecProperties:Ljava/util/Properties;

.field private mSingleShot:Z

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplServerHost_cmcc:Ljava/lang/String;

.field private mSuplServerPort_cmcc:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplVersion:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "GpsLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    .line 182
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 222
    const-string v0, "GpsLocationProvider_ex"

    sput-object v0, Lcom/android/server/location/GpsLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider_samsung;->sIsRJIO4G:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1c6c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 104
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 105
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 106
    const/16 v0, 0x1c6b

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    .line 107
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 108
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    .line 112
    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    .line 113
    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    .line 114
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D

    .line 120
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    .line 123
    const-string v0, "STANDALONE"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 125
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 126
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    .line 127
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 128
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 129
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 155
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mCurrentMobileType:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 237
    const-string v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    .line 240
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1493
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1499
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1500
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 3

    .prologue
    .line 746
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extChnSelectPositionMode() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "chnPositionMode":I
    const-string v1, "CHM"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    .line 753
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 754
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    .line 762
    :cond_0
    :goto_0
    const-string v1, "CHN"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHU"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHC"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    :cond_1
    const/4 v0, 0x0

    .line 764
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    return v0

    .line 757
    :cond_3
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private extCtcSelectPositionMode(ZZ)I
    .locals 12
    .param p1, "singleShot"    # Z
    .param p2, "mNetworkAvailable"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 693
    const-string v9, "GpsLocationProvider_ex"

    const-string/jumbo v10, "extCTCSelectPositionMode()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, 0x0

    .line 695
    .local v1, "ctcPositionMode":I
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 696
    .local v7, "roamingInfo":Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "location_mode"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 697
    .local v4, "locationModeState":I
    const-string v9, "GpsLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "locationModeState :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 703
    .local v2, "info":Landroid/net/NetworkInfo;
    const-string/jumbo v9, "gsm.network.type"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "network_prop":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 705
    .local v6, "network_type":[Ljava/lang/String;
    const-string v9, "GpsLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network Type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "ctcCurrentApn":Ljava/lang/String;
    const-string v9, "LTE"

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CTWAP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CTLTE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CTNET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v3, v8

    .line 710
    .local v3, "isCtcAgpsApn":Z
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 711
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "Roaming, Start Standalone GPS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v1, 0x0

    .line 736
    :goto_0
    return v1

    .line 713
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v8, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 714
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "This is WIFI, Start Standalone GPS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v1, 0x0

    goto :goto_0

    .line 716
    :cond_3
    if-eqz v3, :cond_7

    .line 717
    if-eqz p2, :cond_6

    .line 718
    if-eqz p1, :cond_4

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 719
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "Start SingleShot : MS-Assisted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v1, 0x2

    goto :goto_0

    .line 721
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 722
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "Start Tracking Mode : MS-Based"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v1, 0x1

    goto :goto_0

    .line 725
    :cond_5
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "Data connection, But no MS-A, Ms-B capabilities"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v1, 0x0

    goto :goto_0

    .line 729
    :cond_6
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "There is no Data Connection, Start Standalone GPS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    :cond_7
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It\'s not CTC AGPS APN : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extSelectPositionMode(I)I
    .locals 12
    .param p1, "_mPositionMode"    # I

    .prologue
    const/16 v9, 0xd

    const/4 v7, 0x2

    const-wide/32 v10, 0x36ee80

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 530
    move v0, p1

    .line 531
    .local v0, "mPositionMode":I
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x1

    .line 533
    const-string v4, "SKT"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 537
    const/4 v0, 0x1

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 542
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    .line 544
    const-string/jumbo v4, "persist.sys.xtra_interval"

    const-string v5, "24"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 545
    .local v1, "validity_period":I
    const-string/jumbo v4, "persist.sys.xtra_time"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 546
    .local v2, "timestamp":J
    int-to-long v4, v1

    mul-long/2addr v4, v10

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 547
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "Starting navi xtraDownloadRequest "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    const-string/jumbo v6, "force_xtra_injection"

    invoke-virtual {v4, v5, v6, v8}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 552
    .end local v1    # "validity_period":I
    .end local v2    # "timestamp":J
    :cond_2
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode : AGPS_TYPE_SUPL!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGPS_TYPE=3\nSUPL_VERSION=1\nSUPL_HOST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUPL_PORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL=0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL_TYPE=15"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 561
    :cond_3
    const-string v4, "LGU"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "KOO"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 563
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 564
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x0

    .line 566
    const-string/jumbo v4, "persist.sys.xtra_interval"

    const-string v5, "24"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 567
    .restart local v1    # "validity_period":I
    const-string/jumbo v4, "persist.sys.xtra_time"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 568
    .restart local v2    # "timestamp":J
    int-to-long v4, v1

    mul-long/2addr v4, v10

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 569
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "Starting navi xtraDownloadRequest "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    const-string/jumbo v6, "force_xtra_injection"

    invoke-virtual {v4, v5, v6, v8}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 572
    .end local v1    # "validity_period":I
    .end local v2    # "timestamp":J
    :cond_5
    const-string v4, "KTT"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 573
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 574
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v4, :cond_7

    .line 575
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "[LTE] KT GPS mode : SUPL2.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUPL_PORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL=0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL_TYPE=15"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 582
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v4, v7, :cond_6

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 583
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 586
    :cond_7
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "[LTE] Non KT GPS mode : LTO"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 588
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x0

    .line 590
    const-string/jumbo v4, "persist.sys.xtra_interval"

    const-string v5, "24"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 591
    .restart local v1    # "validity_period":I
    const-string/jumbo v4, "persist.sys.xtra_time"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 592
    .restart local v2    # "timestamp":J
    int-to-long v4, v1

    mul-long/2addr v4, v10

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 593
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "Starting navi xtraDownloadRequest "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    const-string/jumbo v6, "force_xtra_injection"

    invoke-virtual {v4, v5, v6, v8}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 598
    .end local v1    # "validity_period":I
    .end local v2    # "timestamp":J
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v4, :cond_a

    .line 599
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "[3G] KT GPS mode : SUPL2.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUPL_PORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL=0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL_TYPE=15"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 606
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v4, v7, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 607
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 610
    :cond_a
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "[3G] Non KT GPS mode : SUPL1.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGPS_TYPE=3\nSUPL_VERSION=1\nSUPL_HOST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUPL_PORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL=0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SSL_TYPE=15"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 621
    :cond_b
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extSelectPositionMode() default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 3
    .param p1, "_mPositionMode"    # I

    .prologue
    .line 629
    move v0, p1

    .line 630
    .local v0, "mPositionMode":I
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extSelectUseGooglePositionMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x1

    .line 632
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " SKT GPS mode : SUPL 2.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 655
    :goto_0
    return v0

    .line 636
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v1, :cond_1

    .line 637
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " KT GPS mode : SUPL2.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUPL_PORT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL=0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL_TYPE=15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_1
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Google SUPL 2.0_AGNSS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUPL_PORT=7275\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL=1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL_TYPE=15\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AGNSS_PROTOCOL=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private extension_hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 665
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateBeep()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 491
    const-string v6, "GpsLocationProvider_ex"

    const-string/jumbo v7, "generateBeep Method call"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "MIN_VOLUME_LEV":I
    const/4 v1, 0x7

    .line 495
    .local v1, "MAX_VOLUME_LEV":I
    const/16 v3, 0xe

    .line 496
    .local v3, "VOLUME_STEP":I
    const/16 v0, 0x64

    .line 497
    .local v0, "MAX_VOLUME":I
    move v5, v0

    .line 499
    .local v5, "mCurVol":I
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 500
    .local v4, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 501
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "generateBeep: Volumei Level:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-lt v5, v2, :cond_2

    if-gt v5, v1, :cond_2

    .line 504
    if-ne v5, v1, :cond_1

    .line 505
    move v5, v0

    .line 509
    :goto_0
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "generateBeep: valid Volume:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_0

    .line 516
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 517
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 519
    :cond_0
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v9, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 520
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v7, 0x1c

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 521
    return-void

    .line 507
    :cond_1
    mul-int/2addr v5, v3

    goto :goto_0

    .line 512
    :cond_2
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Error getting current volume: Setting volume as max volume"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move v5, v0

    goto :goto_1
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 432
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1171
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "getSuplServerFromCSC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1175
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1177
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v4

    .line 1181
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 1186
    .local v6, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .restart local v5    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1189
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1195
    if-eqz v7, :cond_2

    .line 1196
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1205
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v8, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1208
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1215
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1216
    const-string v8, "CSC_SUPL_OPMODE"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1217
    const-string v8, "CSC_SUPL_HOST"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1219
    const-string v8, "CSC_SUPL_VER"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, "SuplVersion_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_PORT"

    const-string v9, "7276"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_SSL"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    .line 1225
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 1226
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1233
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplVersion_s":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1197
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1198
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1201
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1202
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1190
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 1191
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1195
    if-eqz v7, :cond_0

    .line 1196
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 1197
    :catch_4
    move-exception v4

    .line 1198
    :try_start_9
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 1194
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1195
    if-eqz v7, :cond_5

    .line 1196
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1199
    :cond_5
    :goto_4
    :try_start_b
    throw v8

    .line 1197
    :catch_5
    move-exception v4

    .line 1198
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "GpsLocationProvider_ex"

    const-string v10, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1209
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v4

    .line 1210
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1211
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1228
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplVersion_s":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 1229
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1230
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "[NumberFormatException] failed to convert supl information"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static isOpeatorUsingCscGPS()Z
    .locals 6

    .prologue
    .line 351
    const/16 v3, 0x17

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TMB"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "ATT"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "DCM"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "SKT"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "LGU"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "KTT"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "KOO"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "CHM"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "CHC"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "CTC"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "VZW"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "SPR"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "USC"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "MTR"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "BST"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "VMU"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "TFN"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "XAR"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "XAS"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "AIO"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "KDI"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "SBM"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "TMK"

    aput-object v4, v0, v3

    .line 352
    .local v0, "cscNotUseOperator":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 353
    .local v2, "isCscOperator":Z
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOpeatorUsingCscGPS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 356
    aget-object v3, v0, v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    const/4 v2, 0x0

    .line 362
    :cond_0
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider_samsung;->sIsRJIO4G:Z

    if-eqz v3, :cond_1

    .line 363
    const/4 v2, 0x0

    .line 365
    :cond_1
    return v2

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 378
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 383
    .local v1, "mcc":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 384
    .local v2, "mnc":I
    const-string/jumbo v4, "h-slp.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "%03d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "%03d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".pub.3gppnetwork.org"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeAutoSuplUrl :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_init()Z
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_set_sec_extension_configuration(Ljava/lang/String;)V
.end method

.method private native native_start()Z
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 13
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 898
    const-string v7, "GpsLocationProvider_ex"

    const-string/jumbo v8, "setCscParameters"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    if-nez p1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    const/4 v4, 0x0

    .line 905
    .local v4, "isDeleted":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/gps/cscgps.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 907
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 908
    const/4 v4, 0x1

    .line 910
    :cond_2
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isDeleted :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 916
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    if-ne v7, v10, :cond_4

    .line 917
    const-string v7, "MSBASED"

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 918
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    .line 919
    const-string/jumbo v7, "supl.google.com"

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 920
    const/16 v7, 0x1c6b

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 921
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 922
    iput v12, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 923
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mSuplAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mSuplVersion : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mSuplPort : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mSuplSslMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-eqz p2, :cond_4

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL_HOST="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL_PORT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SSL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SSL_TYPE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 934
    :cond_4
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 935
    const-string v0, "TRUE"

    .line 936
    .local v0, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v7, "is_empty"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " CscParamIsEmpty : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v7, "TRUE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 943
    const-string/jumbo v7, "operation_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 944
    const-string/jumbo v7, "hslp_addr"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 945
    const-string/jumbo v7, "hslp_port"

    const/16 v8, 0x1c6c

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 946
    const-string/jumbo v7, "ssl"

    invoke-virtual {p1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 947
    const-string/jumbo v7, "ssl_cert"

    invoke-virtual {p1, v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 948
    const-string/jumbo v7, "supl_ver"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    .line 950
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 952
    .local v5, "mProperties_cscgps":Ljava/util/Properties;
    const-string v7, "MSBASED"

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 953
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSuplVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSuplPort "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSuplSslMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-eqz p2, :cond_5

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL_HOST="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL_PORT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SSL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SSL_TYPE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 963
    :cond_5
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 965
    const-string v7, "CSC_SUPL_OPMODE"

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 966
    const-string v7, "CSC_SUPL_HOST"

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 967
    const-string v7, "CSC_SUPL_VER"

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 968
    const-string v7, "CSC_SUPL_PORT"

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 969
    const-string v7, "CSC_SUPL_SSL"

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 973
    :cond_6
    const-string v7, "CSC_SUPL_SUPLSERVERFROMCSC"

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 976
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/gps"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 978
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 980
    :cond_7
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/gps/cscgps.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .restart local v3    # "file":Ljava/io/File;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 982
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 984
    :cond_8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 986
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v7, "Saved CSC GPS Information"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 987
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 992
    if-eqz v6, :cond_0

    .line 993
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 994
    :catch_0
    move-exception v2

    .line 995
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 998
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 999
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    .end local v0    # "CscParamIsEmpty":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "mProperties_cscgps":Ljava/util/Properties;
    :catch_2
    move-exception v2

    .line 913
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 988
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "CscParamIsEmpty":Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 989
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 992
    if-eqz v6, :cond_0

    .line 993
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 994
    :catch_4
    move-exception v2

    .line 995
    :try_start_7
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 991
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 992
    if-eqz v6, :cond_9

    .line 993
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 996
    :cond_9
    :goto_2
    :try_start_9
    throw v7

    .line 994
    :catch_5
    move-exception v2

    .line 995
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method

.method private setDcmSuplIot(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST=dcm-supl.com\nSUPL_PORT=7275\nSSL=1\nSSL_TYPE=15"

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 422
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    if-nez p1, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const/4 v3, 0x0

    .line 1412
    .local v3, "isDeleted":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1414
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1415
    const/4 v3, 0x1

    .line 1417
    :cond_2
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    if-eqz v5, :cond_3

    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isDeleted :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1424
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    const-string v5, "SESSION_TYPE"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSessionType:Ljava/lang/String;

    .line 1425
    const-string v5, "OPERATION_MODE"

    const-string v6, "MSBASED"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsOperationMode:Ljava/lang/String;

    .line 1426
    const-string v5, "SSL"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSsl:Ljava/lang/String;

    .line 1427
    const-string v5, "AGPS_MODE"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAgpsMode:Ljava/lang/String;

    .line 1428
    const-string v5, "AGNSS_PROTOCOL"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAgnssProtocol:Ljava/lang/String;

    .line 1429
    const-string v5, "LPP_PROFILE"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsLppProfile:Ljava/lang/String;

    .line 1430
    const-string v5, "START_MODE"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsStartMode:Ljava/lang/String;

    .line 1431
    const-string v5, "ENABLE_XTRA"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsEnableXtra:Ljava/lang/String;

    .line 1432
    const-string v5, "SUPL_HOST"

    const-string/jumbo v6, "supl.google.com"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplHost:Ljava/lang/String;

    .line 1433
    const-string v5, "SUPL_PORT"

    const-string v6, "7275"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplPort:Ljava/lang/String;

    .line 1434
    const-string v5, "TIMEOUT"

    const-string v6, "180"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsTimeout:Ljava/lang/String;

    .line 1435
    const-string v5, "SERVER_MODE_QCOM"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsServerModeQcom:Ljava/lang/String;

    .line 1436
    const-string v5, "SSL_TYPE"

    const-string v6, "15"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSslType:Ljava/lang/String;

    .line 1437
    const-string v5, "ACCURACY"

    const-string v6, "150"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAccuracy:Ljava/lang/String;

    .line 1438
    const-string v5, "SUPL_VERSION"

    const-string v6, "2"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplVersion:Ljava/lang/String;

    .line 1439
    const-string v5, "GNSS_RF_CONFIG"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsGnssRfConfig:Ljava/lang/String;

    .line 1440
    const-string v5, "DYNAMIC_ACCURACY"

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsDynamicAccuracy:Ljava/lang/String;

    .line 1441
    const-string v5, "SPIRENT"

    const-string v6, "0"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSpirent:Ljava/lang/String;

    .line 1444
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SESSION_TYPE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSessionType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1445
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "OPERATION_MODE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsOperationMode:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1446
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SSL"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSsl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1447
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "AGPS_MODE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAgpsMode:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1448
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "AGNSS_PROTOCOL"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAgnssProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1449
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "LPP_PROFILE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsLppProfile:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1450
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "START_MODE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsStartMode:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1451
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "ENABLE_XTRA"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsEnableXtra:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1452
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplHost:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1453
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplPort:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1454
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "TIMEOUT"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsTimeout:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1455
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SERVER_MODE_QCOM"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsServerModeQcom:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1456
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SSL_TYPE"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSslType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1457
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "ACCURACY"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsAccuracy:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1458
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SUPL_VERSION"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSuplVersion:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1459
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "GNSS_RF_CONFIG"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsGnssRfConfig:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1460
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "DYNAMIC_ACCURACY"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsDynamicAccuracy:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1461
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SPIRENT"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecGpsSpirent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1465
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/gps"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1467
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1469
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1470
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1471
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1473
    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1475
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v6, "SECGPS Configuration"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1476
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    if-eqz v5, :cond_6

    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1481
    :cond_6
    if-eqz v4, :cond_0

    .line 1482
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1483
    :catch_0
    move-exception v1

    .line 1484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1487
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1488
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1419
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1420
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1477
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 1478
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1481
    if-eqz v4, :cond_0

    .line 1482
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 1483
    :catch_4
    move-exception v1

    .line 1484
    :try_start_7
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1480
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1481
    if-eqz v4, :cond_7

    .line 1482
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1485
    :cond_7
    :goto_2
    :try_start_9
    throw v5

    .line 1483
    :catch_5
    move-exception v1

    .line 1484
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v2, ""

    .line 323
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string v3, ""

    .line 325
    .local v3, "mServerPort":Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps_cmcc.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 341
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 336
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 3

    .prologue
    .line 443
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GPS_SupportAgnss"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION=3\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL=0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL_TYPE=15\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AGNSS_PROTOCOL=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL=0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL_TYPE=15"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x3

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "mcc":I
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "mnc":I
    const-string v4, "CAO"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v4, :cond_0

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v4, :cond_1

    .line 403
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 404
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSuplByNw :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    :cond_1
    :goto_0
    return-object v3

    .line 408
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 409
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSuplByNw :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 777
    const-string v4, "CHM"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 816
    :goto_0
    return v2

    .line 780
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "agps_function_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 782
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 783
    .local v2, "result":Z
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    packed-switch v1, :pswitch_data_0

    .line 806
    const/4 v2, 0x1

    .line 807
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_1
    if-ne v2, v7, :cond_3

    .line 811
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 787
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    .line 788
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 789
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 790
    const/4 v2, 0x1

    .line 791
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 793
    :cond_1
    const/4 v2, 0x0

    .line 794
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 797
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 798
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :pswitch_1
    const/4 v2, 0x0

    .line 803
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 813
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension_ctcSetHandleEnable()V
    .locals 2

    .prologue
    .line 885
    const-string v0, "CTC"

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "set CTC GPS lock to enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_delete_aiding_data(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public extension_filter_reportLocation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 675
    const-string v1, "CTC"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    const-string v1, "DCM"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KDI"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSingleShot:Z

    if-nez v1, :cond_0

    .line 682
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 1065
    const-string v1, "CHM"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1067
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1069
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1073
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public extension_mBroadcastReceiver(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    .line 1010
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "action":Ljava/lang/String;
    const-string v8, "CHM"

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHC"

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1013
    :cond_0
    const-string v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 1024
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_GPS_SupportSupl"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1026
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1027
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "BOOT_COMPLETED native_init "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init()Z

    .line 1029
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v9, "gps"

    invoke-virtual {v8, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1030
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "BOOT_COMPLETED native_cleanup "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_cleanup()V

    .line 1035
    :cond_2
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1036
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "simState":Ljava/lang/String;
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1039
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 1040
    .local v4, "op1":Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "op2":Ljava/lang/String;
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Op1 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Op2 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v8, "Jio 4G"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Jio 4G"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1043
    :cond_3
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "JIO 4G operator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    sput-boolean v11, Lcom/android/server/location/GpsLocationProvider_samsung;->sIsRJIO4G:Z

    .line 1046
    :cond_4
    sget-boolean v8, Lcom/android/server/location/GpsLocationProvider_samsung;->sIsRJIO4G:Z

    if-eqz v8, :cond_5

    .line 1047
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init()Z

    move-result v1

    .line 1048
    .local v1, "enabled":Z
    if-eqz v1, :cond_5

    .line 1049
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "setting for JIO 4G operator "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const-string v8, "LPP_PROFILE=2\nAGPS_MODE=7"

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1056
    .end local v1    # "enabled":Z
    .end local v4    # "op1":Ljava/lang/String;
    .end local v5    # "op2":Ljava/lang/String;
    .end local v7    # "simState":Ljava/lang/String;
    :cond_5
    return-void

    .line 1015
    :cond_6
    const-string v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1016
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "mSuplServerHost_cmcc":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1018
    .local v6, "portString_cmcc":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v2, "getAgpsProfile":Landroid/content/Intent;
    const-string v8, "ServerAddr"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v8, "ServerPort"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public extension_printSvStatus([I[F[F[F[II)V
    .locals 9
    .param p1, "svs"    # [I
    .param p2, "snrs"    # [F
    .param p3, "svElevations"    # [F
    .param p4, "svAzimuths"    # [F
    .param p5, "gnssUsed"    # [I
    .param p6, "svCount"    # I

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1082
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1083
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 1084
    .local v1, "nonZeroSnrSvCnt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_2

    .line 1085
    aget v3, p2, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 1086
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p2, v0

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p3, v0

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p4, v0

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1091
    rem-int/lit8 v3, v1, 0x6

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1092
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1084
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SV Count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "      (PRN, SNR, Elevation, Azimuth, Used)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-eqz v1, :cond_3

    .line 1100
    const-string v3, "GpsLocationProvider_ex"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_3
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 4
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1140
    const-string v1, "ATT"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    if-eqz v1, :cond_0

    .line 1142
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUPL_PORT=7275\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL=1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL_TYPE=15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1150
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 1167
    .end local v0    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string v1, "CAO"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v0

    .line 1156
    .restart local v0    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUPL_PORT=7275\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL=1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSL_TYPE=15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1163
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1714
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1716
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1719
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1752
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1754
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1757
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1733
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1735
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1738
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1771
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1773
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1776
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1695
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1697
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1700
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1673
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v3

    .line 1675
    .local v3, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1678
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1680
    :catch_0
    move-exception v2

    .line 1681
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1311
    const/4 v4, 0x0

    .line 1312
    .local v4, "result":Z
    const-string/jumbo v7, "set_csc_parameters"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1313
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->isOpeatorUsingCscGPS()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1314
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1315
    const/4 v4, 0x1

    :cond_0
    :goto_0
    move v5, v4

    .line 1403
    :cond_1
    :goto_1
    return v5

    .line 1317
    :cond_2
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "GPS CSC not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v4, 0x0

    goto :goto_0

    .line 1320
    :cond_3
    const-string/jumbo v7, "request_running"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1321
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    goto :goto_1

    .line 1322
    :cond_4
    const-string/jumbo v7, "com.skt.intent.action.AGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1323
    const-string/jumbo v7, "opType"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1324
    .local v3, "opType":Ljava/lang/String;
    const-string v7, "cmdType"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1327
    const-string/jumbo v6, "msAssisted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "msBased"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1328
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1336
    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 1337
    goto :goto_0

    .line 1331
    :cond_7
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1332
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1333
    const-string/jumbo v5, "sys.sktgps"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1337
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "setOllehServer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1338
    const-string/jumbo v6, "host"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1339
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v6, "port"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1340
    .local v1, "hostPort":I
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1341
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1342
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1343
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v4, 0x1

    .line 1345
    goto/16 :goto_0

    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "setNativeServer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1346
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v7, "setNativeServer"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1348
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1349
    :cond_a
    const-string v7, "activateGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1350
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "activateGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Current user id : -2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gps"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1354
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1355
    :cond_b
    const-string/jumbo v7, "deactivateGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1356
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v7, "deactivateGPS"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "gps"

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1359
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1360
    :cond_c
    const-string v7, "activateNLP"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1361
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "activateNLP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "network"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1363
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1364
    :cond_d
    const-string/jumbo v7, "deactivateNLP"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1365
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v7, "deactivateNLP"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "network"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1367
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1368
    :cond_e
    const-string v7, "activateAGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1369
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "activateAGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_gps_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1371
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1372
    :cond_f
    const-string/jumbo v7, "deactivateAGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1373
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v7, "deactivateAGPS"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "assisted_gps_enabled"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1376
    :cond_10
    const-string/jumbo v7, "setMode"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1377
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 1378
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1380
    :cond_11
    const-string/jumbo v7, "getMode"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1381
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1383
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1384
    :cond_12
    const-string/jumbo v7, "supl2_agnss"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_GPS_SupportGoogleSupl2"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    .line 1388
    goto/16 :goto_1

    .line 1390
    :cond_13
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1391
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1393
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1394
    :cond_14
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1395
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    if-eqz v5, :cond_15

    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_15
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1397
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1398
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1399
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    if-eqz v5, :cond_17

    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_17
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1401
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public extension_sendGpsTime(JJ)V
    .locals 7
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 1645
    const-string v2, "CHM"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_sync_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1647
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gps clock sync: CLOCK_SYNC_ENABLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_sync_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gps:timestamp(Ms) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "currentTimeMillis:(Ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    sub-long v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1650
    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1651
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, "[GPS Time for DRM] reportLocation call setAndBroadcastGPSSetTimeForDRM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string v0, "android.intent.action.GPS_SET_TIME"

    .line 1653
    .local v0, "ACTION_GPS_SET_TIME":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1655
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1656
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1657
    invoke-static {p3, p4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1662
    .end local v0    # "ACTION_GPS_SET_TIME":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;ZZZ)I
    .locals 7
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "mNetworkAvailable"    # Z
    .param p4, "mWifiNetworkAvailable"    # Z
    .param p5, "singleShot"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1516
    iput-boolean p5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSingleShot:Z

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1518
    const/4 p1, 0x0

    move v0, p1

    .line 1598
    .end local p1    # "mPositionMode":I
    .local v0, "mPositionMode":I
    :goto_0
    return v0

    .line 1523
    .end local v0    # "mPositionMode":I
    .restart local p1    # "mPositionMode":I
    :cond_0
    const-string v4, "VZW"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SPR"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "BST"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "VMU"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XAS"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "USC"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "LRA"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "TFNVZW"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ACG"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1532
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_f

    .line 1533
    if-eqz p4, :cond_e

    .line 1534
    const/4 p1, 0x0

    .line 1535
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "LTE but wifi connected. mPositionMode is set to STANDALONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_2
    :goto_1
    const-string v4, "SKT"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "KTT"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LGU"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "KOO"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1548
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_GPS_SupportGoogleSupl2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1549
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1550
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating extSelectKORPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_4
    :goto_2
    const-string v4, "CHM"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CHC"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CHN"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CHU"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1559
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1560
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHN startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v4

    if-ne v4, v2, :cond_7

    .line 1564
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 p1, 0x0

    .line 1569
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1570
    const-string/jumbo v4, "sys.sktgps"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_8
    const-string v4, "CTC"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1574
    invoke-direct {p0, p5, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->extCtcSelectPositionMode(ZZ)I

    move-result p1

    .line 1575
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHN_CTC startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_9
    const-string v4, "DCM"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "KDI"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1580
    :cond_a
    const-string v4, "DCM"

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1581
    const/4 v1, 0x0

    .line 1582
    .local v1, "valueFromPrefs":Z
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "gps_noti_sound_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    move v1, v2

    .line 1583
    :goto_3
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS noti sound enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-eqz v1, :cond_b

    .line 1585
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->generateBeep()V

    .line 1588
    .end local v1    # "valueFromPrefs":Z
    :cond_b
    if-eqz p5, :cond_c

    .line 1589
    const/4 p1, 0x2

    .line 1590
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 1595
    const/4 p1, 0x0

    .line 1596
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, "SIM card absent. force set position_mode to standalone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, p1

    .line 1598
    .end local p1    # "mPositionMode":I
    .restart local v0    # "mPositionMode":I
    goto/16 :goto_0

    .line 1538
    .end local v0    # "mPositionMode":I
    .restart local p1    # "mPositionMode":I
    :cond_e
    const/4 p1, 0x1

    .line 1539
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "LTE. mPositionMode is set to MSBASED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1542
    :cond_f
    const/4 p1, 0x0

    .line 1543
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "not LTE. mPositionMode is changed to STANDALONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1552
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->extSelectPositionMode(I)I

    move-result p1

    .line 1553
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v1    # "valueFromPrefs":Z
    :cond_11
    move v1, v3

    .line 1582
    goto/16 :goto_3
.end method

.method public extension_set_supl_server()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1243
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1245
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    if-ne v2, v4, :cond_0

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL_TYPE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1255
    :cond_0
    const-string v2, "SKT"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1256
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 1302
    :cond_1
    :goto_0
    return-void

    .line 1258
    :cond_2
    const-string v2, "KTT"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL=0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL_TYPE=15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_3
    const-string v2, "ATT"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "suplServerAutoConfig":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    if-eqz v2, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_1

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT=7275\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL=1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL_TYPE=15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1277
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto/16 :goto_0

    .line 1281
    .end local v0    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_4
    const-string v2, "CAO"

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1282
    const/4 v1, 0x0

    .line 1283
    .local v1, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v1

    .line 1284
    if-eqz v1, :cond_5

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT=7275\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL=1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL_TYPE=15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1291
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto/16 :goto_0

    .line 1294
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT=7275\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL=1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SSL_TYPE=15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 1114
    const-string v1, "SKT"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGU"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1125
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1129
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void
.end method

.method public extension_stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1608
    const-string v0, "SKT"

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1611
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 1616
    :cond_1
    const-string v0, "KTT"

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_2

    .line 1618
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1619
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION=2\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL=0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SSL_TYPE=15\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AGNSS_PROTOCOL=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_sec_extension_configuration(Ljava/lang/String;)V

    .line 1629
    :cond_3
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1630
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_4

    .line 1631
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "release ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1636
    :cond_4
    return-void
.end method

.method public getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 827
    const-string v6, ""

    .line 829
    .local v6, "apn":Ljava/lang/String;
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "getGpsCurrentApn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 848
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 849
    .local v9, "result":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    .line 850
    .local v8, "mSubId":[I
    if-eqz v8, :cond_1

    array-length v1, v8

    if-lez v1, :cond_1

    .line 851
    aget v9, v8, v5

    .line 856
    :goto_0
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubId from simSlot1, SubId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 861
    if-eqz v7, :cond_2

    .line 862
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 866
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 867
    :cond_0
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] get apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 874
    :goto_1
    return-object v1

    .line 853
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 854
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "subID is null or 0 length, so get DefaultSubId!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 869
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 874
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public getMobileDataEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1800
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 1804
    .local v0, "retVal":Z
    :goto_0
    if-nez v0, :cond_1

    move v1, v0

    .line 1811
    .end local v0    # "retVal":Z
    .local v1, "retVal":I
    :goto_1
    return v1

    .end local v1    # "retVal":I
    :cond_0
    move v0, v3

    .line 1800
    goto :goto_0

    .line 1806
    .restart local v0    # "retVal":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1807
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "data_roaming"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 1810
    :cond_2
    :goto_2
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1811
    .restart local v1    # "retVal":I
    goto :goto_1

    .end local v1    # "retVal":I
    :cond_3
    move v0, v3

    .line 1807
    goto :goto_2
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1790
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public handleWakelockControl(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1821
    packed-switch p1, :pswitch_data_0

    .line 1829
    :goto_0
    return-void

    .line 1823
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1826
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    const/4 v10, 0x0

    .line 243
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 245
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "scontext"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 246
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 247
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "location"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    .line 248
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 251
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPowerManager:Landroid/os/PowerManager;

    .line 252
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 253
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 256
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    .line 259
    const-string v7, "ATT"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecProperties:Ljava/util/Properties;

    .line 262
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 265
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecProperties:Ljava/util/Properties;

    invoke-virtual {v7, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    :try_start_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 270
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecProperties:Ljava/util/Properties;

    const-string v8, "SERVER_TYPE"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "server_type_s":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "server_type_i":I
    if-eqz v3, :cond_0

    .line 274
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    .line 275
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Auto Config is DISABLED in AngryGPS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 288
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "server_type_i":I
    .end local v4    # "server_type_s":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v7, "CHM"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    .line 291
    :try_start_4
    new-instance v1, Ljava/io/File;

    const-string v7, "/etc/gps_cmcc.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v1    # "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 293
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 294
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 296
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v8, "SUPL_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerHost_cmcc:Ljava/lang/String;

    .line 297
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v8, "SUPL_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "portString_cmcc":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerHost_cmcc:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    .line 300
    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerPort_cmcc:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 310
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "portString_cmcc":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 311
    return-void

    .line 268
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    :goto_2
    :try_start_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 281
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Could not open GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "server_type_s":Ljava/lang/String;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    .line 279
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "No params for SERVER_TYPE in AngryGPS."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 301
    .end local v4    # "server_type_s":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "portString_cmcc":Ljava/lang/String;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unable to parse SUPL_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 305
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "portString_cmcc":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Could not open GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method
