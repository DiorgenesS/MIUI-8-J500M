.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field public static final ALL:Ljava/lang/String; = "ALL"

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field private static final DBG:Z = false

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field private static final INVALID_NETID:I = -0x1

.field private static final MSG_RELEASE_NETWORK:I = 0x0

.field public static final NETID:Ljava/lang/String; = "NETID"

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field private static final REPORT_CACHE_SIZE:I = 0x5

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field private mNetworkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkIdListLock:Ljava/lang/Object;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field private mReportCacheIndex:I

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 109
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 113
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 115
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 119
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 125
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 167
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 172
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v5, "filterPkg":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v9, "filterUser":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v13, "filterBoot":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    .line 196
    new-instance v16, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    invoke-direct/range {v16 .. v17}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 201
    .local v16, "taskInitDaemonCache":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    .line 203
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/enterprise/firewall/DomainFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworkId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method private checkAdminInDatabase(I)I
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1080
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1081
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const-string v5, "adminUid"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1093
    :goto_0
    return v2

    .line 1088
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1090
    const/4 v2, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private clearReportForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1246
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1248
    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "headerSize"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .param p4, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    .line 1016
    .local v0, "argSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v2, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1018
    .local v3, "listValuesSize":I
    if-eqz p4, :cond_0

    .line 1019
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v3, v8

    .line 1021
    :cond_0
    if-eqz p4, :cond_1

    add-int v8, p2, v3

    add-int/2addr v8, v0

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_3

    .line 1022
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1023
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1053
    :cond_2
    return-void

    .line 1027
    :cond_3
    const-string v8, ";"

    invoke-virtual {p4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1028
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1029
    .local v1, "counter":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 1030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v4, "newList":Ljava/lang/StringBuilder;
    add-int v6, p2, v0

    .line 1032
    .local v6, "totalTemp":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 1033
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .line 1034
    .local v7, "valueSize":I
    add-int v8, v6, v7

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_5

    .line 1035
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1036
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 1041
    add-int/2addr v6, v7

    .line 1045
    goto :goto_1

    .line 1038
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1046
    .end local v7    # "valueSize":I
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1047
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1050
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1141
    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1144
    :cond_0
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    :cond_0
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    :goto_0
    return-object v0

    .line 1135
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1136
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized executeCommand(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1058
    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    .line 1059
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1072
    :cond_0
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string/jumbo v3, "domainFilterCmd"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1073
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    :goto_1
    monitor-exit p0

    return-void

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to wait for socket creation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1065
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1066
    .local v1, "illex":Ljava/lang/IllegalThreadStateException;
    :try_start_5
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Thread already started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1056
    .end local v1    # "illex":Ljava/lang/IllegalThreadStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1074
    :catch_2
    move-exception v0

    .line 1075
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to send command to daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 278
    .local v2, "token":J
    const/4 v1, 0x0

    .line 280
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 289
    :cond_0
    const/4 v4, -0x1

    .line 290
    :goto_1
    return v4

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception getting package info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 290
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1
.end method

.method private getConnectivityService()Landroid/net/IConnectivityManager;
    .locals 2

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 1652
    const-string/jumbo v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1653
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1654
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 1657
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rule"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getNetworkIdInfoIndex(I)I
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v2, -0x1

    .line 1627
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1635
    :goto_0
    return v0

    .line 1629
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1631
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1632
    monitor-exit v3

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1634
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 1635
    goto :goto_0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 1641
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1642
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1643
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 1646
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private initDaemonCache()V
    .locals 24

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v20

    .line 907
    .local v20, "rulesInDb":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 955
    :cond_0
    return-void

    .line 912
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    .line 913
    .local v19, "rule":Landroid/content/ContentValues;
    const-string v4, "blacklist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 914
    .local v8, "blacklist":Ljava/lang/String;
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 915
    .local v9, "whitelist":Ljava/lang/String;
    const-string/jumbo v4, "dns1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 916
    .local v14, "dns1":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 918
    :cond_3
    const-string v4, "adminUid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 919
    .local v11, "adminUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 920
    .local v23, "userId":I
    const/4 v12, 0x0

    .line 921
    .local v12, "appUid":Ljava/lang/String;
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 922
    .local v18, "packageName":Ljava/lang/String;
    const-string v4, "*"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 923
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 937
    :cond_4
    :goto_1
    if-eqz v12, :cond_2

    .line 938
    const/16 v17, -0x1

    .line 939
    .local v17, "netId":I
    if-eqz v14, :cond_5

    .line 940
    const-string/jumbo v4, "dns2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 941
    .local v15, "dns2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 942
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_5

    .line 943
    const-string/jumbo v4, "networkId"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 945
    .local v21, "selection":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 950
    .end local v15    # "dns2":Ljava/lang/String;
    .end local v21    # "selection":Landroid/content/ContentValues;
    :cond_5
    const-string v5, "ADD"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v17    # "netId":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v13

    .line 926
    .local v13, "appUidInt":I
    const/4 v4, -0x1

    if-eq v13, v4, :cond_4

    .line 927
    const-string/jumbo v4, "signature"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 928
    .local v22, "signature":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 930
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method

.method private initReportCache()V
    .locals 8

    .prologue
    .line 958
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 959
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v3, "reportEnabled":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DomainFilterReportStatus"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 963
    .local v1, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 971
    :cond_0
    return-void

    .line 967
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 968
    .local v0, "admin":Landroid/content/ContentValues;
    const-string/jumbo v5, "userId"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 969
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initUserIdMap()V
    .locals 14

    .prologue
    .line 206
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 207
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 209
    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v8, :cond_2

    .line 210
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 211
    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v9, :cond_2

    .line 212
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v11

    .line 213
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 214
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v10, 0x80

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 218
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 219
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 221
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v9    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v2, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportStatus"

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1186
    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1187
    :cond_0
    const/4 v2, 0x0

    .line 1189
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1486
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1503
    :goto_0
    return v2

    .line 1489
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1490
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 1491
    .local v1, "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1492
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1495
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1496
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->increaseCounter()I

    .line 1498
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1502
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 232
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 233
    .local v5, "userId":I
    if-eq v5, v7, :cond_2

    .line 234
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7

    .line 235
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 236
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 237
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 239
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 242
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 245
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 255
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 256
    .local v7, "userId":I
    if-eq v7, v1, :cond_0

    .line 257
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 258
    .local v8, "userIdObj":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    const-string v1, "CLEAR"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v8    # "userIdObj":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 260
    .restart local v8    # "userIdObj":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, "pkgAdded":Ljava/lang/String;
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 300
    .local v20, "userId":I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    if-nez v15, :cond_2

    .line 301
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v19

    .line 306
    .local v19, "uid":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    .line 307
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "Failed to retrieve app info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 312
    :try_start_0
    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 313
    .local v13, "objUserID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 314
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v14, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v14    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v17, "selection":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "#SelectClause#"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 328
    .local v10, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 330
    .local v16, "rule":Landroid/content/ContentValues;
    const-string/jumbo v3, "signature"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 331
    .local v18, "signature":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    :cond_4
    const-string v3, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v3, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "whiteListInDB":Ljava/lang/String;
    const-string/jumbo v3, "dns1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 335
    .local v11, "dns1":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_5
    const/4 v12, -0x1

    .line 339
    .local v12, "netId":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 340
    const-string/jumbo v3, "dns2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 341
    const/4 v3, -0x1

    if-eq v12, v3, :cond_6

    .line 343
    const-string/jumbo v3, "networkId"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 347
    :cond_6
    const-string v4, "ADD"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    .end local v7    # "blackListInDB":Ljava/lang/String;
    .end local v8    # "whiteListInDB":Ljava/lang/String;
    .end local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11    # "dns1":Ljava/lang/String;
    .end local v12    # "netId":I
    .end local v16    # "rule":Landroid/content/ContentValues;
    .end local v17    # "selection":Landroid/content/ContentValues;
    .end local v18    # "signature":Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 320
    .end local v13    # "objUserID":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 362
    .local v16, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "pkgRemoved":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_1

    if-eqz v12, :cond_1

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 365
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 366
    .local v8, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 369
    .local v15, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v14, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "#SelectClause#"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v1, "packageName"

    invoke-virtual {v14, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "networkId"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 379
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    :cond_0
    monitor-exit v17

    .line 398
    .end local v8    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    .end local v15    # "uid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 383
    .restart local v8    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v14    # "selectionValues":Landroid/content/ContentValues;
    .restart local v15    # "uid":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 384
    .local v13, "rule":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkId"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 385
    .local v11, "netId":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_3

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 388
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    const-string/jumbo v1, "networkId"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 393
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3
    const-string v2, "REMOVE"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11    # "netId":I
    .end local v13    # "rule":Landroid/content/ContentValues;
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    .end local v15    # "uid":Ljava/lang/String;
    :cond_4
    monitor-exit v17

    goto :goto_0

    .end local v8    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 405
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 406
    .local v11, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, "pkgReplaced":Ljava/lang/String;
    if-eq v11, v3, :cond_0

    if-nez v10, :cond_2

    .line 408
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 415
    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 417
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 418
    monitor-exit v1

    goto :goto_0

    .line 429
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 421
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 422
    .local v9, "oldUid":I
    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v8

    .line 423
    .local v8, "newUid":I
    if-ne v8, v3, :cond_5

    .line 424
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve app info"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v1

    goto :goto_0

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    if-eq v9, v8, :cond_1

    .line 431
    const-string v1, "REPLACE"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseNetworkId(I)V
    .locals 9
    .param p1, "netId"    # I

    .prologue
    const/4 v6, -0x1

    .line 1515
    if-eq p1, v6, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1516
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "No network to release"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkIdInfoIndex(I)I

    move-result v2

    .line 1520
    .local v2, "netInfoPos":I
    if-ne v2, v6, :cond_2

    .line 1521
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "No network to release"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1525
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1526
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to retrieve NetworkManagementService instance"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1531
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to retrieve ConnectivityService instance"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1536
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->decreaseCounter()I

    move-result v0

    .line 1537
    .local v0, "counter":I
    if-nez v0, :cond_5

    .line 1538
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1541
    .local v4, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1546
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v3, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1549
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    .end local v4    # "token":J
    :cond_5
    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v0    # "counter":I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1547
    .restart local v0    # "counter":I
    .restart local v4    # "token":J
    :catch_0
    move-exception v3

    .line 1549
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1542
    :catch_1
    move-exception v1

    .line 1543
    .local v1, "exc":Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to remove network"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1546
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v3, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1549
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1547
    :catch_2
    move-exception v3

    .line 1549
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1545
    .end local v1    # "exc":Ljava/lang/Exception;
    :catchall_3
    move-exception v3

    .line 1546
    :try_start_8
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v7, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1549
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    throw v3

    .line 1547
    :catch_3
    move-exception v7

    .line 1549
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_4
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private releaseNetworks(I)V
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    const/4 v9, 0x0

    .line 1558
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1559
    .local v6, "selection":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1560
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v7, "networkId"

    aput-object v7, v0, v9

    .line 1561
    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 1563
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1575
    :cond_0
    return-void

    .line 1568
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1569
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "networkId"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1570
    .local v5, "netId":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 1571
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v9, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1572
    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1221
    const/4 v2, -0x1

    .line 1223
    .local v2, "userId":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1227
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1230
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string/jumbo v3, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterReportTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1235
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to save domain report in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing userId received from daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    .prologue
    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_0
    const-string v2, "CLEAR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REPLACE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 984
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1011
    :cond_2
    :goto_0
    return-void

    .line 988
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 989
    .local v0, "cmdHeaderSize":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 990
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 991
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 993
    :cond_4
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 995
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 996
    const-string v2, "BLACKLIST"

    invoke-direct {p0, v1, v0, v2, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1001
    const-string v2, "WHITELIST"

    invoke-direct {p0, v1, v0, v2, p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_7
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-1"

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1006
    const-string v2, "NETID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 1422
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1424
    .local v5, "netId":I
    if-eq v5, v7, :cond_0

    move v7, v5

    .line 1479
    :goto_0
    return v7

    .line 1427
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1428
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "failed to retrieve NetworkManagementService instance"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1432
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1433
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "failed to retrieve ConnectivityService instance"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    :cond_2
    const/4 v6, 0x1

    .line 1440
    .local v6, "retry":Z
    :cond_3
    const/4 v4, 0x0

    .line 1441
    .local v4, "netCreated":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1443
    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v7}, Landroid/net/IConnectivityManager;->getReservedNetworkId()I

    move-result v5

    .line 1445
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v7, v5, v10, v11}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V

    .line 1446
    const/4 v4, 0x1

    .line 1447
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    const/4 v7, 0x1

    aput-object p2, v0, v7

    .line 1449
    .local v0, "dnses":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v10, ""

    invoke-interface {v7, v5, v0, v10}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1451
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v11, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-direct {v11, p0, v5, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1453
    const/4 v6, 0x0

    .line 1476
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    .end local v0    # "dnses":[Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_3

    move v7, v5

    .line 1479
    goto :goto_0

    .line 1452
    .restart local v0    # "dnses":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1455
    .end local v0    # "dnses":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1457
    .local v3, "ilStateEx":Ljava/lang/IllegalStateException;
    const/4 v6, 0x0

    .line 1476
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1459
    .end local v3    # "ilStateEx":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 1460
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v4, :cond_4

    .line 1461
    :try_start_4
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set dns for network "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1463
    :try_start_5
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v5}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1472
    :goto_2
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v7, v5}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1476
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1464
    :catch_2
    move-exception v2

    .line 1465
    .local v2, "exc":Ljava/lang/Exception;
    :try_start_7
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to remove network"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 1476
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "exc":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1468
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_8
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to create new network with id provided "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 1473
    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method private trimDomainUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1129
    :cond_1
    return-void
.end method

.method private updateDaemonCache(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "rule"    # Lcom/sec/enterprise/firewall/DomainFilterRule;
    .param p3, "operation"    # Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 863
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 864
    .local v10, "userId":I
    const-string v0, "CLEAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    const-string v1, "CLEAR"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "ADD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "REMOVE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 870
    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 873
    .local v2, "appId":Ljava/lang/String;
    const-string v0, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 874
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 880
    const/4 v4, 0x0

    .local v4, "blackList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 881
    .local v5, "whiteList":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v8

    .line 882
    .local v8, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    .line 883
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 884
    const-string v0, ";"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 890
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v8

    .line 891
    if-eqz v8, :cond_a

    .line 892
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 893
    const-string v0, ";"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_3
    move-object v0, p0

    move-object v1, p3

    move-object v6, p4

    .line 899
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "blackList":Ljava/lang/String;
    .end local v5    # "whiteList":Ljava/lang/String;
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 875
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 876
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 886
    .restart local v4    # "blackList":Ljava/lang/String;
    .restart local v5    # "whiteList":Ljava/lang/String;
    .restart local v8    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string v4, ""

    goto :goto_2

    .line 887
    :cond_8
    const-string v0, "REMOVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 888
    const-string v4, "ALL"

    goto :goto_2

    .line 895
    :cond_9
    const-string v5, ""

    goto :goto_3

    .line 896
    :cond_a
    const-string v0, "REMOVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 897
    const-string v5, "ALL"

    goto :goto_3
.end method

.method private validateApplicationIdentity(Lcom/sec/enterprise/AppIdentity;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 7
    .param p1, "appId"    # Lcom/sec/enterprise/AppIdentity;

    .prologue
    .line 1743
    if-nez p1, :cond_0

    .line 1744
    new-instance v2, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Invalid AppIdentity object."

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1760
    :goto_0
    return-object v2

    .line 1748
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, "signature":Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1751
    new-instance v2, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v5, "There is no signature related to all applications."

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1755
    :cond_1
    invoke-static {v0}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1756
    new-instance v2, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package name. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private validateDnses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1720
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1721
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1727
    :cond_0
    :goto_0
    return v0

    .line 1723
    :cond_1
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1724
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1727
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDomains(Lcom/sec/enterprise/firewall/DomainFilterRule;)Z
    .locals 4
    .param p1, "dfRule"    # Lcom/sec/enterprise/firewall/DomainFilterRule;

    .prologue
    const/4 v2, 0x0

    .line 1731
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1732
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1739
    .end local v0    # "domain":Ljava/lang/String;
    :goto_0
    return v2

    .line 1735
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1736
    .restart local v0    # "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1739
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1661
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v6, "android"

    invoke-static {v5, v6, v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 1664
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1666
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1672
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    .line 1668
    :catch_0
    move-exception v1

    .line 1669
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to validate application signature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 6
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 1683
    if-eqz p1, :cond_1

    .line 1684
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1698
    :goto_0
    return v2

    .line 1686
    :cond_0
    invoke-static {p3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1687
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v0

    .line 1688
    .local v0, "appUid":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1689
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 1690
    .local v1, "userIdObj":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1691
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    monitor-exit v4

    move v2, v3

    .line 1694
    goto :goto_0

    .line 1693
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1698
    .end local v0    # "appUid":I
    .end local v1    # "userIdObj":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 39
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 440
    :cond_0
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 441
    .local v23, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v34, 0x0

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "No rule was specified."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v23, v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v24, v23

    .line 620
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v24, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v24

    .line 448
    .end local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 449
    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    .line 450
    .local v30, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v5

    .line 451
    .local v5, "adminDb":I
    const/16 v34, -0x1

    move/from16 v0, v34

    if-ne v5, v0, :cond_2

    .line 452
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 453
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v34, 0x0

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v23, v34

    move-object/from16 v24, v23

    .line 455
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .line 458
    .end local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v34, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 460
    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 462
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_1a

    .line 463
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 464
    .local v25, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    if-nez v25, :cond_4

    .line 465
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "No rule was specified."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 462
    :cond_3
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 460
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    :catchall_0
    move-exception v34

    :try_start_4
    monitor-exit v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 439
    .end local v5    # "adminDb":I
    .end local v6    # "adminUid":I
    .end local v30    # "userId":I
    :catchall_1
    move-exception v34

    monitor-exit p0

    throw v34

    .line 471
    .restart local v5    # "adminDb":I
    .restart local v6    # "adminUid":I
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "i":I
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .restart local v30    # "userId":I
    :cond_4
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v12

    .line 472
    .local v12, "dns1":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v13

    .line 473
    .local v13, "dns2":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_6

    const/16 v17, 0x1

    .line 475
    .local v17, "hasDns":Z
    :goto_3
    if-nez v17, :cond_7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v34

    if-eqz v34, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v34

    if-eqz v34, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_7

    .line 478
    :cond_5
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "No parameters provided."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto :goto_2

    .line 473
    .end local v17    # "hasDns":Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 484
    .restart local v17    # "hasDns":Z
    :cond_7
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/sec/enterprise/AppIdentity;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v34

    aput-object v34, v23, v18

    .line 485
    aget-object v34, v23, v18

    if-nez v34, :cond_3

    .line 489
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 490
    .local v21, "packageName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v28

    .line 491
    .local v28, "signature":Ljava/lang/String;
    const/16 v29, 0x1

    .line 492
    .local v29, "signatureMatch":Z
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_8

    .line 493
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v21

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 495
    :cond_8
    const/4 v8, 0x1

    .line 496
    .local v8, "appIsInstalled":Z
    const-string v34, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_9

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v30

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v8

    .line 499
    :cond_9
    if-nez v29, :cond_a

    if-eqz v8, :cond_a

    .line 500
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "Given signature does not match with the application."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto/16 :goto_2

    .line 507
    :cond_a
    if-nez v17, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_c

    :cond_b
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDnses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 508
    :cond_c
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "Invalid DNS(s) provided"

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto/16 :goto_2

    .line 514
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/sec/enterprise/firewall/DomainFilterRule;)Z

    move-result v34

    if-nez v34, :cond_e

    .line 515
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "Invalid domain."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto/16 :goto_2

    .line 522
    :cond_e
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .local v31, "values":Landroid/content/ContentValues;
    const-string v34, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string/jumbo v34, "packageName"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v27, "selection":Landroid/content/ContentValues;
    const-string v34, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string/jumbo v34, "packageName"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v34, v0

    const-string v35, "DomainFilterTable"

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 532
    .local v11, "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v26, "ruleInDb":Landroid/content/ContentValues;
    if-eqz v11, :cond_f

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_f

    .line 534
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "ruleInDb":Landroid/content/ContentValues;
    check-cast v26, Landroid/content/ContentValues;

    .line 536
    .restart local v26    # "ruleInDb":Landroid/content/ContentValues;
    :cond_f
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v14

    .line 537
    .local v14, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    .line 538
    .local v15, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_10

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_14

    .line 541
    :cond_10
    const-string v34, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 542
    .local v10, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v34, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 546
    .local v33, "whiteListInDB":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 551
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 552
    .local v9, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v32

    .line 556
    .local v32, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v34

    if-eqz v34, :cond_11

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v34

    if-nez v34, :cond_12

    :cond_11
    const/16 v16, 0x1

    .line 558
    .local v16, "hasChangesToBeMade":Z
    :goto_4
    if-nez v16, :cond_13

    if-nez v17, :cond_13

    .line 559
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "The specified rule is already in the database."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto/16 :goto_2

    .line 556
    .end local v16    # "hasChangesToBeMade":Z
    :cond_12
    const/16 v16, 0x0

    goto :goto_4

    .line 566
    .restart local v16    # "hasChangesToBeMade":Z
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v33

    .line 573
    const-string v34, "blacklist"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string/jumbo v34, "whitelist"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v16    # "hasChangesToBeMade":Z
    .end local v32    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v33    # "whiteListInDB":Ljava/lang/String;
    :cond_14
    const/16 v20, -0x1

    .line 578
    .local v20, "netId":I
    if-eqz v17, :cond_17

    .line 579
    if-eqz v8, :cond_16

    .line 580
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 581
    const/16 v34, -0x1

    move/from16 v0, v20

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    .line 582
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "Error occurred applying DNS(s)"

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    goto/16 :goto_2

    .line 587
    :cond_15
    const-string/jumbo v34, "networkId"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 589
    const-string/jumbo v34, "networkId"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 590
    .local v22, "prevNetId":I
    const/16 v34, -0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_16

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v34 .. v36}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 593
    .local v19, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 597
    .end local v19    # "msg":Landroid/os/Message;
    .end local v22    # "prevNetId":I
    :cond_16
    const-string/jumbo v34, "dns1"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v34, "dns2"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string/jumbo v34, "networkId"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v34, v0

    const-string v35, "DomainFilterTable"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v34

    if-nez v34, :cond_18

    .line 603
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "Failed to add/update rule in the database."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18

    .line 607
    if-eqz v17, :cond_3

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v34 .. v36}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 610
    .restart local v19    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 613
    .end local v19    # "msg":Landroid/os/Message;
    :cond_18
    if-eqz v8, :cond_19

    .line 614
    const-string v34, "ADD"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_19
    new-instance v34, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v35, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v37, "The rule(s) was successfully added/updated."

    invoke-direct/range {v34 .. v37}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v34, v23, v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .end local v8    # "appIsInstalled":Z
    .end local v11    # "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "dns1":Ljava/lang/String;
    .end local v13    # "dns2":Ljava/lang/String;
    .end local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "hasDns":Z
    .end local v20    # "netId":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v26    # "ruleInDb":Landroid/content/ContentValues;
    .end local v27    # "selection":Landroid/content/ContentValues;
    .end local v28    # "signature":Ljava/lang/String;
    .end local v29    # "signatureMatch":Z
    .end local v31    # "values":Landroid/content/ContentValues;
    :cond_1a
    move-object/from16 v24, v23

    .line 620
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto/16 :goto_0
.end method

.method adminRemoved(I)V
    .locals 3
    .param p1, "adminUid"    # I

    .prologue
    .line 1099
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1100
    .local v0, "userId":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1101
    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1103
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1105
    :cond_0
    return-void
.end method

.method enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 1148
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1149
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1150
    .local v2, "userId":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1151
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1152
    const-string/jumbo v5, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    .local v1, "selection":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DomainFilterReportStatus"

    invoke-virtual {v5, v6, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1157
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Failed to change Domain Filter report status on database."

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-object v5

    .line 1161
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1162
    .local v3, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1163
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_1
    :goto_1
    new-instance v6, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_3

    const-string v5, "Domain Report successfully enabled."

    :goto_2
    invoke-direct {v6, v7, v8, v5}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 1164
    :cond_2
    if-nez p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1165
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1166
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1167
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    goto :goto_1

    .line 1171
    :cond_3
    const-string v5, "Domain Report successfully disabled."

    goto :goto_2
.end method

.method getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1195
    .local v6, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v4, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterReport;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1212
    :cond_0
    return-object v4

    .line 1199
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v5, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1201
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterReportTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1204
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1205
    .local v3, "report":Landroid/content/ContentValues;
    const-string/jumbo v7, "packageName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1207
    :cond_3
    new-instance v7, Lcom/sec/enterprise/firewall/DomainFilterReport;

    const-string/jumbo v8, "time"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lcom/sec/enterprise/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v14, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 816
    .local v17, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 818
    .local v10, "adminUid":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v6, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v7, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v20, "adminUid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "DomainFilterTable"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13

    .line 824
    .local v13, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 825
    .local v12, "cv":Landroid/content/ContentValues;
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 826
    .local v16, "packageName":Ljava/lang/String;
    const-string/jumbo v20, "signature"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 827
    .local v18, "signature":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 828
    :cond_1
    const-string v20, "blacklist"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 829
    .local v11, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v20, "whitelist"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 830
    .local v19, "whiteListInDB":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 831
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 835
    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 836
    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 840
    :goto_2
    const-string/jumbo v20, "dns1"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "dns1":Ljava/lang/String;
    const-string/jumbo v20, "dns2"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 842
    .local v9, "dns2":Ljava/lang/String;
    new-instance v5, Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .local v5, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    new-instance v4, Lcom/sec/enterprise/firewall/DomainFilterRule;

    invoke-direct/range {v4 .. v9}, Lcom/sec/enterprise/firewall/DomainFilterRule;-><init>(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .local v4, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    .end local v4    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v5    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v8    # "dns1":Ljava/lang/String;
    .end local v9    # "dns2":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 838
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 848
    .end local v11    # "blackListInDB":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "signature":Ljava/lang/String;
    .end local v19    # "whiteListInDB":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 849
    return-object v14
.end method

.method isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1177
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .locals 8
    .param p1, "adminUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1108
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1109
    .local v7, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1112
    const-string v1, "CLEAR"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 1116
    :cond_0
    return-void
.end method

.method public declared-synchronized removeDnsForApplication(Lcom/sec/enterprise/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 14
    .param p1, "dfRule"    # Lcom/sec/enterprise/firewall/DomainFilterRule;
    .param p2, "adminUid"    # I
    .param p3, "valuesInDB"    # Landroid/content/ContentValues;

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_0
    const-string/jumbo v10, "dns1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "dns1Db":Ljava/lang/String;
    const-string/jumbo v10, "dns2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1379
    .local v4, "dns2Db":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "dns1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v3

    .line 1382
    .local v3, "dns2":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v3, :cond_0

    if-nez v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1384
    :cond_2
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "DNS(s) provided doesn\'t match DNS(s) in database."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    :goto_0
    monitor-exit p0

    return-object v10

    .line 1389
    :cond_3
    :try_start_1
    const-string/jumbo v10, "networkId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1390
    .local v6, "netId":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4

    .line 1391
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1392
    .local v5, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1393
    const/4 v6, -0x1

    .line 1395
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1396
    .local v7, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "dns1"

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string/jumbo v11, "dns2"

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v10, "networkId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1401
    .local v9, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1402
    .local v8, "packageName":Ljava/lang/String;
    const-string v10, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1403
    const-string/jumbo v10, "packageName"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "DomainFilterTable"

    invoke-virtual {v10, v11, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1405
    new-instance v10, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v13, "Failed to remove DNS(s) from database."

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1377
    .end local v1    # "dns1":Ljava/lang/String;
    .end local v2    # "dns1Db":Ljava/lang/String;
    .end local v3    # "dns2":Ljava/lang/String;
    .end local v4    # "dns2Db":Ljava/lang/String;
    .end local v6    # "netId":I
    .end local v7    # "newValues":Landroid/content/ContentValues;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "selectionValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1409
    .restart local v1    # "dns1":Ljava/lang/String;
    .restart local v2    # "dns1Db":Ljava/lang/String;
    .restart local v3    # "dns2":Ljava/lang/String;
    .restart local v4    # "dns2Db":Ljava/lang/String;
    .restart local v6    # "netId":I
    .restart local v7    # "newValues":Landroid/content/ContentValues;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "selectionValues":Landroid/content/ContentValues;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method

.method declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 629
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v18, v0

    .line 630
    .local v18, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v28, 0x0

    new-instance v29, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v31, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v32, "No rule was specified."

    invoke-direct/range {v29 .. v32}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v29, v18, v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v18

    .line 810
    .end local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v19, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v19

    .line 636
    .end local v19    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 638
    .local v6, "adminUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v5

    .line 639
    .local v5, "adminStatus":I
    if-nez v5, :cond_2

    .line 640
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v18, v0

    .line 641
    .restart local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v28, 0x0

    new-instance v29, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v31, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v32, "The rules are already cleared."

    invoke-direct/range {v29 .. v32}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v29, v18, v28

    :cond_1
    :goto_1
    move-object/from16 v19, v18

    .line 810
    .end local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v19    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .line 644
    .end local v19    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_3

    .line 645
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v18, v0

    .line 646
    .restart local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v28, 0x0

    new-instance v29, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v31, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v32, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v29 .. v32}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v29, v18, v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 628
    .end local v5    # "adminStatus":I
    .end local v6    # "adminUid":I
    .end local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 649
    .restart local v5    # "adminStatus":I
    .restart local v6    # "adminUid":I
    :cond_3
    :try_start_2
    sget-object v28, Lcom/sec/enterprise/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 651
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v18, v0

    .line 652
    .restart local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 653
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v22, "selectionValues":Landroid/content/ContentValues;
    const-string v28, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v28

    if-gtz v28, :cond_4

    .line 657
    const/16 v28, 0x0

    new-instance v29, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v31, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v32, "Failed to clear rules from database."

    invoke-direct/range {v29 .. v32}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v29, v18, v28

    .line 665
    :goto_2
    const/16 v28, 0x0

    const-string v29, "CLEAR"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    :cond_4
    const/16 v28, 0x0

    new-instance v29, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v31, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Rules successfully cleared. Admin: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v29 .. v32}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v29, v18, v28

    goto :goto_2

    .line 667
    .end local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v22    # "selectionValues":Landroid/content/ContentValues;
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v18, v0

    .line 668
    .restart local v18    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_1

    .line 669
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 670
    .local v20, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/sec/enterprise/AppIdentity;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v28

    aput-object v28, v18, v15

    .line 671
    aget-object v28, v18, v15

    if-eqz v28, :cond_7

    .line 668
    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 674
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 676
    .local v17, "packageName":Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .restart local v22    # "selectionValues":Landroid/content/ContentValues;
    const-string v28, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string/jumbo v28, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "DomainFilterTable"

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 682
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 683
    :cond_8
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "The rule is not in the database."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto :goto_4

    .line 690
    :cond_9
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    .line 691
    .local v21, "ruleInDb":Landroid/content/ContentValues;
    const-string/jumbo v28, "signature"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 692
    .local v24, "signatureInDB":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v23

    .line 693
    .local v23, "signature":Ljava/lang/String;
    if-eqz v23, :cond_a

    if-eqz v24, :cond_c

    :cond_a
    if-nez v23, :cond_b

    if-nez v24, :cond_c

    :cond_b
    if-eqz v23, :cond_d

    if-eqz v24, :cond_d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 697
    :cond_c
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "Signature does not match with the previous added."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto/16 :goto_4

    .line 703
    :cond_d
    const/4 v12, 0x0

    .line 704
    .local v12, "hasDns":Z
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_e

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/sec/enterprise/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v28

    aput-object v28, v18, v15

    .line 707
    aget-object v28, v18, v15

    if-nez v28, :cond_6

    .line 710
    const/4 v12, 0x1

    .line 715
    :cond_e
    const-string v28, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    .local v8, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v28, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 720
    .local v27, "whiteListInDB":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v10

    .line 721
    .local v10, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v11

    .line 724
    .local v11, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 728
    .local v14, "hasRulesToDelete":Z
    if-eqz v10, :cond_f

    .line 729
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 730
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 731
    .local v7, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v28

    or-int v14, v14, v28

    .line 743
    .end local v14    # "hasRulesToDelete":Z
    :goto_5
    if-eqz v11, :cond_10

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 745
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v26

    .line 746
    .local v26, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v28

    or-int v14, v14, v28

    .line 758
    .restart local v14    # "hasRulesToDelete":Z
    :goto_6
    if-nez v14, :cond_11

    if-nez v12, :cond_11

    .line 759
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "The rule is not in the database."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto/16 :goto_4

    .line 736
    .end local v7    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 737
    .restart local v7    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v14, v14, 0x1

    .local v14, "hasRulesToDelete":I
    goto :goto_5

    .line 752
    .end local v14    # "hasRulesToDelete":I
    :cond_10
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 753
    .restart local v26    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v14, v14, 0x1

    .local v14, "hasRulesToDelete":Z
    goto :goto_6

    .line 763
    :cond_11
    if-eqz v14, :cond_12

    .line 765
    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 766
    const-string v28, ";"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v27

    .line 769
    :cond_12
    const-string/jumbo v28, "dns1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_14

    const/4 v13, 0x1

    .line 771
    .local v13, "hasDnsDb":Z
    :goto_7
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    if-nez v12, :cond_13

    if-nez v13, :cond_16

    .line 773
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v28

    if-gtz v28, :cond_15

    .line 775
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "Failed to remove/update rule from the database."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto/16 :goto_4

    .line 769
    .end local v13    # "hasDnsDb":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_7

    .line 779
    .restart local v13    # "hasDnsDb":Z
    :cond_15
    const-string/jumbo v28, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 780
    .local v16, "netId":I
    const-string v28, "REMOVE"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "The rule was successfuly removed/updated."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto/16 :goto_4

    .line 788
    .end local v16    # "netId":I
    :cond_16
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 789
    .local v25, "values":Landroid/content/ContentValues;
    const-string v28, "blacklist"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string/jumbo v28, "whitelist"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v28

    if-nez v28, :cond_17

    .line 793
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "Failed to remove/update rule from the database."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15

    goto/16 :goto_4

    .line 797
    :cond_17
    const/16 v16, -0x1

    .line 798
    .restart local v16    # "netId":I
    if-eqz v12, :cond_18

    .line 799
    const-string/jumbo v28, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 800
    :cond_18
    const-string v28, "REMOVE"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v28, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v29, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v31, "The rule was successfuly removed/updated."

    invoke-direct/range {v28 .. v31}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v18, v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method
