.class public Lcom/samsung/android/server/wifi/WifiDefaultApController;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    }
.end annotation


# static fields
.field private static final ACTION_CSC_WIFI_DEFAULTAP_DONE:Ljava/lang/String; = "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

.field private static final ACTION_CSC_WIFI_GENERALINFO_DONE:Ljava/lang/String; = "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

.field private static final ACTION_OTA_SET_WIFI_PROPILE:Ljava/lang/String; = "com.samsung.android.intent.action.SET_WIFI"

.field private static final CONFIG_PRIORITY_AP:Ljava/lang/String;

.field private static DBG:Z = false

.field private static final ENABLE_SPNAME:Z

.field private static final REMOVABLE_DEFAULT_AP:Z

.field private static final TAG:Ljava/lang/String; = "WifiDefaultApController"

.field private static mAddedWifiProfile:Ljava/lang/String;

.field public static mFirstScanAddProfile:Z

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mOTACount:I

.field private static mRemoveWifiProfile:Z

.field private static mRemovedDefaultAp:Z

.field public static mWifiProfileLoaded:Z

.field private static mWifiState:I

.field private static mfilePathDefaultAp:Ljava/io/File;

.field private static mfilePathDefaultApCheck:Ljava/io/File;

.field private static mfilePathDefaultApInSystem:Ljava/io/File;

.field private static mfilePathGeneralNwInfo:Ljava/io/File;

.field private static mfilePathPrevNwInfo:Ljava/io/File;

.field private static mflagBootCompleted:Z

.field private static mflagForGotVendorAp:Z

.field private static mflagForNWNameCreate:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultApEapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApIdentityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPasswordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPhaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApSpnameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApSsidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApWepkeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mPrevNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

.field private mWifiService:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    .line 68
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    .line 69
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    .line 71
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    .line 72
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    .line 73
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    .line 74
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    .line 75
    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagBootCompleted:Z

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mAddedWifiProfile:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    .line 82
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_SupportProfileSimProviderName"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    .line 83
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigPriorAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->CONFIG_PRIORITY_AP:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.check"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;

    .line 95
    sput v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mOTACount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    .line 152
    new-instance v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;Lcom/samsung/android/server/wifi/WifiDefaultApController$1;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .line 153
    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;

    .line 154
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiState:I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagBootCompleted:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagBootCompleted:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    return p0
.end method

.method static synthetic access$700()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    return v0
.end method


# virtual methods
.method public addVendorNetworkafterFactoryReset()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1072
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1074
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 1075
    .local v5, "simState_int":I
    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    .line 1076
    const-string v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addVendorNetworkafterFactoryReset : sim state not ready ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v5    # "simState_int":I
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 1082
    const-string v7, "WifiDefaultApController"

    const-string v8, "addVendorNetworkafterFactoryReset : clearDefaultApList and then reset DefaultApList from system."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    .line 1084
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const-string v8, "/system/etc/wifi/default_ap.conf"

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V

    .line 1095
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 1096
    const-string v7, "WifiDefaultApController"

    const-string v8, "addVendorNetworkafterFactoryReset - mDefaultApSsidList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v7, "WifiDefaultApController"

    const-string v8, "addVendorNetworkafterFactoryReset - NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1085
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 1086
    const-string v7, "WifiDefaultApController"

    const-string v8, "addVendorNetworkafterFactoryReset : clearDefaultApList and then reset DefaultApList from data."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    .line 1088
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const-string v8, "/data/misc/wifi/default_ap.conf"

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V

    goto :goto_1

    .line 1090
    :cond_3
    const-string v7, "WifiDefaultApController"

    const-string v8, "addVendorNetworkafterFactoryReset : defaut_ap.conf does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1101
    .local v3, "networkCount":I
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1102
    .local v1, "existGeneralinfoFile":Z
    sget-boolean v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addVendorNetworkafterFactoryReset: mDefaultAp networkCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 1104
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1105
    .local v4, "networkname":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1106
    .local v6, "spname":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 1107
    sget-boolean v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    if-eqz v7, :cond_7

    .line 1108
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1103
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1112
    :cond_7
    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1117
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)V
    invoke-static {v7, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4300(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public clearDefaultApList()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    return-void
.end method

.method public clearGeneralNwInfoList()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    return-void
.end method

.method public convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultApKeymgmtList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultApSsidList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    .line 1130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
