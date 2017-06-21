.class public Lcom/android/server/SdpManagerService;
.super Lcom/sec/sdp/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$1;,
        Lcom/android/server/SdpManagerService$EngineMonitor;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$ActionReceiver;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final CMK_DEBUG:Z = false

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLE_ENGINE_MONITOR:Z = false

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final KEK_LEN:I = 0x20

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field public static final SDK_CURRENT_VERSION:D = 1.1

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ACTIVE:I = 0x1

.field public static final SDP_BOOTED:I = 0x1

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_INACTIVE:I = 0x2

.field public static final SDP_LATEST_VERSION:I = 0x5

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bootComplete:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCMKMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mEnginState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private mResetPwdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUM:Landroid/os/UserManager;

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 272
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Lcom/sec/sdp/ISdpManagerService$Stub;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    .line 159
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    .line 177
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    .line 184
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 238
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->bootComplete:Z

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEnginState:Ljava/util/Map;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    .line 244
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 245
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 247
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 248
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 249
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

    .line 252
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 253
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 263
    sput-object p1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 264
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 266
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 268
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 269
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePkgRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpServiceKeeper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object p1
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/TimaHelper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/SdpManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "x5"    # [B

    .prologue
    .line 150
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "cmk"    # [B

    .prologue
    .line 849
    const/4 v5, 0x0

    .line 851
    .local v5, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-nez p4, :cond_1

    .line 853
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .restart local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    :goto_0
    if-eqz p5, :cond_2

    .line 866
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/server/SdpManagerService;->addEngineNative(II[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 867
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle addEngineNative ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v6, -0xc

    .line 889
    :goto_1
    return v6

    .line 856
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: custom engine requires creation parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v6, -0xb

    goto :goto_1

    .line 862
    :cond_1
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    .line 871
    :cond_2
    const-string v0, "SdpManagerService"

    const-string v1, "No cmk for adding engine. :: this must be migration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/util/List;)I

    move-result v6

    .line 877
    .local v6, "ret":I
    if-nez v6, :cond_4

    .line 878
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 879
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 882
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 883
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "engine added! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 886
    :cond_4
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    .line 1013
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 1014
    const/16 v0, 0x3e8

    .line 1015
    .local v0, "candidateId":I
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1017
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v0    # "candidateId":I
    :goto_1
    return v0

    .line 1019
    .restart local v0    # "candidateId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "candidateId":I
    :cond_1
    move v0, v1

    .line 1024
    goto :goto_1
.end method

.method private bootInternal(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1071
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    return v0
.end method

.method private bootNative(I)I
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 2353
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2354
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 2361
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2362
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2363
    if-eqz v0, :cond_0

    .line 2364
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2365
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2366
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2368
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    :cond_1
    if-nez v0, :cond_4

    .line 2379
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2380
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not knox container! boot failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const/16 v8, -0xb

    .line 2438
    :goto_0
    return v8

    .line 2368
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2384
    :cond_2
    const-string v2, "SdpManagerService"

    const-string v3, "Migration from SDP v1(TMR)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2387
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: migration attempt failed. unknown userid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/16 v8, -0xa

    goto :goto_0

    .line 2391
    :cond_3
    const-string v2, "SdpManagerService"

    const-string v3, "bootInternal :: SDP user is there but no SdpEngineInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move v2, p1

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2403
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2405
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2407
    .local v8, "ret":I
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2409
    if-eqz v8, :cond_4

    .line 2410
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2407
    .end local v8    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2415
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    if-eqz v2, :cond_5

    .line 2416
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootNative :: failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const/16 v8, -0xc

    goto/16 :goto_0

    .line 2420
    :cond_5
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2421
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2422
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2424
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v11, :cond_6

    .line 2425
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-direct {p0, v0, v10}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    const/16 v3, -0xd

    if-ne v2, v3, :cond_6

    .line 2429
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2430
    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 2431
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2432
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2433
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2434
    const/4 v8, -0x4

    goto/16 :goto_0

    .line 2422
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 2433
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 2438
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private cacheMasterKey(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # Ljava/lang/String;

    .prologue
    .line 1629
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheMasterKey :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    :cond_0
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v1, "SdpManagerService"

    .line 278
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 284
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private clearCachedMasterKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1609
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1612
    .local v0, "cmk":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedMasterKey (CMK) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1614
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    .end local v0    # "cmk":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private clearResetPasswordKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1620
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1622
    .local v0, "resetPwdKey":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearResetPasswordKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1624
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    .end local v0    # "resetPwdKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;

    .prologue
    .line 893
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 984
    :goto_0
    return-object v1

    .line 895
    :cond_0
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAdded :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 899
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 900
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseDir exists but not a directory! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v1, 0x0

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    .line 905
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "couldn\'t create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 910
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 911
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object p3

    .line 912
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 914
    .local v3, "entry":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 915
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 916
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error in addEngine failed to store resetToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 922
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 923
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 931
    .end local v3    # "entry":[B
    .end local v4    # "token":J
    :cond_4
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 935
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 936
    :cond_5
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "cmk":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_8

    .line 943
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t generate CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 925
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_4

    .line 926
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t create keys for MDPFF SDP without RST_TOKEN"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 939
    :cond_7
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cmk":Ljava/lang/String;
    goto :goto_1

    .line 947
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 948
    :cond_9
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_a
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v1, p3, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 957
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(RST_TOKEN) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 950
    :cond_b
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 951
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(PW) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 962
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateAndStoreCMK(ILjava/lang/String;Ljava/lang/String;)Z

    .line 967
    :cond_d
    const/4 v2, 0x0

    .line 968
    .local v2, "encodedCmk":Ljava/lang/String;
    if-nez p2, :cond_e

    .line 969
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p3, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 976
    :goto_2
    if-nez v2, :cond_f

    .line 977
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "internal error!, can\'t retrieve CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 972
    :cond_e
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p2, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 981
    :cond_f
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 982
    .local v1, "cmk":[B
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3739
    const/4 v0, 0x0

    .line 3740
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3741
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3742
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3743
    const/4 v0, 0x1

    .line 3745
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3746
    return v0
.end method

.method private dumpCache()V
    .locals 0

    .prologue
    .line 1645
    return-void
.end method

.method private enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 3857
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 3858
    .local v1, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 3860
    const/4 v3, -0x5

    .line 3889
    :goto_0
    return v3

    .line 3862
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3863
    const/4 v3, -0x2

    goto :goto_0

    .line 3865
    :cond_1
    const/4 v0, 0x0

    .line 3866
    .local v0, "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3867
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmk":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3868
    .restart local v0    # "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3869
    const/4 v3, 0x0

    goto :goto_0

    .line 3871
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3872
    const/4 v3, -0x1

    .line 3873
    .local v3, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3875
    .local v2, "resetToken":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3876
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v5, 0x20

    invoke-virtual {v4, v1, v2, v6, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3878
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3880
    const/4 v3, 0x0

    .line 3883
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 3884
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto :goto_0

    .line 3887
    .end local v2    # "resetToken":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_4
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "enrollInternal :: Master key is not found in the map"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    :cond_5
    const/16 v3, -0x63

    goto :goto_0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1529
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1531
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine map doesn\'t have engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1500
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1501
    .local v5, "userId":I
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v1, v6

    .line 1525
    .end local v5    # "userId":I
    :cond_1
    :goto_0
    return-object v1

    .line 1504
    .restart local v5    # "userId":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1505
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v6

    .line 1506
    goto :goto_0

    .line 1508
    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    .line 1510
    .local v2, "isMP":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1511
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getManagedProfileAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 1517
    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_4
    :goto_2
    if-eqz p1, :cond_7

    .line 1518
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_3
    if-ge v0, v3, :cond_7

    .line 1519
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1521
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1518
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1508
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v3    # "nsize":I
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1513
    .restart local v2    # "isMP":Z
    :cond_6
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_7
    move-object v1, v6

    .line 1525
    goto :goto_0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1486
    const/4 v1, 0x0

    .line 1487
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1488
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1489
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 1491
    :cond_0
    return-object v1
.end method

.method private getPadded([BI)[B
    .locals 3
    .param p1, "pw"    # [B
    .param p2, "totalLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 306
    new-array v0, p2, [B

    .line 307
    .local v0, "padded":[B
    invoke-static {v0, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 309
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 311
    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1475
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1477
    .local v2, "pi":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    return-object v2

    .line 1475
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1284
    :goto_0
    return-object v1

    .line 1272
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1273
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 1275
    .local v0, "entry":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1276
    const/4 v1, 0x0

    .line 1277
    .local v1, "resetToken":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1278
    new-instance v1, Ljava/lang/String;

    .end local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1279
    .restart local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    goto :goto_0

    .line 1281
    :cond_2
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1467
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1469
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    return-object v2

    .line 1467
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handlePkgRemoved(ILjava/lang/String;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3101
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z
    invoke-static {v6, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    .line 3104
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3105
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3107
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 3108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3109
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3111
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v6, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 3113
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3114
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FOUND PACKAGE handlePkgRemoved :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3117
    .local v1, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v8, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v5

    .line 3118
    .local v5, "ret":I
    if-nez v5, :cond_1

    .line 3119
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3120
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3121
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3122
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3124
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3125
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3126
    :try_start_2
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v5

    .line 3133
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved engine removed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :goto_1
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removing dir :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3147
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3148
    return-void

    .line 3125
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 3147
    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 3135
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :cond_1
    :try_start_5
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removeEngine :: failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3143
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ret":I
    :cond_2
    const-string v8, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find engine info ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3108
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private handleUserAdded(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2986
    if-nez p1, :cond_1

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2990
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2991
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2993
    if-nez v0, :cond_0

    .line 2999
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 3000
    .local v11, "ui":Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3001
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for bmode user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2991
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v11    # "ui":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3004
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v11    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3005
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for knox user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3008
    :cond_3
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3009
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is identified as managed profile..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    if-nez v2, :cond_4

    move v8, v7

    .line 3012
    .local v8, "res":Z
    :goto_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Base directory has been set up... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Managed profile is not appicable to engine creation... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3010
    .end local v8    # "res":Z
    :cond_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v8

    goto :goto_1

    .line 3017
    :cond_5
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUserAdded for SDP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 3019
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3023
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/4 v6, 0x5

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 3032
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v10

    .line 3033
    .local v10, "rstToken":Ljava/lang/String;
    invoke-direct {p0, v0, v12, v10}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 3034
    .local v7, "cmk":[B
    if-nez v7, :cond_6

    .line 3035
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create keys for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3040
    :cond_6
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3042
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v9

    .line 3044
    .local v9, "ret":I
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3046
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3048
    if-eqz v9, :cond_7

    .line 3049
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3050
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3044
    .end local v9    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3054
    .restart local v9    # "ret":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    goto/16 :goto_0
.end method

.method private handleUserRemoved(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3059
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3060
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :goto_0
    return-void

    .line 3064
    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3065
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3066
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3068
    if-nez v0, :cond_1

    .line 3069
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3066
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3073
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 3076
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 3077
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3078
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3079
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3080
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3082
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3083
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3084
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 3091
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3083
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3093
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isLicensed()Z
    .locals 4

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .locals 6

    .prologue
    .line 3673
    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3675
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .line 3677
    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .line 3678
    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_0

    .line 3680
    const/4 v1, 0x1

    .line 3682
    :cond_0
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    return v1
.end method

.method private isSdpUserZeroSupported()Z
    .locals 1

    .prologue
    .line 1654
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1139
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1140
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :goto_0
    return v3

    .line 1144
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v2

    .line 1145
    .local v2, "userId":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    if-nez p2, :cond_1

    move v0, v4

    .line 1148
    .local v0, "noCredential":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1152
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1153
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1154
    goto :goto_0

    .end local v0    # "noCredential":Z
    :cond_1
    move v0, v3

    .line 1147
    goto :goto_1

    .line 1159
    .restart local v0    # "noCredential":Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1161
    .local v1, "quality":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    if-nez v1, :cond_3

    .line 1163
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1164
    goto/16 :goto_0

    .line 1169
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1170
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1171
    goto/16 :goto_0

    .line 1174
    .end local v1    # "quality":I
    :cond_4
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isSupportedDevice()Z
    .locals 1

    .prologue
    .line 1708
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 1710
    const/4 v0, 0x1

    .line 1712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xe

    const/4 v8, 0x1

    .line 1080
    if-nez p1, :cond_0

    const/4 v6, -0x7

    .line 1135
    :goto_0
    return v6

    .line 1082
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1083
    .local v0, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v5

    .line 1084
    .local v5, "userId":I
    const-string v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lockInternal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-direct {p0, v0, v5}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v3

    .line 1092
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 1093
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v6, -0xc

    goto :goto_0

    .line 1097
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1098
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearResetPasswordKey(I)V

    .line 1100
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1101
    const/4 v10, 0x1

    :try_start_0
    invoke-direct {p0, p1, v10}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1102
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, "quality":I
    const-string/jumbo v9, "lock_settings"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/LockSettingsService;

    .line 1109
    .local v4, "service":Lcom/android/server/LockSettingsService;
    if-eqz v4, :cond_2

    .line 1111
    :try_start_1
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v9, v10, v11, v0}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    long-to-int v1, v10

    .line 1117
    :cond_2
    :goto_1
    const v9, 0x61000

    if-eq v1, v9, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v2, v8

    .line 1120
    .local v2, "qualityNoPassword":Z
    :goto_2
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1122
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1123
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1102
    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_4
    move v2, v7

    .line 1117
    goto :goto_2

    .line 1127
    .restart local v2    # "qualityNoPassword":Z
    :cond_5
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1128
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove KEK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_6
    move v6, v7

    .line 1135
    goto/16 :goto_0

    .line 1113
    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private lockNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2450
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/16 v0, -0xc

    .line 2455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private onCipherModeMigration(I)V
    .locals 4
    .param p1, "engineId"    # I

    .prologue
    .line 2315
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCipherModeMigration :: Inisde... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_1

    .line 2318
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v0

    .line 2320
    .local v0, "cipherLength":I
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCipherModeMigration :: Detected cipher length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    if-gtz v0, :cond_0

    .line 2323
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    .end local v0    # "cipherLength":I
    :goto_0
    return-void

    .line 2325
    .restart local v0    # "cipherLength":I
    :cond_0
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    .line 2326
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    .line 2327
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SdpManagerService;->setSDPMigrating(IZ)V

    goto :goto_0

    .line 2331
    .end local v0    # "cipherLength":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    goto :goto_0
.end method

.method private onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2635
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2636
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2639
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2653
    :goto_0
    return-void

    .line 2641
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2642
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2644
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2641
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2645
    :catch_0
    move-exception v4

    .line 2646
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2652
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2648
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2649
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2652
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I
    .locals 13
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "cmk"    # [B

    .prologue
    const/4 v12, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 2161
    if-nez p1, :cond_0

    const/16 v10, -0xb

    .line 2283
    :goto_0
    return v10

    .line 2163
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v7

    .line 2166
    .local v7, "currentVersion":I
    if-ne v7, v12, :cond_1

    .line 2167
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: already up to date. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2168
    goto :goto_0

    .line 2171
    :cond_1
    if-nez v7, :cond_2

    .line 2172
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: SDP previously disabled. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2173
    goto :goto_0

    .line 2181
    :cond_2
    if-ne v7, v3, :cond_3

    .line 2182
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v8

    .line 2185
    .local v8, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "/data/user/$/com.android.email/databases/EmailProviderBody.db"

    aput-object v0, v6, v11

    const-string v0, "Body"

    aput-object v0, v6, v3

    const-string/jumbo v0, "htmlContent,textContent"

    aput-object v0, v6, v4

    .line 2191
    .local v6, "args":[Ljava/lang/String;
    aget-object v0, v6, v11

    const-string v1, "$"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 2192
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    const-string/jumbo v1, "sdp_db"

    const-string/jumbo v2, "set_sensitive_from_db1"

    invoke-virtual {v8, v0, v1, v2, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2199
    .local v10, "ret":I
    if-nez v10, :cond_4

    .line 2200
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2202
    add-int/lit8 v7, v7, 0x1

    .line 2203
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2205
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_3
    :goto_1
    if-ne v7, v4, :cond_6

    .line 2223
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    if-nez p2, :cond_5

    .line 2225
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: failed, CMK required!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const/16 v10, -0xd

    goto/16 :goto_0

    .line 2205
    .restart local v6    # "args":[Ljava/lang/String;
    .restart local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v10    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2207
    :cond_4
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Failed in 1st stage... Skip remaining steps other than termination"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Must make it complete all steps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    add-int/lit8 v7, v7, 0x3

    .line 2212
    :try_start_2
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2213
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2214
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2229
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_5
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v9

    .line 2230
    .local v9, "paddedCmk":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1, v7, v12, v9}, Lcom/android/server/SdpManagerService;->nativeOnMigration(IIII[B)I

    move-result v10

    .line 2232
    .restart local v10    # "ret":I
    invoke-direct {p0, v9}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2234
    if-nez v10, :cond_a

    .line 2235
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2237
    add-int/lit8 v7, v7, 0x1

    .line 2238
    :try_start_3
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2239
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2240
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2250
    .end local v9    # "paddedCmk":[B
    .end local v10    # "ret":I
    :cond_6
    if-ne v7, v5, :cond_8

    .line 2251
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/16 v10, -0x63

    .line 2254
    .restart local v10    # "ret":I
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2256
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v10

    .line 2258
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2260
    if-eqz v10, :cond_7

    const/4 v0, -0x6

    if-ne v10, v0, :cond_b

    .line 2261
    :cond_7
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngine ret :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2263
    add-int/lit8 v7, v7, 0x1

    .line 2264
    :try_start_5
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2265
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2266
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2273
    .end local v10    # "ret":I
    :cond_8
    const/4 v0, 0x4

    if-ne v7, v0, :cond_9

    .line 2274
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 4 -> 5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onCipherModeMigration(I)V

    .line 2276
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2277
    add-int/lit8 v7, v7, 0x1

    .line 2278
    :try_start_6
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2279
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2280
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2282
    :cond_9
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2283
    goto/16 :goto_0

    .line 2240
    .restart local v9    # "paddedCmk":[B
    .restart local v10    # "ret":I
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 2242
    :cond_a
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 2258
    .end local v9    # "paddedCmk":[B
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 2266
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 2268
    :cond_b
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2280
    .end local v10    # "ret":I
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method

.method private onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 2614
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2615
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2618
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2632
    :goto_0
    return-void

    .line 2620
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2621
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5, p2}, Lcom/sec/sdp/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2620
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2624
    :catch_0
    move-exception v4

    .line 2625
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2631
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2627
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2628
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2631
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2563
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2587
    :goto_0
    return v3

    .line 2565
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2570
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_1

    .line 2571
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2572
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2576
    :try_start_0
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2579
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    .line 2580
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2581
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2582
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catch_0
    move-exception v2

    .line 2583
    .local v2, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3662
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3663
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3664
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3665
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3666
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3669
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3670
    return-void
.end method

.method private removeEngineNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2519
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    const/16 v0, -0xc

    .line 2524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1401
    if-nez p1, :cond_1

    const/4 v3, -0x7

    .line 1436
    :cond_0
    :goto_0
    return v3

    .line 1404
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 1405
    .local v1, "engineId":I
    const/4 v2, 0x0

    .line 1409
    .local v2, "rstTokenFromTima":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object p2

    .line 1411
    const/4 v2, 0x1

    .line 1414
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1415
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x2

    goto :goto_0

    .line 1417
    :cond_3
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v5, 0x2

    const/16 v6, 0x20

    invoke-virtual {v4, v1, p2, v5, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "encodedCmk":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1424
    :cond_4
    if-eqz v0, :cond_0

    .line 1428
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1431
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "resetPasswordInternal :: failed to storeCMK"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/16 v3, -0xe

    goto :goto_0

    .line 1435
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1436
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .prologue
    .line 3715
    const/4 v0, 0x0

    .line 3716
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3717
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    .line 3719
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3720
    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .prologue
    .line 2664
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2668
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2669
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2670
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2671
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2672
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2673
    return-void
.end method

.method private setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 1028
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1060
    :goto_0
    return v7

    .line 1030
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 1031
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V

    .line 1037
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v6

    .line 1038
    .local v6, "userId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1039
    .local v0, "engineId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1041
    .local v4, "token":J
    invoke-direct {p0, v6, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    .line 1046
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1047
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1048
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1049
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1050
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1054
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    goto :goto_1

    .line 1059
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1293
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1391
    :goto_0
    return v7

    .line 1300
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    .line 1301
    .local v3, "isDefaultEngine":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1302
    .local v2, "engineId":I
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isPwdChangeRequested()Z

    move-result v4

    .line 1303
    .local v4, "isPwdChangeRequested":Z
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal:: isPwdChangeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1305
    const/4 v7, -0x5

    goto :goto_0

    .line 1307
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1308
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1309
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1317
    const/4 v7, 0x0

    goto :goto_0

    .line 1320
    :cond_3
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal:: removing ECMK_PWD"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1322
    const-string v7, "SdpManagerService"

    const-string v8, "Couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/16 v7, -0xe

    goto :goto_0

    .line 1328
    :cond_4
    const/4 v7, -0x2

    goto :goto_0

    .line 1333
    :cond_5
    const/4 v1, 0x0

    .line 1334
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1335
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encodedCmk":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1359
    .restart local v1    # "encodedCmk":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1362
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal :: failed to storeCMK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/16 v7, -0xe

    goto/16 :goto_0

    .line 1340
    :cond_7
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1342
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1343
    .local v5, "resetToken":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 1344
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1346
    :cond_8
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1350
    if-nez v1, :cond_6

    .line 1351
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1355
    .end local v5    # "resetToken":Ljava/lang/String;
    :cond_9
    const/16 v7, -0x63

    goto/16 :goto_0

    .line 1368
    :cond_a
    if-eqz v4, :cond_c

    .line 1370
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1372
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v6

    .line 1373
    .local v6, "ret":I
    if-eqz v6, :cond_b

    .line 1374
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1377
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1378
    const/16 v7, -0xc

    goto/16 :goto_0

    .line 1381
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1383
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1384
    const/4 v7, 0x2

    :try_start_0
    invoke-direct {p0, p1, v7}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1385
    monitor-exit v8

    .line 1391
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1385
    .restart local v0    # "cmk":[B
    .restart local v6    # "ret":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1388
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :cond_c
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v6, -0x1

    const/16 v10, 0x20

    const/4 v5, -0x2

    .line 1188
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1189
    .local v2, "engineId":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlock :: Internal... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v1, 0x0

    .line 1192
    .local v1, "encodedCmk":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1194
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return v5

    .line 1197
    :cond_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_0

    .line 1202
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1251
    :goto_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1253
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v4

    .line 1254
    .local v4, "ret":I
    if-eqz v4, :cond_6

    .line 1255
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1258
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1259
    const/16 v5, -0xc

    goto :goto_0

    .line 1220
    .end local v0    # "cmk":[B
    .end local v4    # "ret":I
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1221
    const-string v5, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked from TIMA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, "resetToken":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1225
    const-string v5, "SdpManagerService"

    const-string/jumbo v7, "unlock :: Invalid reset token"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1226
    goto/16 :goto_0

    .line 1229
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, v3, v11, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1231
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1233
    if-nez v1, :cond_5

    move v5, v6

    .line 1234
    goto/16 :goto_0

    .line 1237
    .end local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked found ECMK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1241
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1244
    if-eqz v1, :cond_0

    .line 1247
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1262
    .restart local v0    # "cmk":[B
    .restart local v4    # "ret":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1264
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1265
    const/4 v5, 0x2

    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1266
    monitor-exit v6

    .line 1267
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1266
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private unlockNative(I[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # [B

    .prologue
    .line 2468
    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 2469
    :cond_0
    const/16 v0, -0xb

    .line 2476
    :goto_0
    return v0

    .line 2471
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2472
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/16 v0, -0xc

    goto :goto_0

    .line 2476
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 3799
    if-nez p1, :cond_1

    const/4 v4, -0x7

    .line 3826
    :cond_0
    :goto_0
    return v4

    .line 3800
    :cond_1
    if-eqz p2, :cond_0

    .line 3802
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 3803
    .local v2, "engineId":I
    const/4 v1, 0x0

    .line 3805
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v6, 0x20

    invoke-virtual {v5, v2, p2, v7, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3807
    if-eqz v1, :cond_0

    .line 3810
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 3812
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 3814
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v3

    .line 3815
    .local v3, "ret":I
    if-eqz v3, :cond_2

    .line 3816
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3819
    const/16 v4, -0xc

    goto :goto_0

    .line 3822
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3823
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3824
    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 3825
    monitor-exit v5

    .line 3826
    const/4 v4, 0x0

    goto :goto_0

    .line 3825
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2591
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2610
    :goto_0
    return v3

    .line 2593
    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2594
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2597
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v2, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 2608
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2599
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2600
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2601
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2602
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    .line 2606
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2607
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 325
    const/4 p1, 0x0

    .line 327
    :cond_0
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 315
    if-nez p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 318
    const/4 p1, 0x0

    .line 319
    goto :goto_0
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "rstToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 387
    .local v6, "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 388
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v23, -0x3

    .line 511
    :goto_0
    return v23

    .line 392
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 393
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 394
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 395
    .local v18, "myPid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    .line 396
    .local v19, "myUid":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-nez p1, :cond_1

    .line 402
    const-string v7, "SdpManagerService"

    const-string v8, "addEngine :: invalid arg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 406
    :cond_1
    const-string v7, "SdpManagerService"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 414
    :cond_2
    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "alias":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 419
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 416
    .end local v4    # "alias":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "alias":Ljava/lang/String;
    goto :goto_1

    .line 421
    :cond_4
    const-string v20, ""

    .line 423
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v5

    .line 424
    .local v5, "newId":I
    sget-object v7, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 425
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 426
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v21, v13, v16

    .line 427
    .local v21, "pkgName":Ljava/lang/String;
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: calling getPackagesForUid  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v20, v21

    .line 426
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 432
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding engine :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 435
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 436
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: failed.. engine["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v23, -0x6

    monitor-exit v24

    goto/16 :goto_0

    .line 512
    :catchall_0
    move-exception v7

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 444
    :cond_6
    :try_start_1
    new-instance v3, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getFlags()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 453
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 460
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 461
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 469
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v7

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 471
    const-string v7, "SdpManagerService"

    const-string v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 477
    :cond_8
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_c

    .line 478
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 479
    :cond_9
    const/16 v23, -0x2

    monitor-exit v24

    goto/16 :goto_0

    .line 480
    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_c

    .line 481
    :cond_b
    const/16 v23, -0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 484
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    .line 485
    .local v12, "cmk":[B
    if-nez v12, :cond_d

    .line 486
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to create keys for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/16 v23, -0xc

    monitor-exit v24

    goto/16 :goto_0

    .line 490
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v7, p0

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v23

    .line 494
    .local v23, "ret":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 495
    if-eqz v23, :cond_e

    .line 496
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 511
    :cond_e
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public addEngineNative(II[B)Z
    .locals 4
    .param p1, "engineId"    # I
    .param p2, "userId"    # I
    .param p3, "cmk"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2296
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :goto_0
    return v0

    .line 2301
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 2302
    :cond_1
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: invalid cmk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2306
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2307
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: native failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2311
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1578
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1579
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1580
    if-nez v4, :cond_0

    .line 1581
    const/4 v6, -0x7

    .line 1587
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1579
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1583
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public boot(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, -0x3

    .line 603
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    goto :goto_0
.end method

.method public changeCMKNative(I[B[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v0, -0xb

    .line 2490
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2491
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const/4 v0, -0x3

    .line 2507
    :cond_0
    :goto_0
    return v0

    .line 2494
    :cond_1
    const-string v1, "changeCMKNative"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2496
    if-eqz p2, :cond_0

    .line 2499
    if-eqz p3, :cond_0

    array-length v1, p3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 2502
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2503
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const/16 v0, -0xc

    goto :goto_0

    .line 2507
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 2939
    const-string v1, "SdpManagerService"

    const-string v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2962
    :cond_0
    :goto_0
    return v5

    .line 2942
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2943
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2944
    goto :goto_0

    .line 2946
    :cond_2
    new-array v4, v5, [Ljava/lang/String;

    .line 2947
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "cache"

    aput-object v1, v4, v8

    .line 2949
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2951
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2952
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2954
    .local v7, "retExtPart":Z
    if-nez v6, :cond_3

    .line 2955
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2956
    goto :goto_0

    .line 2957
    :cond_3
    if-nez v7, :cond_0

    .line 2958
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2959
    goto :goto_0
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2907
    const-string v1, "SdpManagerService"

    const-string v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :goto_0
    return v5

    .line 2910
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2911
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2914
    :cond_1
    new-array v4, v8, [Ljava/lang/String;

    .line 2915
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "/"

    aput-object v1, v4, v5

    .line 2917
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2919
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2923
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2925
    .local v7, "retExtPart":Z
    if-nez v6, :cond_2

    .line 2926
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2928
    :cond_2
    if-nez v7, :cond_3

    .line 2929
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v8

    .line 2933
    goto :goto_0
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2967
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2968
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v1, -0x3

    .line 2976
    :goto_0
    return v1

    .line 2971
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v0

    .line 2973
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 2974
    const/4 v1, 0x0

    goto :goto_0

    .line 2976
    :cond_1
    const/16 v1, -0xc

    goto :goto_0
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 4
    .param p1, "nameTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3725
    const-string/jumbo v3, "deleteToeknFromTrusted"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3726
    const/16 v1, -0x63

    .line 3727
    .local v1, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3728
    const/16 v3, -0xb

    .line 3735
    :goto_0
    return v3

    .line 3730
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3731
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3734
    const/4 v1, 0x0

    :cond_1
    move v3, v1

    .line 3735
    goto :goto_0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1596
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1597
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1598
    if-nez v4, :cond_0

    .line 1599
    const/4 v6, -0x7

    .line 1605
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1597
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1601
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3921
    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    :goto_0
    return-void

    .line 3927
    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3928
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3929
    :try_start_0
    const-string v3, "SDP Engine List :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 3932
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 3933
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v1, :cond_1

    .line 3931
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3936
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2

    .line 3938
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3940
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tMDFPP : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tAlias : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3943
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 3945
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "nsize":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i":I
    .restart local v2    # "nsize":I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3949
    .end local v0    # "i":I
    .end local v2    # "nsize":I
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0

    .line 3947
    :cond_4
    const-string v3, "Not Supported..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3834
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3835
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    const/4 v1, -0x3

    .line 3853
    :goto_0
    return v1

    .line 3839
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3840
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3841
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 3842
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 3845
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3850
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3851
    const/4 v1, -0x8

    goto :goto_0

    .line 3853
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)I
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1553
    const/4 v1, -0x7

    .line 1555
    .local v1, "ret":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1556
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1557
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3

    .line 1558
    if-eqz v0, :cond_0

    .line 1559
    const/4 v1, -0x6

    .line 1560
    :cond_0
    return v1

    .line 1557
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2875
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2876
    const-string v5, "SdpManagerService"

    const-string v6, "SDP not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :goto_0
    return-object v2

    .line 2879
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 2880
    .local v0, "dataCacheArray":[Ljava/lang/String;
    const-string v5, "/"

    aput-object v5, v0, v11

    .line 2881
    const-string v5, "cache"

    aput-object v5, v0, v10

    .line 2883
    sget-object v5, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .line 2885
    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v3

    .line 2886
    .local v3, "retDataPartInfo":[J
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v4

    .line 2888
    .local v4, "retExtPartInfo":[J
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v3

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_2

    .line 2890
    :cond_1
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to get size info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2894
    :cond_2
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 2896
    .local v2, "pStats":Landroid/content/pm/PackageStats;
    aget-wide v6, v3, v11

    aget-wide v8, v3, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 2897
    aget-wide v6, v3, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 2898
    aget-wide v6, v4, v11

    aget-wide v8, v4, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 2899
    aget-wide v6, v4, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_0
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .line 595
    :goto_0
    return-object v0

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 592
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 593
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    goto :goto_0

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedSDKVersion()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    const-wide/16 v0, 0x0

    .line 1566
    .local v0, "ret":D
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1567
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 1569
    :cond_0
    return-wide v0
.end method

.method public isLicensed(Ljava/lang/String;)I
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1542
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v0

    .line 1543
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 1544
    const/4 v1, 0x0

    .line 1546
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x63

    goto :goto_0
.end method

.method public isLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1444
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1445
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v1, -0x3

    .line 1462
    :cond_0
    :goto_0
    return v1

    .line 1452
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1453
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1454
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    .line 1456
    if-nez v0, :cond_2

    .line 1457
    const/4 v1, -0x7

    goto :goto_0

    .line 1454
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1459
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1460
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSdpMigrating(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return v1

    .line 366
    :cond_0
    const-string/jumbo v2, "isSdpMigrating"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 370
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 373
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 372
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSdpSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v0

    return v0
.end method

.method public lock(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 609
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v1, -0x3

    .line 646
    :cond_0
    :goto_0
    return v1

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 616
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 617
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 618
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 621
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 628
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    goto :goto_0

    .line 638
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 641
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, -0x3

    .line 830
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onBoot(I)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/sdp/exception/SdpVersionException;
        }
    .end annotation

    .prologue
    .line 2678
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2679
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    const/4 v1, -0x3

    .line 2694
    :goto_0
    return v1

    .line 2682
    :cond_0
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBoot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const-string/jumbo v1, "onBoot"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2685
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    .line 2686
    .local v0, "ret":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 2688
    new-instance v1, Lcom/android/sdp/exception/SdpVersionException;

    invoke-direct {v1}, Lcom/android/sdp/exception/SdpVersionException;-><init>()V

    throw v1

    .line 2691
    :cond_1
    if-nez v0, :cond_2

    .line 2692
    const/4 v1, 0x0

    goto :goto_0

    .line 2694
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onChangePassword(I[B[B)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 2752
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2753
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :goto_0
    return v2

    .line 2756
    :cond_0
    const-string/jumbo v3, "onChangePassword"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2758
    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2759
    .local v1, "paddedOldCmk":[B
    invoke-direct {p0, p3, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v0

    .line 2761
    .local v0, "paddedNewCmk":[B
    invoke-static {p1, v1, v0}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2762
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2765
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2766
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2768
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2699
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2700
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :goto_0
    return v2

    .line 2703
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    const-string/jumbo v4, "onDeviceLocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2706
    invoke-direct {p0, p1, p1}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v1

    .line 2707
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 2708
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockInternal failed ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2712
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2713
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2714
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2716
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2715
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2716
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2718
    goto :goto_0
.end method

.method public onDeviceUnlocked(I[B)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2723
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2724
    const-string v4, "SdpManagerService"

    const-string v5, "SDP not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :goto_0
    return v3

    .line 2727
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceUnLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    const-string/jumbo v4, "onDeviceUnlocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2730
    const/16 v4, 0x20

    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2732
    .local v1, "paddedCmk":[B
    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v2

    .line 2733
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2734
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative failed ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2738
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2740
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2741
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2742
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2744
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2743
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2744
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2746
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onMigration(IZ[B)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isMinor"    # Z
    .param p3, "cmk"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2850
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2851
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :goto_0
    return v1

    .line 2856
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2857
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2858
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    if-nez v0, :cond_1

    .line 2860
    const-string v2, "SdpManagerService"

    const-string v3, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2858
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2864
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2865
    const-string v1, "SdpManagerService"

    const-string v2, "Migration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v1, 0x1

    goto :goto_0

    .line 2869
    :cond_2
    const-string v2, "SdpManagerService"

    const-string v3, "Migration OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUserAdded(I[BI)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B
    .param p3, "flags"    # I

    .prologue
    .line 2773
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2774
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const/4 v2, 0x0

    .line 2808
    :goto_0
    return v2

    .line 2777
    :cond_0
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    const-string/jumbo v2, "onUserAdded"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2780
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2781
    .local v1, "alias":Ljava/lang/String;
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2797
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/16 v2, 0x20

    invoke-direct {p0, p2, v2}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v7

    .line 2800
    .local v7, "paddedCmk":[B
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2804
    .local v8, "ret":I
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2805
    if-eqz v8, :cond_1

    .line 2806
    const/4 v2, 0x0

    goto :goto_0

    .line 2808
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2814
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2815
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :goto_0
    return v2

    .line 2818
    :cond_0
    const-string/jumbo v3, "onUserRemoved"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2819
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserRemoved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2823
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2824
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2825
    if-nez v0, :cond_1

    .line 2826
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onUserRemoved :: no engine found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2824
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2830
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 2831
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 2832
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2833
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2834
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2835
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2837
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2838
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2840
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    .line 2841
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2838
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2843
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, -0x3

    .line 798
    :goto_0
    return v1

    .line 786
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 793
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 794
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 795
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 796
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x8

    .line 517
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v1, -0x3

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 524
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 525
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-nez v0, :cond_2

    .line 527
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v1, -0x7

    goto :goto_0

    .line 525
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 531
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 553
    .local v1, "ret":I
    if-nez v1, :cond_5

    .line 554
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 555
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 556
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 557
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 559
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 560
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 561
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 572
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    goto :goto_0

    .line 545
    .end local v1    # "ret":I
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 547
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    .restart local v1    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 574
    :cond_5
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 988
    if-eqz p1, :cond_3

    .line 989
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 992
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 993
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    .line 995
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    .line 996
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: Key pair of #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v2    # "type":I
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1000
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1005
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1004
    :cond_3
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "removeKeys :: Failed. info null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "rstToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 738
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 739
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v1, -0x3

    .line 775
    :cond_0
    :goto_0
    return v1

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 745
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 746
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 747
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 750
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 757
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 767
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 770
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3697
    const-string/jumbo v4, "saveTokenIntoTrusted"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3699
    const/16 v2, -0x63

    .line 3700
    .local v2, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3701
    :cond_0
    const/16 v4, -0xb

    .line 3711
    :goto_0
    return v4

    .line 3703
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3704
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3705
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3707
    .local v1, "entry":[B
    invoke-direct {p0, v3, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    .line 3709
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/SdpManagerService;->saveTokenInternal(ILjava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3710
    const/4 v2, 0x0

    :cond_2
    move v4, v2

    .line 3711
    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 695
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v1, -0x3

    .line 732
    :cond_0
    :goto_0
    return v1

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 702
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 703
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 704
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 707
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 714
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 724
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 727
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSDPMigrating(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "isSdpMigrating"    # Z

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string/jumbo v1, "setSDPMigrating"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 347
    iput-boolean p2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 349
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 351
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 355
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 353
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 355
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSDPMigrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v1, "SdpManagerService"

    const-string v2, "SdpManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 297
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 298
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 652
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 653
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, -0x3

    .line 689
    :cond_0
    :goto_0
    return v1

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 659
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 660
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 661
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 664
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 671
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 681
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 684
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x8

    .line 3752
    const-string/jumbo v8, "unlockViaTrusted"

    invoke-static {v8}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3754
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3755
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    const/4 v7, -0x3

    .line 3795
    :cond_0
    :goto_0
    return v7

    .line 3760
    :cond_1
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3761
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 3762
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v2, :cond_2

    .line 3763
    const-string v7, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Couldn\'t find engine info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const/4 v7, -0x7

    monitor-exit v8

    goto :goto_0

    .line 3766
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3774
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3777
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3780
    const-string v8, "SdpManagerService"

    const-string v9, "Permission denied to invoke engine control API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3785
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3786
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3787
    .local v0, "alias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3789
    .local v3, "resetToken":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3790
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3791
    .local v1, "entry":[B
    if-eqz v1, :cond_4

    .line 3792
    new-instance v3, Ljava/lang/String;

    .end local v3    # "resetToken":Ljava/lang/String;
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 3794
    .restart local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3795
    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v7

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v1, -0x3

    .line 821
    :goto_0
    return v1

    .line 809
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 816
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 817
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 818
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 819
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3897
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3898
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    const/4 v1, -0x3

    .line 3916
    :goto_0
    return v1

    .line 3902
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3903
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3904
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 3905
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 3908
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3913
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3914
    const/4 v1, -0x8

    goto :goto_0

    .line 3916
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
