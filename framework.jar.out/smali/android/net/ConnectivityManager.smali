.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;,
        Landroid/net/ConnectivityManager$LegacyRequest;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_EXIT:I = 0x80009

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RELEASED:I = 0x80008

.field public static final CALLBACK_RESUMED:I = 0x8000c

.field public static final CALLBACK_SUSPENDED:I = 0x8000b

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_SUPL:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0x1f4

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x8000a

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_CAPTIVE_PORTAL_SMART_DETECTION:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_SMART_DETECTION"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_REQUEST_TIMEOUT_MS:I = 0x5b8d80

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_NETWORK_TYPE_EX:I = 0x1d

.field public static final MAX_RADIO_TYPE:I = 0x11

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SECURITY_POLICY:I = 0x14

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_BIP:I = 0x17

.field public static final TYPE_MOBILE_CAS:I = 0x18

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CMDM:I = 0x14

.field public static final TYPE_MOBILE_CMMAIL:I = 0x15

.field public static final TYPE_MOBILE_DM:I = 0x19

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_ENT1:I = 0x1c

.field public static final TYPE_MOBILE_ENT2:I = 0x1d

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_MMS2:I = 0x1a

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_WAP:I = 0x16

.field public static final TYPE_MOBILE_XCAP:I = 0x1b

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10

.field public static final TYPE_VPN:I = 0x11

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field static final sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sInstance:Landroid/net/ConnectivityManager;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final sNetworkCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    .line 3010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    .line 3012
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3013
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 1970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    .line 1971
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 1972
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 1973
    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    .line 1974
    return-void
.end method

.method static synthetic access$200(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;
    .param p2, "x2"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method private checkLegacyRoutingApiAccess()V
    .locals 2

    .prologue
    .line 3501
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.INJECT_OMADM_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3507
    :goto_0
    return-void

    .line 3506
    :cond_0
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    goto :goto_0
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3237
    if-nez p1, :cond_0

    .line 3238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3240
    :cond_0
    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .locals 3

    .prologue
    .line 3002
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 3003
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3004
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x80009

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3005
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 3007
    :cond_0
    monitor-exit v1

    .line 3008
    return-void

    .line 3007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final enforceChangePermission(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1985
    .local v0, "uid":I
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceChangePermission: calling uid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 1989
    return-void

    .line 1986
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1993
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1994
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1995
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x1c

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1996
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1997
    .local v0, "mRvfMode":I
    const-string v4, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityManager mRvfMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 2002
    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "ConnectivityService"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :goto_0
    return-void

    .line 2005
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2010
    .local v3, "uid":I
    const-string v4, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enforceTetherChangePermission: calling uid ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static {p0, v3}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-static {p0, v3, v5, v4}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .prologue
    .line 1523
    const/4 v1, -0x1

    .line 1524
    .local v1, "ourSeqNum":I
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 1525
    :try_start_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1526
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 1532
    :goto_0
    return-void

    .line 1527
    :cond_0
    const-string v2, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expireRequest NetworkRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1529
    iget v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v2, p2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    .line 1530
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expireRequest with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1509
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1510
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1511
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    monitor-exit v2

    .line 1513
    :goto_0
    return-object v1

    .line 1512
    :cond_0
    monitor-exit v2

    .line 1513
    const/4 v1, 0x0

    goto :goto_0

    .line 1512
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1978
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getInstance()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 2032
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2033
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ConnectivityManager yet constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2035
    :cond_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static getInstanceOrNull()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 2023
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 1893
    monitor-enter p0

    .line 1894
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_0

    .line 1895
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    .line 1899
    :goto_0
    return-object v1

    .line 1897
    :cond_0
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1898
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    .line 1899
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    goto :goto_0

    .line 1900
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 664
    packed-switch p0, :pswitch_data_0

    .line 724
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 666
    :pswitch_1
    const-string v0, "MOBILE"

    goto :goto_0

    .line 668
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 670
    :pswitch_3
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 672
    :pswitch_4
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 674
    :pswitch_5
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 676
    :pswitch_6
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 678
    :pswitch_7
    const-string v0, "WIMAX"

    goto :goto_0

    .line 680
    :pswitch_8
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 682
    :pswitch_9
    const-string v0, "DUMMY"

    goto :goto_0

    .line 684
    :pswitch_a
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 686
    :pswitch_b
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 688
    :pswitch_c
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 690
    :pswitch_d
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 692
    :pswitch_e
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 694
    :pswitch_f
    const-string v0, "MOBILE_IA"

    goto :goto_0

    .line 696
    :pswitch_10
    const-string v0, "MOBILE_EMERGENCY"

    goto :goto_0

    .line 698
    :pswitch_11
    const-string v0, "PROXY"

    goto :goto_0

    .line 700
    :pswitch_12
    const-string v0, "VPN"

    goto :goto_0

    .line 703
    :pswitch_13
    const-string v0, "MOBILE_CMDM"

    goto :goto_0

    .line 705
    :pswitch_14
    const-string v0, "MOBILE_CMMAIL"

    goto :goto_0

    .line 707
    :pswitch_15
    const-string v0, "MOBILE_WAP"

    goto :goto_0

    .line 709
    :pswitch_16
    const-string v0, "MOBILE_BIP"

    goto :goto_0

    .line 711
    :pswitch_17
    const-string v0, "MOBILE_CAS"

    goto :goto_0

    .line 713
    :pswitch_18
    const-string v0, "MOBILE_DM"

    goto :goto_0

    .line 715
    :pswitch_19
    const-string v0, "MOBILE_MMS2"

    goto :goto_0

    .line 717
    :pswitch_1a
    const-string v0, "MOBILE_XCAP"

    goto :goto_0

    .line 719
    :pswitch_1b
    const-string v0, "MOBILE_ENT1"

    goto :goto_0

    .line 721
    :pswitch_1c
    const-string v0, "MOBILE_ENT2"

    goto :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 3476
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v0

    .line 3477
    .local v0, "netId":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 3478
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    goto :goto_0
.end method

.method private incCallbackHandlerRefCount()V
    .locals 8

    .prologue
    .line 2990
    sget-object v7, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2991
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2993
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "ConnectivityManager"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2994
    .local v6, "callbackThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 2995
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    sget-object v4, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 2998
    .end local v6    # "callbackThread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v7

    .line 2999
    return-void

    .line 2998
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1368
    if-nez p1, :cond_1

    move v0, v3

    .line 1432
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 1373
    goto :goto_0

    .line 1376
    :cond_2
    const/4 v2, 0x0

    .line 1377
    .local v2, "type":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1378
    .local v0, "result":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1379
    const-string v2, "enableCBS"

    .line 1380
    const/16 v0, 0xc

    .line 1382
    :cond_3
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1383
    const-string v2, "enableXCAP"

    .line 1384
    const/16 v0, 0x1b

    .line 1386
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1387
    const-string v2, "enableIMS"

    .line 1388
    const/16 v0, 0xb

    .line 1390
    :cond_5
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1391
    const-string v2, "enableFOTA"

    .line 1392
    const/16 v0, 0xa

    .line 1394
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1395
    const-string v2, "enableDUN"

    .line 1396
    const/4 v0, 0x4

    .line 1398
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1399
    const-string v2, "enableSUPL"

    .line 1400
    const/4 v0, 0x3

    .line 1404
    :cond_8
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1405
    const-string v2, "enableMMS"

    .line 1406
    const/4 v0, 0x2

    .line 1409
    :cond_9
    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1410
    const-string v2, "enableMMS2"

    .line 1411
    const/16 v0, 0x1a

    .line 1413
    :cond_a
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1414
    const-string v2, "enableHIPRI"

    .line 1415
    const/4 v0, 0x5

    .line 1417
    :cond_b
    const/16 v4, 0x15

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1418
    const-string v2, "enableBIP"

    .line 1419
    const/16 v0, 0x17

    .line 1421
    :cond_c
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1422
    const-string v2, "enableEIMS"

    .line 1423
    const/16 v0, 0xf

    .line 1426
    :cond_d
    if-eqz v2, :cond_e

    .line 1427
    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1428
    .local v1, "testCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "testCap":Landroid/net/NetworkCapabilities;
    :cond_e
    move v0, v3

    .line 1432
    goto/16 :goto_0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 736
    packed-switch p0, :pswitch_data_0

    .line 761
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 759
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 651
    if-ltz p0, :cond_0

    const/16 v0, 0x11

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x14

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkTypeWifi(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 771
    sparse-switch p0, :sswitch_data_0

    .line 776
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 774
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, -0x1

    .line 1436
    if-nez p1, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v0

    .line 1437
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1438
    const/16 v0, 0xc

    goto :goto_0

    .line 1440
    :cond_2
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1441
    const/16 v0, 0x1b

    goto :goto_0

    .line 1443
    :cond_3
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1444
    const/16 v0, 0xb

    goto :goto_0

    .line 1446
    :cond_4
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1447
    const/16 v0, 0xa

    goto :goto_0

    .line 1449
    :cond_5
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    .line 1450
    goto :goto_0

    .line 1452
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 1453
    goto :goto_0

    .line 1455
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v3

    .line 1456
    goto :goto_0

    .line 1458
    :cond_8
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1459
    const/16 v0, 0x1a

    goto :goto_0

    .line 1461
    :cond_9
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v4

    .line 1462
    goto :goto_0

    .line 1464
    :cond_a
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1465
    const/16 v0, 0xd

    goto :goto_0

    .line 1467
    :cond_b
    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1468
    const/16 v0, 0x17

    goto :goto_0

    .line 1470
    :cond_c
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1299
    if-nez p1, :cond_e

    .line 1300
    const/4 v0, -0x1

    .line 1301
    .local v0, "cap":I
    const-string v4, "enableMMS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1302
    const/4 v0, 0x0

    .line 1338
    :goto_0
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1339
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1340
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1351
    .end local v0    # "cap":I
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_0
    :goto_1
    return-object v3

    .line 1303
    .restart local v0    # "cap":I
    :cond_1
    const-string v4, "enableXCAP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1304
    const/16 v0, 0x9

    goto :goto_0

    .line 1305
    :cond_2
    const-string v4, "enableMMS2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1306
    const/16 v0, 0x14

    goto :goto_0

    .line 1307
    :cond_3
    const-string v4, "enableSUPL"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1308
    const/4 v0, 0x1

    goto :goto_0

    .line 1309
    :cond_4
    const-string v4, "enableDUN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "enableDUNAlways"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1310
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 1311
    :cond_6
    const-string v4, "enableHIPRI"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1312
    const/16 v0, 0xc

    goto :goto_0

    .line 1313
    :cond_7
    const-string v4, "enableFOTA"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1314
    const/4 v0, 0x3

    goto :goto_0

    .line 1315
    :cond_8
    const-string v4, "enableIMS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1316
    const/4 v0, 0x4

    goto :goto_0

    .line 1317
    :cond_9
    const-string v4, "enableCBS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1318
    const/4 v0, 0x5

    goto :goto_0

    .line 1319
    :cond_a
    const-string v4, "enableBIP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1320
    const/16 v0, 0x15

    goto :goto_0

    .line 1321
    :cond_b
    const-string v4, "enableEIMS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1322
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1324
    :cond_c
    const-string v4, "enable800APN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1325
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v4, "VZW-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1328
    :try_start_0
    iget-object v4, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->enforceVzw800ApnPermission(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :cond_d
    const/16 v0, 0x12

    .line 1335
    goto/16 :goto_0

    .line 1329
    :catch_0
    move-exception v2

    .line 1330
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1342
    .end local v0    # "cap":I
    .end local v1    # "configNetworkTypeCapability":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_e
    if-ne p1, v5, :cond_0

    .line 1343
    const-string/jumbo v4, "p2p"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1344
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1345
    .restart local v3    # "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1346
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1347
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    goto/16 :goto_1
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1562
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1563
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1564
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v2

    .line 1565
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1568
    :goto_0
    return v1

    .line 1564
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1566
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1567
    # invokes: Landroid/net/ConnectivityManager$LegacyRequest;->clearDnsBinding()V
    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->access$000(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1568
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .prologue
    .line 1517
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1518
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renewing request to seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1520
    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 9
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1535
    const/4 v6, -0x1

    .line 1536
    .local v6, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    .line 1538
    .local v5, "type":I
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1540
    :goto_0
    new-instance v7, Landroid/net/ConnectivityManager$LegacyRequest;

    invoke-direct {v7, v8}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$1;)V

    .line 1541
    .local v7, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1542
    iput v6, v7, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1543
    iput v3, v7, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1544
    iget-object v2, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 1546
    iget-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    move-object v0, v8

    .line 1549
    :goto_1
    return-object v0

    .line 1547
    :cond_0
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    iget v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, p1, v0, v6}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1549
    iget-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_1

    .line 1539
    .end local v7    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    .prologue
    .line 1553
    if-ltz p3, :cond_0

    .line 1554
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending expire msg with seqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x8000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1556
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1558
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;
    .locals 16
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutSec"    # I
    .param p4, "action"    # I
    .param p5, "legacyType"    # I

    .prologue
    .line 3021
    if-nez p2, :cond_0

    .line 3022
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null NetworkCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3024
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null NetworkCapabilities"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3027
    :cond_1
    :try_start_0
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork; getAppId(CallingUid) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CallingPid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3032
    const-string v1, "ConnectivityManager"

    const-string v2, "ChinaNalSecurity is true."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3034
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3035
    .local v12, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3036
    .local v11, "callerId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "send_mms_block_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3037
    .local v10, "blackUIDs":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 3039
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blackUIDs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3041
    .local v9, "blackUIDList":[Ljava/lang/String;
    move-object v7, v9

    .local v7, "arr$":[Ljava/lang/String;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_4

    aget-object v8, v7, v13

    .line 3043
    .local v8, "blackUID":Ljava/lang/String;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blackUID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3046
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChinaNalSecurity; OP_SEND_MMS  is denied.Throw IOexception Cancel to connect MMS connection. Caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 3070
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "blackUID":Ljava/lang/String;
    .end local v9    # "blackUIDList":[Ljava/lang/String;
    .end local v10    # "blackUIDs":Ljava/lang/String;
    .end local v11    # "callerId":I
    .end local v12    # "callingPackage":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :goto_1
    return-object v1

    .line 3041
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "blackUID":Ljava/lang/String;
    .restart local v9    # "blackUIDList":[Ljava/lang/String;
    .restart local v10    # "blackUIDs":Ljava/lang/String;
    .restart local v11    # "callerId":I
    .restart local v12    # "callingPackage":Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3051
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "blackUID":Ljava/lang/String;
    .end local v9    # "blackUIDList":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_3
    const-string v1, "ConnectivityManager"

    const-string v2, "blackUIDs is null. It didn\'t check block list."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    .end local v10    # "blackUIDs":Ljava/lang/String;
    .end local v11    # "callerId":I
    .end local v12    # "callingPackage":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityManager;->incCallbackHandlerRefCount()V

    .line 3056
    sget-object v15, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3057
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_7

    .line 3058
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Messenger;

    sget-object v3, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v1

    move-object/from16 v0, p2

    # setter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$802(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 3064
    :goto_2
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3065
    sget-object v1, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3067
    :cond_5
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3069
    :goto_3
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityManager;->decCallbackHandlerRefCount()V

    .line 3070
    :cond_6
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    goto :goto_1

    .line 3061
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v3, Landroid/os/Messenger;

    sget-object v2, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v3, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v1

    move-object/from16 v0, p2

    # setter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$802(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    goto :goto_2

    .line 3067
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3068
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3430
    if-nez p0, :cond_1

    move v1, v2

    .line 3431
    .local v1, "netId":I
    :goto_0
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v4

    if-ne v1, v4, :cond_2

    move v2, v3

    .line 3450
    :cond_0
    :goto_1
    return v2

    .line 3430
    .end local v1    # "netId":I
    :cond_1
    iget v1, p0, Landroid/net/Network;->netId:I

    goto :goto_0

    .line 3434
    .restart local v1    # "netId":I
    :cond_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3438
    :try_start_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3444
    :goto_2
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 3447
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    move v2, v3

    .line 3448
    goto :goto_1

    .line 3439
    :catch_0
    move-exception v0

    .line 3441
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ConnectivityManager"

    const-string v4, "Can\'t set proxy properties"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    .line 3520
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    goto :goto_0
.end method

.method private unsupportedStartingFrom(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 3482
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 3492
    :cond_0
    return-void

    .line 3488
    :cond_1
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, p1, :cond_0

    .line 3489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method is not supported in target SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and above"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 2
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1920
    new-instance v0, Landroid/net/ConnectivityManager$1;

    invoke-direct {v0, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 1928
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 1929
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    :goto_0
    return-void

    .line 1930
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3405
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 2
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 2611
    const/4 v0, -0x1

    .line 2613
    .local v0, "timeOutMs":I
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2616
    :goto_0
    return v0

    .line 2614
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public factoryReset()V
    .locals 1

    .prologue
    .line 3379
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3382
    :goto_0
    return-void

    .line 3380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 1010
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 845
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 825
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 827
    :goto_0
    return-object v1

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 866
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 868
    :goto_0
    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 1823
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1825
    :goto_0
    return-object v1

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 933
    :goto_0
    return-object v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 941
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 943
    :goto_0
    return-object v1

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 2

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 980
    :goto_0
    return-object v1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1793
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .locals 1

    .prologue
    .line 3463
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 993
    :goto_0
    return-object v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 2512
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .locals 2

    .prologue
    .line 2641
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2643
    :goto_0
    return-object v1

    .line 2642
    :catch_0
    move-exception v0

    .line 2643
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .prologue
    .line 2474
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2476
    :goto_0
    return-object v1

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2384
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2386
    :goto_0
    return v1

    .line 2385
    :catch_0
    move-exception v0

    .line 2386
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1034
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1036
    :goto_0
    return-object v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1053
    :goto_0
    return-object v1

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1857
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1858
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1860
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1861
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v3

    .line 1862
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1863
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v3

    .line 1865
    :cond_0
    const-string v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileDataEnabled()+ subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    move-result v2

    .line 1867
    .local v2, "retVal":Z
    const-string v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileDataEnabled()- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "retVal":Z
    .end local v3    # "subId":I
    :goto_0
    return v2

    .line 1870
    :catch_0
    move-exception v5

    .line 1872
    :cond_1
    const-string v5, "ConnectivityManager"

    const-string v6, "getMobileDataEnabled()- remote exception retVal=false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1873
    goto :goto_0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2625
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2628
    :goto_0
    return-object v0

    .line 2626
    :catch_0
    move-exception v0

    .line 2628
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1070
    :goto_0
    return-object v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 964
    :goto_0
    return-object v1

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 892
    :goto_0
    return-object v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, -0x1

    return v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2496
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2498
    :goto_0
    return-object v1

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoamingReduction(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 3561
    const/4 v0, 0x0

    .line 3563
    .local v0, "policy":I
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getRoamingReduction(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3566
    :goto_0
    return v0

    .line 3564
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2287
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2289
    :goto_0
    return-object v1

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2050
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2052
    :goto_0
    return-object v1

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2247
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2249
    :goto_0
    return-object v1

    .line 2248
    :catch_0
    move-exception v0

    .line 2249
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2267
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2269
    :goto_0
    return-object v1

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2104
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2106
    :goto_0
    return-object v1

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2067
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2069
    :goto_0
    return-object v1

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2090
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2092
    :goto_0
    return-object v1

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .locals 2
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 2211
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getUidsForApnType(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2213
    :goto_0
    return-object v1

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsersForEnterpriseNetwork(I)[I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 2224
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getUsersForEnterpriseNetwork(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2227
    :goto_0
    return-object v1

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 2553
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2555
    :goto_0
    return v1

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDefaultNetworkActive()Z
    .locals 1

    .prologue
    .line 1961
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isNetworkActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1964
    :goto_0
    return v0

    .line 1962
    :catch_0
    move-exception v0

    .line 1964
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntApnEnabled(I)Z
    .locals 2
    .param p1, "connectionType"    # I

    .prologue
    .line 2197
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isEntApnEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2199
    :goto_0
    return v1

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobilePolicyDataEnable()Z
    .locals 2

    .prologue
    .line 2566
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isMobilePolicyDataEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2568
    :goto_0
    return v1

    .line 2567
    :catch_0
    move-exception v0

    .line 2568
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 2533
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2535
    :goto_0
    return v0

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitBillingEnabled()Z
    .locals 2

    .prologue
    .line 2186
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isSplitBillingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2188
    :goto_0
    return v1

    .line 2187
    :catch_0
    move-exception v0

    .line 2188
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 2171
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2173
    :goto_0
    return v1

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2593
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2595
    :goto_0
    return v1

    .line 2594
    :catch_0
    move-exception v0

    .line 2595
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 2719
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2721
    :goto_0
    return v0

    .line 2720
    :catch_0
    move-exception v7

    .line 2721
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3289
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3291
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    :goto_0
    return-void

    .line 3292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3254
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 3255
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2700
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2702
    :goto_0
    return-void

    .line 2701
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3226
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3229
    :try_start_0
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseNetwork; CallingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CallingPid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    :goto_0
    return-void

    .line 3233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 4
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1941
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkActivityListener;

    .line 1942
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    if-nez v0, :cond_0

    .line 1943
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1946
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1949
    :goto_0
    return-void

    .line 1947
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1766
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->removeRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1768
    :goto_0
    return v1

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2422
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 2423
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    :goto_0
    return-void

    .line 2424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 2402
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    :goto_0
    return-void

    .line 2403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .prologue
    .line 2441
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    :goto_0
    return-void

    .line 2442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3308
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3310
    :goto_0
    return v1

    .line 3309
    :catch_0
    move-exception v0

    .line 3310
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3208
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3210
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3212
    :goto_0
    return-void

    .line 3211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3103
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 3105
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 3131
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 3133
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    .prologue
    .line 1731
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1754
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1756
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1758
    :goto_0
    return v1

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .locals 2
    .param p1, "serverConfig"    # Landroid/net/DhcpServerConfiguration;

    .prologue
    .line 2657
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 3369
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    :goto_0
    return-void

    .line 3370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2692
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    :goto_0
    return-void

    .line 2693
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1809
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "p"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2460
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2463
    :goto_0
    return-void

    .line 2461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1836
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1837
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1839
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1840
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 1841
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1842
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 1844
    :cond_0
    const-string v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMobileDataEnabled()+ subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subId":I
    :cond_1
    :goto_0
    return-void

    .line 1846
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setNcmTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2335
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setNcmTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2337
    :goto_0
    return v1

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 0
    .param p1, "preference"    # I

    .prologue
    .line 793
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2676
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2679
    :goto_0
    return-void

    .line 2677
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRoamingReduction(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 3549
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setRoamingReduction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3551
    :goto_0
    return-void

    .line 3550
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2312
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2314
    :goto_0
    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 1697
    new-instance v9, Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, p3, v0}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$1;)V

    .line 1699
    .local v9, "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mMessenger:Landroid/os/Messenger;
    invoke-static {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$600(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;

    move-result-object v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    .end local v9    # "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :goto_0
    return-object v9

    .line 1701
    .restart local v9    # "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :catch_0
    move-exception v8

    .line 1702
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "ConnectivityManager"

    const-string v1, "Error starting packet keepalive: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    invoke-virtual {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1704
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 17
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1098
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CallingUid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", CallingPid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1101
    invoke-direct/range {p0 .. p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    .line 1102
    .local v9, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v9, :cond_0

    .line 1103
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v13, 0x3

    .line 1245
    :goto_0
    return v13

    .line 1109
    :cond_0
    const-string v13, "LGT"

    const-string v14, "EUR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1110
    if-nez p1, :cond_1

    const-string v13, "enableMMS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "enableIMS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "enableEIMS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1113
    invoke-virtual/range {p0 .. p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1114
    const-string v13, "ConnectivityManager"

    const-string/jumbo v14, "requested special network with data disabled - rejected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v13, 0x2

    goto :goto_0

    .line 1118
    :cond_1
    if-nez p1, :cond_2

    const-string v13, "enableSUPL"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1119
    const-string v13, "8"

    const-string/jumbo v14, "ril.ActivePDPRejectCause"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1120
    const-string v13, "ConnectivityManager"

    const-string v14, "enableSUPL type  NOT available - rejectCause 8"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v13, 0x2

    goto :goto_0

    .line 1145
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v13, "VZW-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1148
    const/4 v8, 0x1

    .line 1150
    .local v8, "needActivation":Z
    :try_start_0
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1157
    :goto_1
    const/4 v13, 0x5

    invoke-virtual {v9, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v8, :cond_3

    .line 1158
    const-string v13, "ConnectivityManager"

    const-string v14, "Device is not activated yet"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v13, 0x3

    goto/16 :goto_0

    .line 1151
    :catch_0
    move-exception v5

    .line 1152
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v13, "ConnectivityManager"

    const-string/jumbo v14, "needsOtaServiceProvisioning returned RemoteException"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1153
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 1154
    .local v5, "ex":Ljava/lang/NullPointerException;
    const-string v13, "ConnectivityManager"

    const-string/jumbo v14, "needsOtaServiceProvisioning has NullPointerException"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1165
    .end local v5    # "ex":Ljava/lang/NullPointerException;
    .end local v8    # "needActivation":Z
    :cond_3
    if-eqz v3, :cond_5

    const-string v13, "VZW-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1166
    const-string v13, "enableFOTA"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "enableMMS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "enableCBS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "enable800APN"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1170
    :cond_4
    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->firstNetCapToApnType()Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, "apnType":Ljava/lang/String;
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "feature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " apnType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1173
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_5

    .line 1175
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1176
    .local v6, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v6, v1}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1177
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "APN type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") NOT available"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1178
    const/4 v13, 0x2

    goto/16 :goto_0

    .line 1180
    .end local v6    # "it":Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v4

    .line 1181
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "ConnectivityManager"

    const-string v14, "RemoteException isApnTypeAvailable()"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SupportImsService"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1189
    const-string v13, "enableIMS"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "enableXCAP"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1190
    :cond_6
    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->firstNetCapToApnType()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .restart local v1    # "apnType":Ljava/lang/String;
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VoLTE : feature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " apnType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1193
    .restart local v2    # "b":Landroid/os/IBinder;
    if-eqz v2, :cond_8

    .line 1195
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1196
    .restart local v6    # "it":Lcom/android/internal/telephony/ITelephony;
    const/4 v13, 0x3

    invoke-static {v13}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v12

    .line 1197
    .local v12, "subId":I
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1198
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v12

    .line 1200
    :cond_7
    invoke-interface {v6, v1, v12}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1201
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "APN type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") NOT available"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1202
    const/4 v13, 0x2

    goto/16 :goto_0

    .line 1182
    .end local v6    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v12    # "subId":I
    :catch_3
    move-exception v4

    .line 1183
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v13, "ConnectivityManager"

    const-string v14, "NullPointerException isApnTypeAvailable()"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1204
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v4

    .line 1205
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "ConnectivityManager"

    const-string v14, "RemoteException isApnTypeAvailable()"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_3
    const/4 v11, 0x0

    .line 1215
    .local v11, "request":Landroid/net/NetworkRequest;
    sget-object v14, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v14

    .line 1216
    :try_start_3
    sget-object v13, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1217
    .local v7, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v7, :cond_a

    .line 1218
    const-string v13, "ConnectivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "renewing startUsingNetworkFeature request "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1220
    iget-object v13, v7, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v13, :cond_9

    .line 1221
    const/4 v13, 0x0

    monitor-exit v14

    goto/16 :goto_0

    .line 1228
    .end local v7    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 1206
    .end local v11    # "request":Landroid/net/NetworkRequest;
    .restart local v1    # "apnType":Ljava/lang/String;
    .restart local v2    # "b":Landroid/os/IBinder;
    :catch_5
    move-exception v4

    .line 1207
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v13, "ConnectivityManager"

    const-string v14, "NullPointerException isApnTypeAvailable()"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1223
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .restart local v11    # "request":Landroid/net/NetworkRequest;
    :cond_9
    const/4 v13, 0x1

    :try_start_4
    monitor-exit v14

    goto/16 :goto_0

    .line 1227
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;

    move-result-object v11

    .line 1228
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1229
    if-eqz v11, :cond_c

    .line 1230
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "starting startUsingNetworkFeature for request "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v10

    .line 1234
    .local v10, "network":Landroid/net/Network;
    if-eqz v10, :cond_b

    .line 1235
    const-string v13, "ConnectivityManager"

    const-string/jumbo v14, "return APN ALREADY ACTIVE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1236
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1238
    .end local v10    # "network":Landroid/net/Network;
    :catch_6
    move-exception v4

    .line 1239
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "ConnectivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNetworkForType "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1244
    :cond_c
    const-string v13, "ConnectivityManager"

    const-string v14, " request Failed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v13, 0x3

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1271
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1272
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1273
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_0

    .line 1274
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/4 v2, -0x1

    .line 1295
    :goto_0
    return v2

    .line 1281
    :cond_0
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 1282
    :try_start_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1283
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_2

    .line 1284
    const-string v2, "ConnectivityManager"

    const-string/jumbo v4, "replace netCap from sLegacyRequests"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1289
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-direct {p0, v1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1293
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1287
    :cond_2
    :try_start_1
    const-string v2, "ConnectivityManager"

    const-string/jumbo v4, "not found netCap at sLegacyRequests"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1289
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public tagSocket(Landroid/os/ParcelFileDescriptor;II)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uid"    # I
    .param p3, "tag"    # I

    .prologue
    .line 3532
    :try_start_0
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in connectivity manager pfd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->tagSocket(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3537
    :goto_0
    return-void

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConnectivityManager"

    const-string v2, "Exception while Tag Socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2131
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2133
    :goto_0
    return v1

    .line 2132
    :catch_0
    move-exception v0

    .line 2133
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3347
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    .line 3348
    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3324
    if-eqz p1, :cond_0

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-nez v0, :cond_1

    .line 3326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NetworkCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3330
    :cond_1
    :try_start_0
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkCallback; CallingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CallingPid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$800(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    :goto_0
    return-void

    .line 3334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 2707
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    :goto_0
    return-void

    .line 2708
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2152
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2154
    :goto_0
    return v1

    .line 2153
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public updateLockdownVpn()Z
    .locals 2

    .prologue
    .line 2584
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2586
    :goto_0
    return v1

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
