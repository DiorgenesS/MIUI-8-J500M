.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 113
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 119
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    .line 122
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 125
    iput-boolean v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 126
    iput v2, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 623
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 790
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 823
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 841
    new-instance v0, Lcom/android/server/trust/TrustManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$4;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 130
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 132
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 133
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 564
    :goto_1
    return-void

    .line 557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_1
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v2

    .line 534
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 536
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_2

    .line 537
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    const/4 v2, 0x1

    goto :goto_0

    .line 534
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private aggregateIsTrusted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v2

    .line 519
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 521
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_2

    .line 522
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    const/4 v2, 0x1

    goto :goto_0

    .line 519
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .prologue
    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 353
    .local v0, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_0

    .line 354
    if-eqz p2, :cond_1

    .line 355
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    goto :goto_1

    .line 361
    .end local v0    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 576
    if-nez p1, :cond_0

    const/4 p3, 0x0

    .line 577
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    add-int/lit8 v1, v1, -0x1

    .line 586
    goto :goto_1

    .line 584
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 588
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .locals 4
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 591
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 597
    add-int/lit8 v1, v1, -0x1

    .line 600
    goto :goto_1

    .line 598
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .locals 3
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 548
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_0

    .line 549
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 546
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 461
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 13
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 410
    if-eqz p2, :cond_0

    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_0

    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v9

    .line 412
    :cond_1
    const/4 v2, 0x0

    .line 413
    .local v2, "cn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 414
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 416
    .local v1, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v11, "android.service.trust.trustagent"

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 418
    if-nez v5, :cond_2

    .line 419
    const-string v10, "TrustManagerService"

    const-string v11, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 422
    :cond_2
    :try_start_1
    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 423
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 426
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_4

    if-ne v8, v12, :cond_3

    .line 429
    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "trust-agent"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 431
    const-string v10, "TrustManagerService"

    const-string v11, "Meta-data does not start with trust-agent tag"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 434
    :cond_5
    :try_start_2
    sget-object v10, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 436
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 447
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v8    # "type":I
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 448
    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 438
    :catch_0
    move-exception v3

    .line 439
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v3

    .line 445
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 440
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 441
    .local v3, "e":Ljava/io/IOException;
    move-object v1, v3

    .line 445
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 442
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 443
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v1, v3

    .line 445
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v9

    .line 451
    :cond_8
    if-eqz v2, :cond_0

    .line 454
    const/16 v9, 0x2f

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_9

    .line 455
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_9
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 11
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .prologue
    .line 466
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "trust_agents_initialized"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_0

    .line 491
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 471
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v4, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v7

    .line 472
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 473
    .local v2, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 474
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 475
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 476
    .local v0, "applicationInfoFlags":I
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_1

    .line 477
    const-string v8, "TrustManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Leaving agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " disabled because package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "is not a system package."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 481
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    .end local v0    # "applicationInfoFlags":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v5

    .line 485
    .local v5, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_3

    .line 486
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 488
    :cond_3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 489
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "trust_agents_initialized"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 303
    const/4 v10, -0x1

    if-eq p1, v10, :cond_0

    if-gez p1, :cond_0

    .line 304
    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): Invalid user handle,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be USER_ALL or a specific user."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Throwable;

    const-string/jumbo v13, "here"

    invoke-direct {v12, v13}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    const/4 p1, -0x1

    .line 310
    :cond_0
    const/4 v10, -0x1

    if-ne p1, v10, :cond_2

    .line 311
    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 317
    .local v8, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    .line 319
    .local v9, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 320
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 322
    .local v4, "info":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    iget-boolean v10, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v10, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-nez v10, :cond_3

    .line 319
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    .end local v2    # "i":I
    .end local v4    # "info":Landroid/content/pm/UserInfo;
    .end local v8    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "wm":Landroid/view/IWindowManager;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .restart local v8    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .restart local v2    # "i":I
    .restart local v4    # "info":Landroid/content/pm/UserInfo;
    .restart local v9    # "wm":Landroid/view/IWindowManager;
    :cond_3
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 328
    .local v3, "id":I
    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    .line 329
    .local v5, "secure":Z
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v7

    .line 330
    .local v7, "trusted":Z
    const/4 v6, 0x1

    .line 331
    .local v6, "showingKeyguard":Z
    iget v10, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v10, v3, :cond_4

    .line 333
    :try_start_0
    invoke-interface {v9}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 337
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-nez v7, :cond_5

    const/4 v1, 0x1

    .line 340
    .local v1, "deviceLocked":Z
    :goto_4
    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    .line 341
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v10

    if-eq v10, v1, :cond_6

    const/4 v0, 0x1

    .line 342
    .local v0, "changed":Z
    :goto_5
    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 343
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0, v3, v1}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    goto :goto_2

    .line 337
    .end local v0    # "changed":Z
    .end local v1    # "deviceLocked":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 341
    .restart local v1    # "deviceLocked":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 343
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 334
    .end local v1    # "deviceLocked":Z
    :catch_0
    move-exception v10

    goto :goto_3

    .line 348
    .end local v3    # "id":I
    .end local v4    # "info":Landroid/content/pm/UserInfo;
    .end local v5    # "secure":Z
    .end local v6    # "showingKeyguard":Z
    .end local v7    # "trusted":Z
    :cond_7
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 375
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 376
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const/4 v2, 0x1

    .line 381
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 382
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 374
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 385
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    .line 386
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 388
    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 569
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    :cond_0
    return-void

    .line 567
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    sget-object v6, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 496
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 498
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    .line 499
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 500
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 501
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v6, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 503
    invoke-direct {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 504
    .local v2, "name":Landroid/content/ComponentName;
    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " because package does not have"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v0
.end method

.method private resolveProfileParent(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 780
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 781
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 782
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    .line 786
    .end local p1    # "userId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return p1

    .restart local p1    # "userId":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateTrustAll()V
    .locals 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 187
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_0

    .line 189
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method isDeviceLockedInner(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 149
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_0

    .line 151
    :cond_2
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    .line 152
    iput-boolean v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 153
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_0

    .line 154
    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 614
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 619
    return-void
.end method

.method refreshAgentList(I)V
    .locals 28
    .param p1, "userId"    # I

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    if-gez p1, :cond_2

    .line 211
    const-string v24, "TrustManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "refreshAgentList(userId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "): Invalid user handle,"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " must be USER_ALL or a specific user."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/Throwable;

    const-string/jumbo v27, "here"

    invoke-direct/range {v26 .. v27}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/16 p1, -0x1

    .line 215
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 218
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 224
    .local v23, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    .local v15, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 227
    .local v17, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 229
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 230
    .local v22, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->partial:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 233
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 236
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 238
    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .line 239
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v8

    .line 240
    .local v8, "disabledFeatures":I
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_8

    const/4 v7, 0x1

    .line 243
    .local v7, "disableTrustAgents":Z
    :goto_2
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v10

    .line 244
    .local v10, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v10, :cond_3

    .line 247
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v20

    .line 248
    .local v20, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 249
    .local v19, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v16

    .line 251
    .local v16, "name":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 252
    if-eqz v7, :cond_6

    .line 253
    const/16 v24, 0x0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v6

    .line 256
    .local v6, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 259
    .end local v6    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_6
    new-instance v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    .line 260
    .local v5, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 261
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 263
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 264
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Landroid/content/ComponentName;

    .line 266
    new-instance v24, Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 221
    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v16    # "name":Landroid/content/ComponentName;
    .end local v17    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .restart local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    .restart local v8    # "disabledFeatures":I
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v15    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v17    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 270
    .restart local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .restart local v7    # "disableTrustAgents":Z
    .restart local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "name":Landroid/content/ComponentName;
    .restart local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 275
    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "name":Landroid/content/ComponentName;
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_a
    const/16 v21, 0x0

    .line 276
    .local v21, "trustMayHaveChanged":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    .line 277
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 278
    .local v14, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    iget v0, v14, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    move/from16 v24, v0

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 279
    :cond_b
    iget-object v0, v14, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 280
    const/16 v21, 0x1

    .line 282
    :cond_c
    iget-object v0, v14, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 276
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 287
    .end local v14    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_e
    if-eqz v21, :cond_0

    .line 288
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto/16 :goto_0

    .line 291
    :cond_f
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto/16 :goto_0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 393
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 394
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_1

    .line 395
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    const/4 v2, 0x1

    .line 399
    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 400
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 392
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    .line 404
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 406
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 407
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 366
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    return-void
.end method

.method public updateTrust(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .line 195
    .local v1, "trusted":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v0, 0x1

    .line 197
    .local v0, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 198
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 203
    :cond_0
    return-void

    .line 196
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
