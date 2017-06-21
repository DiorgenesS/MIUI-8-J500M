.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;,
        Lcom/android/server/am/MARsPolicyManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_FORCEKILL_PACKAGE:I = 0x4

.field public static final ACTION_FORCESTOP_PACKAGE:I = 0x2

.field public static final ACTION_FORCESTOP_PACKAGE_LATER:I = 0x3

.field public static final ACTION_NONSTICKY_KILLPACKAGE:I = 0x1

.field static AppSleep_Enable:Z = false

.field static DEBUG_MARs:Z = false

.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final MARS_SCPM_OPTIMIZIED_TYPE_SKIP:I = 0x3

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST:I = 0x0

.field static final MARS_SCPM_RESTRICTED_TYPE_BLOCK:I = 0x1

.field static final MARS_SCPM_RESTRICTED_TYPE_SKIP:I = 0x2

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x4

.field public static final POLICY_NUM_GCMLOCKER:I = 0x2

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_SPCM:I = 0x1

.field public static final POLICY_NUM_UDS:I = 0x5

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field public static final POLICY_TARGET_CATEGORY_USINGGCM:I = 0x2

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static final REQUEST_CNT_TRACKING_START_TIME:J = 0x493e0L

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x13b8110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0x390880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_GCMLOCKER:I = 0x1008112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SBIKE:I = 0x1000112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SPCM:I = 0x0

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_UDS:I = 0x1000220

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BLOCK_AUTO_RUN:I = 0x10000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_EDGE_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_GEAR_INTENT:I = 0x10000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_KIES_INTENT:I = 0x200000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x20000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCKALL:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCKALL:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field public static final SERVICE_KILL_LIMIT_OF_ADJ:I = 0xe

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field static final TAG_FORCE_KILL:Ljava/lang/String; = "MARs-ForceKillPackage-"

.field static final TAG_NONSTICKY_KILL:Ljava/lang/String; = "MARs-NonSticky-Kill-"


# instance fields
.field public final MOVE_TO_INACTIVE_TIME_INTERNAL:J

.field public final SPCM_BASE_PACKAGE_SCORE:I

.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field lastScreenOffStartTime:J

.field private mActiveAdminsUpdated:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppSizeIncreased:J

.field private mAppUsedRecently:Z

.field private mBoundAppWidgetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field private mDataConnectionIsConnected:Z

.field private mDataTrafficAmount:J

.field private mDefaultIMEPackage:Ljava/lang/String;

.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstTimeExcutingPolicy:Z

.field private mFirstTimeUpdatePackages:Z

.field mInputMethodObserver:Landroid/database/ContentObserver;

.field private mLastUpdatePackagesScoreTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mMARsUpdatePackagesThread:Ljava/lang/Thread;

.field private mManagedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNotiUpdateWhileScreenOffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCountDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationUpdatedCount:J

.field private mOngoingNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmBlackListValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlockValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipOptimizationValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field private mVpnServicePackage:Ljava/lang/String;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public spcmPolicyTrigger:Z

.field private udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    .line 94
    const-string/jumbo v2, "sys.config.mars"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 98
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 109
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 110
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 376
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 379
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 384
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 387
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 390
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 393
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    .line 444
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 445
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 449
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    .line 450
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 451
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 452
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 453
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 454
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    .line 457
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicyTrigger:Z

    .line 459
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->MOVE_TO_INACTIVE_TIME_INTERNAL:J

    .line 460
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

    .line 461
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    .line 462
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 463
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->SPCM_BASE_PACKAGE_SCORE:I

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 478
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 479
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 480
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 481
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 482
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 483
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 484
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    .line 494
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    .line 495
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    .line 496
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    .line 497
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    .line 521
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 522
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 523
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 524
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 525
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 527
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    .line 592
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 593
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 594
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 595
    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 597
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/MARsPolicyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    return-object v0
.end method

.method private appLockerStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3501
    packed-switch p1, :pswitch_data_0

    .line 3513
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3503
    :pswitch_0
    const-string v0, "PACKAGE_AUTO_OPTIMIZING                (extras 0)"

    goto :goto_0

    .line 3505
    :pswitch_1
    const-string v0, "PACKAGE_ALWAYS_OPTIMIZING              (extras 9)"

    goto :goto_0

    .line 3507
    :pswitch_2
    const-string v0, "PACKAGE_TURNED_OFF                     (extras 9)"

    goto :goto_0

    .line 3509
    :pswitch_3
    const-string v0, "PACKAGE_AUTO_OPTIMIZING_NOTUSEDRECENTLY(extras 1)"

    goto :goto_0

    .line 3511
    :pswitch_4
    const-string v0, "PACKAGE_SETTO_AUTO_OPTIMIZING          (extras 2)"

    goto :goto_0

    .line 3501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkCarModeState()V
    .locals 5

    .prologue
    .line 1522
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1523
    .local v1, "mUiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1524
    .local v0, "mCarMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eq v2, v0, :cond_1

    .line 1525
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1526
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change the car mode state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1529
    :cond_1
    return-void

    .line 1523
    .end local v0    # "mCarMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "strIsSMFreezed"    # Ljava/lang/String;
    .param p2, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 3183
    const/4 v0, 0x0

    .line 3185
    .local v0, "state":I
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3186
    const/4 v0, 0x2

    .line 3198
    :cond_0
    :goto_0
    return v0

    .line 3187
    :cond_1
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3188
    const/4 v0, 0x1

    goto :goto_0

    .line 3190
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3191
    const/4 v0, 0x0

    goto :goto_0

    .line 3192
    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3193
    const/4 v0, 0x3

    goto :goto_0

    .line 3194
    :cond_4
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3195
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private covertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3202
    packed-switch p1, :pswitch_data_0

    .line 3214
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 3204
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 3206
    :pswitch_1
    const-string v0, "9"

    goto :goto_0

    .line 3208
    :pswitch_2
    const-string v0, "9"

    goto :goto_0

    .line 3210
    :pswitch_3
    const-string v0, "1"

    goto :goto_0

    .line 3212
    :pswitch_4
    const-string v0, "2"

    goto :goto_0

    .line 3202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createPolicies()V
    .locals 40

    .prologue
    .line 750
    const-string/jumbo v2, "sys.config.mars_spcm"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    .line 751
    .local v7, "spcmPolicyEnabled":Z
    :goto_0
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "spcmpolicy"

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 757
    const-string/jumbo v2, "sys.config.mars_gcmlocker"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    .line 758
    .local v13, "gcmLockerPolicyEnabled":Z
    :goto_1
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const v12, 0x1008112

    const-string/jumbo v14, "gcmlockerpolicy"

    const/4 v15, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 764
    const-string/jumbo v2, "sys.config.mars_applocker"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v19, 0x1

    .line 766
    .local v19, "appLockerPolicyEnabled":Z
    :goto_2
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v16, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActionTypeByCountryIso()I

    move-result v17

    const v18, 0x13b8110

    const-string v20, "applockerpolicy"

    const/16 v21, 0x3

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v21}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 772
    const-string/jumbo v2, "sys.config.mars_autorun"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v25, 0x1

    .line 773
    .local v25, "autoRunPolicyEnabled":Z
    :goto_3
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v22, 0x15

    const/16 v23, 0x4

    const v24, 0x390880

    const-string v26, "autorunpolicy"

    const/16 v27, 0x4

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v27}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 779
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UDS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    .line 780
    .local v31, "udsPolicyEnabled":Z
    new-instance v26, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v28, 0x16

    const/16 v29, 0x2

    const v30, 0x1000220

    const-string/jumbo v32, "udspolicy"

    const/16 v33, 0x5

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v33}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 786
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    .line 787
    .local v37, "sbikePolicyEnabled":Z
    new-instance v32, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v34, 0x17

    const/16 v35, 0x2

    const v36, 0x1000112

    const-string/jumbo v38, "sbkiepolicy"

    const/16 v39, 0x6

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v39}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 792
    return-void

    .line 750
    .end local v7    # "spcmPolicyEnabled":Z
    .end local v13    # "gcmLockerPolicyEnabled":Z
    .end local v19    # "appLockerPolicyEnabled":Z
    .end local v25    # "autoRunPolicyEnabled":Z
    .end local v31    # "udsPolicyEnabled":Z
    .end local v37    # "sbikePolicyEnabled":Z
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 757
    .restart local v7    # "spcmPolicyEnabled":Z
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 764
    .restart local v13    # "gcmLockerPolicyEnabled":Z
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 772
    .restart local v19    # "appLockerPolicyEnabled":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_3
.end method

.method private forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2610
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2611
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2612
    monitor-exit v1

    .line 2613
    return-void

    .line 2612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2606
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J

    .prologue
    .line 3517
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 3518
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 1146
    .local v0, "category":I
    if-ne v0, v5, :cond_2

    .line 1147
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1223
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_16

    .line 1224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_16

    .line 1225
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1226
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_1

    .line 1227
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1228
    add-int/lit8 v1, v1, -0x1

    .line 1224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-ne v0, v6, :cond_4

    .line 1150
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1151
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1152
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->isUsingGcm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v4, :cond_3

    .line 1153
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1157
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_6

    .line 1158
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1159
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1160
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v4, :cond_5

    .line 1161
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1164
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    const/16 v4, 0xb

    if-ne v0, v4, :cond_8

    .line 1165
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1166
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1167
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_7

    .line 1168
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1171
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    const/16 v4, 0xc

    if-ne v0, v4, :cond_a

    .line 1172
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1173
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1174
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_9

    .line 1175
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1178
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    const/16 v4, 0xd

    if-ne v0, v4, :cond_d

    .line 1179
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1180
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1181
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_b

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_c

    .line 1183
    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1188
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    const/16 v4, 0x14

    if-ne v0, v4, :cond_f

    .line 1189
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1190
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1191
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_e

    .line 1192
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1195
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_f
    const/16 v4, 0x15

    if-ne v0, v4, :cond_12

    .line 1196
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1197
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1198
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v4, :cond_10

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v5, :cond_11

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_11

    .line 1200
    :cond_10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1204
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_12
    const/16 v4, 0x16

    if-ne v0, v4, :cond_14

    .line 1205
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1206
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1207
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    if-ne v4, v5, :cond_13

    .line 1208
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1212
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_14
    const/16 v4, 0x17

    if-ne v0, v4, :cond_0

    .line 1213
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1215
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    if-ne v4, v5, :cond_15

    .line 1216
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1233
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_16
    return-object v3
.end method

.method private getActiveAdminsPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1554
    const/4 v1, 0x0

    .line 1555
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1556
    .local v5, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1558
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1559
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    .restart local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1561
    .local v3, "cmpName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "adminPkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1567
    .end local v2    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "cmpName":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method private getBoundAppWidgetPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1592
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1593
    .local v2, "mAwm":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 1594
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1596
    .local v6, "userId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1597
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1598
    .local v4, "provider":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1599
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 1600
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1601
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    .end local v1    # "isBound":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/content/ComponentName;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    return-object v7
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1281
    aget-object v0, v1, v4

    .line 1285
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2973
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2974
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2975
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 2976
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2980
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_1
    return-object v1

    .line 2974
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2980
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    if-eqz p1, :cond_1

    .line 944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 945
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 946
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :goto_1
    return-object v1

    .line 944
    .restart local v0    # "i":I
    .restart local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1532
    const/4 v0, -0x1

    .line 1533
    .local v0, "updateCount":I
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1536
    :cond_0
    return v0
.end method

.method private getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .locals 24
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPackageStatus;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 3342
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p2

    array-length v4, v0

    .line 3343
    .local v4, "count":I
    const/16 v17, 0x0

    .line 3344
    .local v17, "score":I
    const v5, 0x20015

    .line 3351
    .local v5, "dateFormatFlags":I
    if-lez v4, :cond_1

    .line 3352
    const/16 v20, 0x0

    aget-object v2, p2, v20

    .line 3354
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 3355
    .local v6, "foreground_score":I
    const/4 v12, 0x0

    .line 3357
    .local v12, "lasttime_score":I
    const-wide/16 v8, 0x0

    .line 3358
    .local v8, "foregroundtime":J
    const-wide/16 v10, 0x0

    .line 3359
    .local v10, "lasttime":J
    const/4 v7, 0x0

    .line 3361
    .local v7, "found":Z
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3362
    .local v3, "activityName":Ljava/lang/String;
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3363
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3372
    .local v16, "processName":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 3374
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 3376
    .local v15, "pkgstat":Landroid/app/usage/UsageStats;
    iget-object v0, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 3377
    iget-wide v8, v15, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3378
    iget-wide v10, v15, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3379
    const/4 v7, 0x1

    .line 3384
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_0
    if-nez v7, :cond_3

    .line 3386
    const/4 v6, 0x0

    .line 3387
    const/4 v12, 0x0

    .line 3406
    :goto_1
    add-int v17, v6, v12

    .line 3410
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "activityName":Ljava/lang/String;
    .end local v6    # "foreground_score":I
    .end local v7    # "found":Z
    .end local v8    # "foregroundtime":J
    .end local v10    # "lasttime":J
    .end local v12    # "lasttime_score":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg_i":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_1
    return v17

    .line 3372
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activityName":Ljava/lang/String;
    .restart local v6    # "foreground_score":I
    .restart local v7    # "found":Z
    .restart local v8    # "foregroundtime":J
    .restart local v10    # "lasttime":J
    .restart local v12    # "lasttime_score":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkg_i":I
    .restart local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3390
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v20, p4, v20

    if-eqz v20, :cond_4

    .line 3391
    const-wide/16 v20, 0x2710

    mul-long v20, v20, v8

    div-long v20, v20, p4

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 3393
    :cond_4
    if-nez v6, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_5

    .line 3394
    const/4 v6, 0x1

    .line 3396
    :cond_5
    if-lez v6, :cond_6

    .line 3397
    add-int/lit16 v6, v6, 0x7d0

    .line 3399
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v20, v10

    .line 3400
    .local v18, "tmptime":J
    const-wide/16 v20, 0x2710

    const-wide/16 v22, 0x2710

    mul-long v22, v22, v18

    div-long v22, v22, p6

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 3403
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    goto :goto_1
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .locals 16
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 3435
    const/4 v9, 0x0

    .line 3436
    .local v9, "score":I
    const/4 v11, 0x0

    .line 3437
    .local v11, "tmpscore":I
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_3

    .line 3438
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 3439
    aget-object v4, p1, v3

    .line 3441
    .local v4, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 3442
    .local v8, "providerName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3443
    .local v6, "processName":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3445
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 3446
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v14, v15}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 3447
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 3448
    const/16 v11, 0x3e8

    .line 3451
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "proi":I
    :goto_1
    if-ltz v7, :cond_0

    .line 3452
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 3454
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3456
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3457
    .local v10, "size":I
    if-lez v10, :cond_0

    .line 3458
    add-int/lit16 v11, v11, 0xfa0

    .line 3463
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    .end local v10    # "size":I
    :cond_0
    monitor-exit v13

    .line 3465
    if-le v11, v9, :cond_1

    move v9, v11

    .line 3438
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3451
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "proi":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3463
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3469
    .end local v3    # "i":I
    .end local v4    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v8    # "providerName":Ljava/lang/String;
    :cond_3
    return v9
.end method

.method private getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I
    .locals 13
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "sevices"    # [Landroid/content/pm/ServiceInfo;
    .param p3, "lLockTime"    # J

    .prologue
    .line 3415
    const/4 v0, 0x0

    .line 3416
    .local v0, "lastActivityScore":I
    const/4 v4, 0x0

    .line 3420
    .local v4, "tmpScore":I
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->lastServiceActivityTime:J

    .line 3421
    .local v2, "lastActivityTime":J
    const/16 v1, 0x1388

    .line 3422
    .local v1, "serviceBaseScore":I
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 3423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    .line 3425
    .local v6, "tmptime":J
    cmp-long v5, v6, p3

    if-gez v5, :cond_0

    .line 3426
    int-to-long v8, v1

    int-to-long v10, v1

    mul-long/2addr v10, v6

    div-long v10, v10, p3

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 3430
    .end local v6    # "tmptime":J
    :cond_0
    return v0
.end method

.method private getRunningProcessImprotance(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1289
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1290
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1291
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,getRunningProcessImprotance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1297
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/16 v3, 0x3e8

    goto :goto_0
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .locals 22
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 3299
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 3301
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 3303
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 3305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 3306
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3307
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 3310
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 3315
    .local v8, "dateFormatFlags":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3316
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 3318
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    if-ge v14, v15, :cond_3

    .line 3319
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 3320
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3321
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3324
    .local v12, "lasttime":J
    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_1

    .line 3318
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3327
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3328
    add-long v18, v18, v10

    goto :goto_1

    .line 3334
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    :cond_2
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_3

    .line 3335
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v17, "getTotalForegroundtimeIndays no packages run activity in last 7 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_3
    return-wide v18
.end method

.method private hasOngoingNotification(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1259
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPolicyExceptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeNMGetNotificationCountInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I

    move-result v0

    .line 1350
    .local v0, "notiUpdateCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo notiUpdateCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1353
    .local v1, "prevNotiCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo- diffNOTICount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    .end local v1    # "prevNotiCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    return-void
.end method

.method private invokePMGetPackageSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1327
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    .line 1344
    .local v0, "mStatsObserver":Landroid/content/pm/IPackageStatsObserver$Stub;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1345
    return-void
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1944
    if-nez p1, :cond_0

    .line 1966
    :goto_0
    return v4

    .line 1947
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1948
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1951
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1953
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 1956
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 1957
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1958
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v7, :cond_2

    .line 1959
    if-eqz p1, :cond_2

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1961
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 1964
    .end local v3    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    monitor-exit v6

    goto :goto_0

    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2186
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "calleePkgName":Ljava/lang/String;
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 2189
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2197
    .local v1, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "startService"

    if-eq p3, v3, :cond_0

    const-string v3, "bindService"

    if-ne p3, v3, :cond_1

    :cond_0
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2200
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isSamsungService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2201
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2202
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    .end local v1    # "callerPkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 2192
    :cond_3
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2193
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2205
    .restart local v1    # "callerPkgName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2206
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2207
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2210
    :cond_5
    const-string v3, "bindService"

    if-ne p3, v3, :cond_8

    .line 2211
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2212
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2213
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- JobSchedulerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2216
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2217
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2218
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- SyncManagerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2221
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2222
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2223
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- isBindNotificationListenerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2229
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 2279
    if-nez p1, :cond_1

    .line 2301
    :cond_0
    :goto_0
    return v0

    .line 2282
    :cond_1
    const/4 v0, 0x0

    .line 2283
    .local v0, "bindNotiListenerPermissionFound":Z
    const/4 v3, 0x0

    .line 2285
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2286
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2288
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2289
    if-eqz v3, :cond_0

    .line 2290
    const-string v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2292
    const/4 v0, 0x1

    .line 2293
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2296
    :catch_0
    move-exception v1

    .line 2297
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z
    .locals 8
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1634
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1637
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1638
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1639
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -isForceStopDisabled package from EDM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_0
    const-string v2, "EDMForceStopDisabledPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1794
    :goto_0
    return v1

    .line 1644
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1645
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_2

    .line 1646
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -wallpaper package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_2
    const-string v2, "WallpaperPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1652
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1653
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_4

    .line 1654
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -default inputMethod package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_4
    const-string v2, "DefaultIMEPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1660
    :cond_5
    iget-boolean v3, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v3, :cond_7

    .line 1661
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_6

    .line 1662
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -is active device admin package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_6
    const-string v2, "ActiveDeviceAdminPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1670
    :cond_7
    if-nez p3, :cond_8

    iget-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v3, :cond_a

    if-eq p2, v1, :cond_a

    .line 1671
    :cond_8
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1672
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_9

    .line 1673
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isMusicOrRecordActive!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_9
    const-string v2, "MusicOrRecordActivePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1679
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_e

    .line 1681
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1682
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_b

    .line 1683
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -current home package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_b
    const-string v2, "CurrentHomePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1689
    :cond_c
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1690
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_d

    .line 1691
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -foreground package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_d
    const-string v2, "ForegroundPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1698
    :cond_e
    if-eqz p3, :cond_f

    move v1, v2

    .line 1699
    goto/16 :goto_0

    .line 1703
    :cond_f
    iget-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_11

    .line 1704
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1705
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_10

    .line 1706
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -first time excuting policy!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_10
    const-string v2, "FirstTimeExcutingPolicy"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1713
    :cond_11
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_14

    .line 1714
    :cond_12
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v3, :cond_14

    .line 1715
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_13

    .line 1716
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -has running widgets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runningWidgets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1722
    :cond_14
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1723
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_15

    .line 1724
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -vpnService package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_15
    const-string v2, "VpnServicePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1729
    :cond_16
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1730
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_17

    .line 1731
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -dependsOnSystem package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_17
    const-string v2, "DependsOnSystemPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1737
    :cond_18
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_1b

    .line 1738
    :cond_19
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v3, v1, :cond_1b

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1740
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1a

    .line 1741
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -hasOngoingNotification!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_1a
    const-string/jumbo v2, "hasOngoingNotificationPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1748
    :cond_1b
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1d

    if-ne p2, v1, :cond_1d

    .line 1749
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1750
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1c

    .line 1751
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -in latest protected packageslist for SPCM!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_1c
    const-string v2, "LatestProtectedPackages"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1758
    :cond_1d
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_27

    .line 1760
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficExisting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1761
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1e

    .line 1762
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isActiveTrafficExisting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_1e
    const-string v2, "ActiveTrafficExistingPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1767
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_21

    move v0, v1

    .line 1768
    .local v0, "isUnusedAppTimeExpired":Z
    :goto_1
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_22

    if-nez v0, :cond_22

    .line 1769
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1770
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_20

    .line 1771
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Used in last 15 mins!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_20
    const-string v2, "UsedRecentlyPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "isUnusedAppTimeExpired":Z
    :cond_21
    move v0, v2

    .line 1767
    goto :goto_1

    .line 1776
    .restart local v0    # "isUnusedAppTimeExpired":Z
    :cond_22
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "com.baidu.BaiduMap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "com.autonavi.minimap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "com.autonavi.xmgd.navigator"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v3, "com.tencent.map"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v3, "com.sogou.map.android.maps"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "com.baidu.navi"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "com.mapbar.android.mapbarmap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v3, "com.uu.uunavi"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1781
    :cond_23
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_24

    .line 1782
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isRunningLocationPackages!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_24
    const-string v2, "RunningLocationPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1787
    :cond_25
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v3, v1, :cond_27

    iget-boolean v3, p1, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    if-nez v3, :cond_27

    .line 1788
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_26

    .line 1789
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - has No Icon!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_26
    const-string/jumbo v2, "hasNoIcon"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "isUnusedAppTimeExpired":Z
    :cond_27
    move v1, v2

    .line 1794
    goto/16 :goto_0
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2073
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2075
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v0, 0x1

    .line 2078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1248
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "system"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1250
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    .line 1251
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    const/4 v1, 0x1

    .line 1255
    :cond_0
    return v1
.end method

.method private isEdgeIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 2051
    const/4 v0, 0x0

    return v0
.end method

.method private isForegroundPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1237
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1238
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1241
    .local v1, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    const/4 v2, 0x1

    .line 1244
    :goto_1
    return v2

    .line 1238
    .end local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1244
    .restart local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2014
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.accessory"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2021
    :cond_0
    const/4 v0, 0x1

    .line 2023
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    .locals 7
    .param p1, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v3, 0x1

    .line 959
    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 961
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 962
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;

    .line 963
    .local v2, "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    iget-object v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->exception:I

    add-int/lit8 v5, p2, -0x1

    shl-int v5, v3, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 965
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInPolicyExceptionList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in whitelist!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :goto_1
    return v3

    .line 961
    .restart local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_1
    const-string v4, ".cts."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".cts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 973
    :cond_2
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--is CTS Package, exclude!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 979
    :cond_3
    const-string v4, "com.samsung.accessory"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 980
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 985
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_5

    .line 986
    const-string v4, "com.sec.android.app.shealth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v3, :cond_5

    .line 987
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 994
    :cond_5
    const/4 v4, 0x3

    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 995
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 999
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 2234
    if-nez p1, :cond_1

    .line 2256
    :cond_0
    :goto_0
    return v1

    .line 2237
    :cond_1
    const/4 v1, 0x0

    .line 2238
    .local v1, "jobPermissionFound":Z
    const/4 v3, 0x0

    .line 2240
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2241
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2243
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2244
    if-eqz v3, :cond_0

    .line 2245
    const-string v4, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2247
    const/4 v1, 0x1

    .line 2248
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2251
    :catch_0
    move-exception v0

    .line 2252
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2056
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.wssnps"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.easyMover"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.REQUEST_VERIFY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2066
    :cond_1
    const/4 v0, 0x1

    .line 2068
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncherableApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2104
    const-string v4, "com.baidu.searchbox_samsung"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.bst.floatingmsgproxy"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return v3

    .line 2108
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2109
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2110
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 2111
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2112
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isLauncherableApp -- Not launcherable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2113
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2115
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLaucherableApp exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1301
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1302
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    new-instance v3, Landroid/media/SamsungAudioManager;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 1304
    .local v3, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1305
    .local v1, "mMusicIsActive":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    .line 1307
    .local v2, "mRecordIsActive":Z
    if-eqz v1, :cond_0

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getRunningProcessImprotance(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1310
    :cond_1
    const/4 v4, 0x1

    .line 1312
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRunningPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1798
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1799
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1800
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1801
    const/4 v3, 0x1

    .line 1804
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v3
.end method

.method private isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "policy_num"    # I
    .param p3, "calleePackage"    # Ljava/lang/String;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3975
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 3976
    :cond_0
    const/4 v2, 0x0

    .line 4015
    :goto_0
    return v2

    .line 3979
    :cond_1
    const/4 v2, 0x0

    .line 3980
    .local v2, "isManagedPackage":Z
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 3981
    .local v5, "scpmManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    if-nez p1, :cond_5

    .line 3982
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3983
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm BlackList Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 3993
    .local v0, "action":Ljava/lang/String;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3994
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3997
    :cond_3
    const/4 v6, 0x4

    if-ne p2, v6, :cond_4

    .line 3998
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3999
    .local v3, "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_4

    .line 4000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 4001
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4002
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, p3, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4003
    const/4 v2, 0x1

    .line 4012
    .end local v1    # "i":I
    .end local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMManagedPackage --- calleePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , callerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isManagedPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3984
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 3985
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3986
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Block Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3987
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_2

    .line 3988
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3989
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Skip Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4000
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p3, "policy_num"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 3936
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 3969
    :cond_0
    :goto_0
    return v1

    .line 3940
    :cond_1
    iget v6, p2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v6, :cond_0

    .line 3944
    const/4 v1, 0x0

    .line 3945
    .local v1, "isSkipOptimizationPackage":Z
    iget-object v2, p2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 3946
    .local v2, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 3948
    .local v5, "scpmSkipManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 3949
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3954
    :cond_2
    const/4 v6, 0x4

    if-ne p3, v6, :cond_3

    .line 3955
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3956
    .local v3, "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_3

    .line 3957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 3958
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3959
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, v2, v7, v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3960
    const/4 v1, 0x1

    .line 3968
    .end local v0    # "i":I
    .end local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_3
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMSkipOptimizationPackage --- packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isSkipOptimizationPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3957
    .restart local v0    # "i":I
    .restart local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 3923
    const/4 v0, 0x0

    .line 3925
    .local v0, "isMatch":Z
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 3928
    :cond_5
    const/4 v0, 0x1

    .line 3930
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSCPMValueMatch --- value.strCallee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strCaller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " .....isSCPMValueMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    return v0
.end method

.method private isSamsungService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2083
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2084
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2085
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_1
    :goto_0
    return v0

    .line 2089
    :cond_2
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.searchbox_samsung"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.netdisk_ss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 2091
    goto :goto_0

    .line 2094
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2095
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2096
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2100
    goto :goto_0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2122
    const-string v0, "com.sec.android.cloudagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    :goto_0
    return v1

    .line 2126
    :cond_0
    const/4 v6, 0x0

    .line 2127
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2128
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2131
    :cond_1
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 2132
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2137
    :cond_2
    const-string v0, "com.samsung.android.opencalendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2138
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2143
    :cond_3
    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2144
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: SCPM caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2147
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 2151
    const/4 v6, 0x0

    .line 2152
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2153
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2156
    :cond_0
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "com.alipay.android.app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2158
    :cond_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3

    .line 2159
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldSkipCaseForAutoRun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v7

    .line 2179
    :goto_0
    return v0

    .line 2162
    :cond_4
    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2163
    :cond_5
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called with screen on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2164
    goto :goto_0

    .line 2166
    :cond_6
    const-string v0, "com.cmcc.sso"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.cmdm.rcs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2167
    :cond_7
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2168
    goto :goto_0

    .line 2170
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "com.sina.weibo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2171
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2172
    goto/16 :goto_0

    .line 2175
    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2176
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: SCPM caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2177
    goto/16 :goto_0

    .line 2179
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2028
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2029
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2030
    .local v1, "theIntent":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2031
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1

    .line 2032
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_1
    const/4 v2, 0x1

    .line 2039
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "theIntent":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2260
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 2261
    :cond_0
    const/4 v1, 0x0

    .line 2275
    :cond_1
    :goto_0
    return v1

    .line 2263
    :cond_2
    const/4 v1, 0x0

    .line 2266
    .local v1, "syncActionFound":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2268
    const/4 v1, 0x1

    .line 2269
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1972
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1973
    if-eqz p1, :cond_0

    .line 1974
    :try_start_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v3, :cond_3

    .line 1975
    monitor-exit v2

    .line 1982
    :goto_0
    return v0

    .line 1978
    :cond_0
    if-eqz p3, :cond_1

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 1980
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 1978
    goto :goto_1

    .line 1980
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 1982
    goto :goto_0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1987
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1988
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1990
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 2009
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 1994
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1998
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2001
    .local v2, "match":I
    if-ltz v2, :cond_0

    .line 2002
    const/4 v4, 0x1

    goto :goto_0

    .line 2006
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "match":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2007
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemPackage exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2594
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2595
    const/4 v0, 0x1

    .line 2596
    .local v0, "needClearNotification":Z
    :try_start_0
    const-string/jumbo v1, "spcm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2597
    const/4 v0, 0x0

    .line 2599
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2600
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private printlogs_AllList_test()V
    .locals 6

    .prologue
    .line 3812
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3814
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3815
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--Score  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--State  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3819
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3821
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3822
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const-string v3, "MARsPolicyManager"

    const-string v4, "--appliedPolicies  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 3825
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3826
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3829
    .end local v1    # "j":I
    :cond_1
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3832
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    .prologue
    .line 1608
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 1616
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1618
    return-void
.end method

.method private registerNotificationListener()V
    .locals 6

    .prologue
    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MARsPolicyManager"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runMARsUpdatePackagesThread()V
    .locals 2

    .prologue
    .line 2904
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$8;

    const-string v1, "MARsUpdatePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$8;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    .line 2969
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2970
    return-void
.end method

.method private turnOffPolicies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 883
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 885
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 887
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 893
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 896
    return-void

    .line 893
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private turnOnPolicies()V
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 877
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 880
    return-void

    .line 877
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateActiveAdminsToManaged()V
    .locals 6

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1577
    .local v0, "activeAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1578
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1579
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1581
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    .line 1582
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v3, :cond_0

    .line 1583
    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 1584
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 1579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1587
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v5

    .line 1589
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1587
    .restart local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .locals 6

    .prologue
    .line 2984
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2985
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2986
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 2987
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2988
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 2989
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2990
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 2985
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2993
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2994
    monitor-exit v4

    .line 2995
    return-void

    .line 2994
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updatePackagesScore(Ljava/lang/String;)V
    .locals 26
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3221
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 3222
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackagesScore PackageInfo name -- "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_0
    const/4 v15, 0x0

    .line 3226
    .local v15, "forceUpdatedOne":Z
    if-eqz p1, :cond_1

    .line 3227
    const/4 v15, 0x1

    .line 3229
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3230
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    sub-long v8, v12, v8

    const-wide/32 v24, 0x927c0

    cmp-long v2, v8, v24

    if-gez v2, :cond_2

    if-eqz v15, :cond_c

    .line 3231
    :cond_2
    if-nez v15, :cond_3

    .line 3232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 3235
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3237
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 3239
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3242
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 3243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 3246
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_4

    .line 3247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 3248
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v14, 0xd

    .line 3251
    .local v14, "flags":I
    :try_start_1
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 3252
    .local v19, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_4

    .line 3253
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3260
    .end local v14    # "flags":I
    .end local v19    # "pkginfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    .line 3261
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-nez v18, :cond_6

    .line 3242
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3255
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "flags":I
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v11

    .line 3256
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageInfo package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not installed!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3292
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "flags":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3264
    .restart local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .restart local v18    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    const/16 v17, 0x0

    .line 3267
    .local v17, "packageScore":I
    if-eqz v15, :cond_7

    if-eqz v15, :cond_5

    :try_start_3
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3269
    :cond_7
    const/4 v10, 0x0

    .line 3270
    .local v10, "activityScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    .line 3271
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v10

    .line 3276
    :cond_8
    const/16 v22, 0x0

    .line 3277
    .local v22, "serviceScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_9

    .line 3278
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I

    move-result v22

    .line 3282
    :cond_9
    const/16 v21, 0x0

    .line 3283
    .local v21, "providerScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_a

    .line 3284
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 3287
    :cond_a
    add-int v2, v10, v22

    add-int v17, v2, v21

    .line 3289
    move/from16 v0, v17

    iput v0, v3, Lcom/android/server/am/MARsPackageStatus;->score:I

    goto :goto_2

    .line 3292
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "activityScore":I
    .end local v17    # "packageScore":I
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v21    # "providerScore":I
    .end local v22    # "serviceScore":I
    :cond_b
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3295
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v16    # "i":I
    :cond_c
    return-void
.end method

.method private updateSMDBValues()V
    .locals 18

    .prologue
    .line 3007
    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v11, :cond_0

    .line 3008
    const-string v11, "MARsPolicyManager"

    const-string/jumbo v12, "updateSMDBValues"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3012
    .local v9, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/4 v7, 0x0

    .line 3014
    .local v7, "needTriggerAppLockerPolicy":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3016
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 3017
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_c

    .line 3018
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    .line 3021
    .local v8, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-gtz v11, :cond_3

    iget-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3025
    :cond_3
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    .line 3026
    .local v4, "extras":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v13, v14, v4}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    .local v10, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3029
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3033
    .end local v4    # "extras":Ljava/lang/String;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_4
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_5

    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_6

    .line 3017
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3038
    :cond_6
    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_7

    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_8

    .line 3040
    :cond_7
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3043
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3044
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    goto :goto_1

    .line 3092
    .end local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 3047
    .restart local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    :try_start_1
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    if-eqz v11, :cond_a

    .line 3049
    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v14, v2, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-gez v11, :cond_5

    .line 3051
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3054
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3057
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_9

    .line 3058
    iget-object v11, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3062
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_5

    .line 3063
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    .line 3064
    iget-object v11, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3069
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_a
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v11, :cond_b

    iget-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    if-eqz v11, :cond_b

    .line 3071
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3074
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3075
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_1

    .line 3078
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_b
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v11, :cond_5

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v14, v2, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-lez v11, :cond_5

    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v11, :cond_5

    .line 3080
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3084
    const/4 v11, 0x3

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3087
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3092
    .end local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_c
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3094
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    .line 3096
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3097
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3098
    const-string v11, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3103
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11, v9}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3105
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 3106
    return-void
.end method


# virtual methods
.method cancelPolicy(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    .line 1907
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1909
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1910
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1908
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1913
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1914
    if-eqz p2, :cond_2

    .line 1915
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1916
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_5

    .line 1917
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1919
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 1920
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 1928
    .end local v1    # "j":I
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1929
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 1932
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1933
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1934
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1915
    .restart local v1    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1937
    .end local v1    # "j":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    monitor-exit v4

    .line 1938
    return-void

    .line 1937
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkSCPMParameters()V
    .locals 1

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->checkSCPMParametersFromDB()V

    .line 3837
    return-void
.end method

.method public clearNotiUpdateWhileScreenOn()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1541
    return-void
.end method

.method public clearNotificationDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1551
    return-void
.end method

.method public clearStorageDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1545
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1546
    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3525
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3526
    :try_start_0
    const-string v5, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3529
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 3532
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3534
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_2

    .line 3536
    :cond_1
    const-string v5, "--State "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->appLockerStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3539
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3543
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_3

    .line 3544
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-nez v5, :cond_8

    const-string v5, "0    "

    :goto_1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3548
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_4

    .line 3549
    iget-boolean v5, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v5, :cond_4

    .line 3550
    const-string v5, "--receivedGcm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3555
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_5

    .line 3556
    const-string v5, "--AutoRun "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3559
    :cond_5
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 3563
    const-string v5, "--SkipReason "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3567
    :cond_6
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3568
    const-string v5, "--Running "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3570
    :cond_7
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3544
    :cond_8
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 3573
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3574
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3575
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 3576
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3579
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3581
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3582
    const-string v5, "--appliedPolicies "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3583
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 3584
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 3585
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3584
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3588
    .end local v1    # "j":I
    :cond_a
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3591
    :cond_b
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3594
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_d

    .line 3597
    const-string/jumbo v5, "mLatestProtectedPackages "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 3599
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3602
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 3603
    const-string/jumbo v5, "mWallpaperPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    :cond_e
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 3606
    const-string/jumbo v5, "mVpnServicePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    :cond_f
    const-string v5, "DefaultIMEPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3611
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_10

    .line 3612
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 3613
    const-string v5, "CurrentHomePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    :cond_10
    const-string v5, "OngoingNotificationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 3619
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3620
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3623
    :cond_11
    const-string v5, "NotificationListenerPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 3625
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3626
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3629
    :cond_12
    const/4 v3, 0x0

    .line 3630
    .local v3, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const/4 v4, 0x0

    .line 3631
    .local v4, "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const-string v5, "SCPMBlackListPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3633
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_13

    .line 3634
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 3635
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3636
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3637
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3639
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3643
    :cond_13
    const-string v5, "SCPMBlockPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3645
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_14

    .line 3646
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 3647
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3648
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3649
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3650
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3651
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3655
    :cond_14
    const-string v5, "SCPMSkipPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3657
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_15

    .line 3658
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 3659
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3660
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3661
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3662
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3663
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3667
    :cond_15
    const-string v5, "SCPMSkipOptimizationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3669
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_16

    .line 3670
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    .line 3671
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3672
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3673
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3675
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3678
    :cond_16
    monitor-exit v6

    .line 3679
    return-void

    .line 3678
    .end local v0    # "i":I
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .locals 9
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1809
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1810
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v4, :cond_1

    .line 1811
    :cond_0
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not enabled!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    monitor-exit v5

    .line 1898
    :goto_0
    return-void

    .line 1815
    :cond_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 1816
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1823
    .local v2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_3

    .line 1824
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1837
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 1838
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 1839
    .local v3, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1840
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1847
    :cond_5
    const/4 v1, 0x0

    .line 1849
    .local v1, "spcmPolicyChoosed":Z
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1854
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1857
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v8, :cond_c

    .line 1858
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-NonSticky-Kill-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1859
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_6

    .line 1860
    const/4 v1, 0x1

    .line 1874
    :cond_6
    :goto_3
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_7

    if-eqz v1, :cond_4

    .line 1877
    :cond_7
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 1878
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v4, :cond_e

    .line 1879
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 1880
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1887
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_9
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_4

    if-eqz v1, :cond_4

    .line 1896
    .end local v1    # "spcmPolicyChoosed":Z
    .end local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 1897
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1862
    .restart local v0    # "i":I
    .restart local v1    # "spcmPolicyChoosed":Z
    .restart local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_b
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_4

    .line 1863
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1866
    :cond_c
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    .line 1867
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 1869
    :cond_d
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1870
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-ForceKillPackage-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1882
    :cond_e
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1883
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "policyNum"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3685
    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    .line 3686
    .local v2, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    .line 3687
    :cond_0
    const-string/jumbo v5, "policy is not exist or not enabled!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    :goto_0
    return-void

    .line 3691
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3692
    :try_start_0
    const-string v5, "all"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3693
    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3700
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 3701
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    .line 3702
    .local v4, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v4, :cond_3

    .line 3703
    const-string/jumbo v5, "not our managed package!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3704
    monitor-exit v6

    goto :goto_0

    .line 3743
    .end local v0    # "i":I
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3695
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 3696
    .local v1, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3697
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3707
    .end local v1    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    .restart local v0    # "i":I
    .restart local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is CurrentImportantPackage !!!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3713
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3716
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    .line 3717
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-NonSticky-Kill-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3729
    :cond_5
    :goto_4
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 3730
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    .line 3731
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 3732
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3738
    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3739
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3741
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mRestrictedPackages "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " policy --"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3719
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3722
    :cond_9
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 3723
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 3724
    :cond_a
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5

    .line 3725
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-ForceKillPackage-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3734
    :cond_b
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3735
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3743
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .locals 11
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 3748
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3750
    .local v4, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    .line 3751
    .local v3, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 3752
    :cond_0
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "policy is not exist or not enabled!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    :goto_0
    return-void

    .line 3756
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 3757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 3758
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3759
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3760
    .local v2, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_2

    .line 3761
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3757
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3764
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    .line 3765
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    .line 3766
    .local v5, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v5, :cond_5

    .line 3767
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v8, "not our managed package!"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3771
    :cond_5
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3776
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3778
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v6, v10, :cond_a

    .line 3779
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-NonSticky-Kill-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3791
    :cond_6
    :goto_4
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 3792
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    .line 3793
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 3794
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3800
    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3801
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    :cond_8
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add mRestrictedPackages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3805
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3781
    .restart local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    :try_start_1
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choosed Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3784
    :cond_a
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 3785
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 3786
    :cond_b
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    .line 3787
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-ForceKillPackage-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3796
    :cond_c
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3797
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3805
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method getActionTypeByCountryIso()I
    .locals 6

    .prologue
    .line 826
    const/4 v0, 0x1

    .line 827
    .local v0, "actionType":I
    const/4 v1, 0x0

    .line 830
    .local v1, "countryIso":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 836
    :goto_0
    const-string/jumbo v3, "tw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "hk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 837
    :cond_0
    const/4 v0, 0x4

    .line 840
    :cond_1
    return v0

    .line 831
    :catch_0
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on CountryISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppUsedRecentlyState()Z
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return v0
.end method

.method public getCarModeOnState()Z
    .locals 1

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return v0
.end method

.method getManagedPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 844
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 857
    :goto_0
    return-object v0

    .line 846
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 850
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 852
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 853
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 854
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 855
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 857
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenOnState()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method public handelAlertToastWindowStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2636
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 2654
    :goto_0
    return-void

    .line 2638
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2639
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_1
    move-object v0, p1

    .line 2643
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handelNotificationBarClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2657
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 2675
    :goto_0
    return-void

    .line 2659
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2660
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_1
    move-object v0, p1

    .line 2664
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$6;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2682
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2683
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 2684
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_0
    if-eqz p1, :cond_4

    .line 2689
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 2690
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 2691
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_1

    .line 2692
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2693
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2696
    :cond_1
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2697
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    .line 2699
    :cond_2
    monitor-exit v3

    .line 2718
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_0
    return-void

    .line 2701
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 2702
    .local v1, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v1, :cond_4

    .line 2703
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2704
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 2706
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2717
    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2708
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_1
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2709
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1

    .line 2711
    :cond_6
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2712
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2725
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2726
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 2727
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_0
    if-eqz p1, :cond_1

    .line 2730
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2731
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_1

    .line 2732
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2733
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 2734
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2740
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 2741
    return-void

    .line 2735
    .restart local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2736
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    goto :goto_0

    .line 2740
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2837
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1

    .line 2838
    if-eqz p4, :cond_0

    .line 2839
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2841
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Home Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 2850
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2851
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_1

    .line 2852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 2855
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    .line 2856
    move-object v1, p1

    .line 2858
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$7;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/MARsPolicyManager$7;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2866
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2867
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2868
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2877
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_5

    .line 2880
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p3, :cond_8

    .line 2896
    :cond_5
    :goto_1
    return-void

    .line 2869
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 2870
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2871
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2873
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2884
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 2885
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 2886
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_5

    .line 2887
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2888
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2893
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2894
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1
.end method

.method public handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z

    .prologue
    .line 2796
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2800
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2801
    :try_start_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2804
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->insertPackageToDB(Ljava/lang/String;)V

    .line 2827
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2806
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2807
    if-eqz p3, :cond_4

    .line 2808
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v3, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    monitor-exit v2

    goto :goto_0

    .line 2812
    :cond_4
    const/4 v0, 0x0

    .line 2813
    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2814
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2817
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2818
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2825
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->deletePackageInDB(Ljava/lang/String;)V

    goto :goto_1

    .line 2821
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected !! Uninstalled package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in mManagedPackages list !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public handleSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2767
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    const-string v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2772
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2773
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2776
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2777
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 2780
    :cond_3
    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2781
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 2782
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2783
    .restart local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2786
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2787
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2788
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2789
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2750
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2764
    :cond_0
    :goto_0
    return-void

    .line 2752
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->setPackageReceivedGCMIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 2755
    :cond_2
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2758
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2760
    :cond_4
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2762
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Z)V
    .locals 6
    .param p1, "boot"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppSleepUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    const-string v1, "MARsPolicyManager"

    const-string v2, "AppSleepUI is available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 613
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 615
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "isChinaNal":Ljava/lang/String;
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChinaNal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 619
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_4

    .line 622
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 623
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_5

    .line 624
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 627
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_6

    .line 628
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 630
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 631
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 632
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    .line 633
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 635
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 640
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 643
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_8

    .line 644
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 648
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_9

    .line 649
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 652
    :cond_9
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V

    .line 654
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 655
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    .line 656
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkSCPMParameters()V

    .line 661
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->initPolicyExceptionList()Ljava/util/ArrayList;

    .line 666
    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_d

    .line 669
    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V

    .line 673
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_e

    .line 674
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->updateAutoRun()V

    .line 677
    :cond_e
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_f

    .line 679
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spcmPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gcmLockerPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appLockerPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoRunPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " udsPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sbikePolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_f
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 691
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerNotificationListener()V

    .line 694
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public isActiveTrafficExisting(Ljava/lang/String;)Z
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1410
    const/16 v22, 0x1

    .line 1411
    .local v22, "retCode":Z
    const/4 v13, 0x0

    .line 1412
    .local v13, "currTrafficTX":Ljava/lang/Long;
    const/16 v21, 0x0

    .line 1413
    .local v21, "prevTrafficTX":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1414
    .local v12, "currTrafficRX":Ljava/lang/Long;
    const/16 v20, 0x0

    .line 1418
    .local v20, "prevTrafficRX":Ljava/lang/Long;
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1419
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1420
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveTrafficExisting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -scpm blacklist package, force stop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_0
    const/4 v2, 0x0

    .line 1480
    :goto_0
    return v2

    .line 1425
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1426
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1427
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1428
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1429
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1436
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1437
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 1441
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 1444
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    if-eqz v21, :cond_5

    if-eqz v13, :cond_5

    if-eqz v20, :cond_5

    if-nez v12, :cond_7

    .line 1448
    :cond_5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_6

    .line 1449
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficForPkg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1431
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 1432
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occurred for package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1444
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1454
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 1455
    .local v16, "diffTX":J
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v14, v2, v4

    .line 1456
    .local v14, "diffRX":J
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_8

    .line 1457
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveTraffic :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v16, v2

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v14, v2

    if-gez v2, :cond_a

    .line 1460
    :cond_9
    const/16 v22, 0x0

    .line 1463
    :cond_a
    if-eqz v22, :cond_d

    .line 1464
    const-wide/16 v10, 0x0

    .line 1465
    .local v10, "StorageDiff":J
    const/4 v8, 0x0

    .line 1466
    .local v8, "NotiDiff":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1467
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1470
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1473
    :cond_c
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1474
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": StorageDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotiDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_d

    int-to-long v2, v8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 1476
    const/16 v22, 0x0

    .line 1477
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Storage zero and noti no updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "NotiDiff":I
    .end local v10    # "StorageDiff":J
    :cond_d
    move/from16 v2, v22

    .line 1480
    goto/16 :goto_0

    .line 1473
    .restart local v8    # "NotiDiff":I
    .restart local v10    # "StorageDiff":J
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method isAppOptUIAvailable()Z
    .locals 5

    .prologue
    .line 798
    const-string v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 799
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 802
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 803
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 805
    .local v2, "isAppOptUI":Z
    :goto_0
    return v2

    .line 804
    .end local v2    # "isAppOptUI":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAppSleepUIAvailable()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 809
    const-string v0, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    .line 810
    .local v0, "APP_SLEEP_INTENT":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 812
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 813
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v5, "com.samsung.android.sm"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 816
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 818
    const/4 v4, 0x1

    .line 821
    :cond_0
    return v4
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1008
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_1

    .line 1009
    :cond_0
    const-string v2, "MARsPolicyManager"

    const-string v3, "Auto Run Policy not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_0
    return v1

    .line 1012
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 1013
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v0, :cond_2

    .line 1014
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1018
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skip 1."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :cond_3
    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_4

    .line 1022
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run OFF."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1023
    goto :goto_0

    .line 1025
    :cond_4
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPolicyEnabled(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 862
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_0

    .line 863
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 865
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2307
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 26
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "queueName"    # Ljava/lang/String;

    .prologue
    .line 2315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2316
    .local v12, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2317
    .local v11, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2318
    .local v7, "callerPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2319
    .local v18, "target":Lcom/android/server/am/MARsPackageStatus;
    const/4 v10, 0x0

    .line 2332
    .local v10, "isRestricted":Z
    sget-boolean v19, Lcom/android/server/am/ActivityManagerService;->slowdown_debug:Z

    if-eqz v19, :cond_1

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2334
    const/4 v5, 0x0

    .line 2335
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_0

    .line 2336
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2338
    :cond_0
    const-string v19, "AMS_SLOWDOWN"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "isRestrictedPackage() --callee: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --caller: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --callingPid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --callingUid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --hostingType "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --intent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " --queueName: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2346
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2348
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MARsPackageStatus;

    .line 2350
    .local v15, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v0, v15, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2351
    const/4 v10, 0x1

    .line 2352
    move-object/from16 v18, v15

    .line 2357
    .end local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-nez v10, :cond_5

    .line 2358
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/32 v24, 0x493e0

    cmp-long v19, v22, v24

    if-ltz v19, :cond_3

    .line 2359
    const-string v19, "MARsPolicyManager"

    const-string v21, "SSRMSJ:: detected wakeup!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    .line 2363
    :cond_3
    const/16 v19, 0x0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2590
    :goto_1
    return v19

    .line 2342
    .end local v8    # "i":I
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 2348
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "i":I
    .restart local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2367
    .end local v15    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 2368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/32 v24, 0x493e0

    cmp-long v19, v22, v24

    if-ltz v19, :cond_6

    .line 2369
    const-string v19, "MARsPolicyManager"

    const-string v21, "SSRMSJ:: detected wakeup!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    .line 2373
    :cond_6
    const/16 v19, 0x0

    monitor-exit v20

    goto :goto_1

    .line 2582
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    .line 2377
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 2378
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2379
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2382
    :cond_8
    const/4 v10, 0x0

    .line 2383
    const/4 v14, 0x0

    .line 2384
    .local v14, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/16 v16, 0x0

    .line 2385
    .local v16, "receivedGCM":Z
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_d

    .line 2386
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    check-cast v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2387
    .restart local v14    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    move/from16 v17, v0

    .line 2390
    .local v17, "restrictions":I
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 2391
    :cond_9
    const/4 v10, 0x0

    .line 2385
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2395
    :cond_b
    const-string v19, "activity"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 2396
    and-int/lit8 v19, v17, 0x1

    if-eqz v19, :cond_12

    .line 2397
    const/4 v10, 0x1

    .line 2563
    :cond_c
    :goto_3
    if-eqz v10, :cond_a

    .line 2568
    .end local v17    # "restrictions":I
    :cond_d
    if-nez v10, :cond_e

    .line 2569
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2573
    :cond_e
    if-nez v10, :cond_f

    if-eqz v16, :cond_f

    .line 2574
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2575
    const/16 v16, 0x0

    .line 2578
    :cond_f
    sget-boolean v19, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v19, :cond_10

    if-eqz v10, :cond_10

    .line 2579
    const-string v19, "MARsPolicyManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " hostingType: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is Restricted by policy: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " caller is: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :cond_10
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2583
    if-nez v10, :cond_11

    .line 2584
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v19

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    const-wide/32 v22, 0x493e0

    cmp-long v19, v20, v22

    if-ltz v19, :cond_11

    .line 2585
    const-string v19, "MARsPolicyManager"

    const-string v20, "SSRMSJ:: detected wakeup!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->updateWakeupCount(Ljava/lang/String;)V

    :cond_11
    move/from16 v19, v10

    .line 2590
    goto/16 :goto_1

    .line 2403
    .restart local v17    # "restrictions":I
    :cond_12
    const/4 v4, 0x0

    .line 2404
    .local v4, "allowedFlag":I
    and-int/lit8 v19, v17, 0x2

    if-eqz v19, :cond_13

    .line 2405
    or-int/lit8 v4, v4, 0x1

    .line 2406
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2407
    or-int/lit8 v4, v4, 0x2

    .line 2410
    :cond_13
    and-int/lit8 v19, v17, 0x4

    if-eqz v19, :cond_14

    .line 2411
    or-int/lit8 v4, v4, 0x1

    .line 2412
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 2413
    or-int/lit8 v4, v4, 0x2

    .line 2418
    :cond_14
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_15

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    :cond_15
    const/4 v9, 0x1

    .line 2419
    .local v9, "isAllowed":Z
    :goto_4
    if-nez v9, :cond_17

    const/4 v10, 0x1

    .line 2420
    :goto_5
    goto/16 :goto_3

    .line 2418
    .end local v9    # "isAllowed":Z
    :cond_16
    const/4 v9, 0x0

    goto :goto_4

    .line 2419
    .restart local v9    # "isAllowed":Z
    :cond_17
    const/4 v10, 0x0

    goto :goto_5

    .line 2422
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_18
    const-string/jumbo v19, "startService"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_19

    const-string v19, "bindService"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_21

    .line 2423
    :cond_19
    and-int/lit8 v19, v17, 0x10

    if-eqz v19, :cond_1a

    .line 2424
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2427
    :cond_1a
    const/4 v4, 0x0

    .line 2428
    .restart local v4    # "allowedFlag":I
    and-int/lit8 v19, v17, 0x20

    if-eqz v19, :cond_1b

    .line 2429
    or-int/lit8 v4, v4, 0x1

    .line 2430
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2431
    or-int/lit8 v4, v4, 0x2

    .line 2434
    :cond_1b
    and-int/lit8 v19, v17, 0x40

    if-eqz v19, :cond_1c

    .line 2435
    or-int/lit8 v4, v4, 0x1

    .line 2436
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2437
    or-int/lit8 v4, v4, 0x2

    .line 2440
    :cond_1c
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 2441
    or-int/lit8 v4, v4, 0x1

    .line 2442
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 2443
    or-int/lit8 v4, v4, 0x2

    .line 2446
    :cond_1d
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_1e

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    :cond_1e
    const/4 v9, 0x1

    .line 2447
    .restart local v9    # "isAllowed":Z
    :goto_6
    if-nez v9, :cond_20

    const/4 v10, 0x1

    .line 2448
    :goto_7
    goto/16 :goto_3

    .line 2446
    .end local v9    # "isAllowed":Z
    :cond_1f
    const/4 v9, 0x0

    goto :goto_6

    .line 2447
    .restart local v9    # "isAllowed":Z
    :cond_20
    const/4 v10, 0x0

    goto :goto_7

    .line 2450
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_21
    const-string/jumbo v19, "provider"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_29

    .line 2451
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 2452
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2455
    :cond_22
    const/4 v4, 0x0

    .line 2456
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 2457
    or-int/lit8 v4, v4, 0x1

    .line 2458
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 2459
    or-int/lit8 v4, v4, 0x2

    .line 2462
    :cond_23
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_24

    .line 2463
    or-int/lit8 v4, v4, 0x1

    .line 2464
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 2465
    or-int/lit8 v4, v4, 0x2

    .line 2468
    :cond_24
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_25

    .line 2469
    or-int/lit8 v4, v4, 0x1

    .line 2470
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_25

    .line 2471
    or-int/lit8 v4, v4, 0x2

    .line 2474
    :cond_25
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_26

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    :cond_26
    const/4 v9, 0x1

    .line 2475
    .restart local v9    # "isAllowed":Z
    :goto_8
    if-nez v9, :cond_28

    const/4 v10, 0x1

    .line 2476
    :goto_9
    goto/16 :goto_3

    .line 2474
    .end local v9    # "isAllowed":Z
    :cond_27
    const/4 v9, 0x0

    goto :goto_8

    .line 2475
    .restart local v9    # "isAllowed":Z
    :cond_28
    const/4 v10, 0x0

    goto :goto_9

    .line 2478
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_29
    const-string v19, "broadcast"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_38

    .line 2479
    if-eqz p6, :cond_2a

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    .line 2480
    :cond_2a
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2483
    :cond_2b
    const/4 v4, 0x0

    .line 2484
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x2000

    move/from16 v19, v0

    if-eqz v19, :cond_2c

    .line 2485
    or-int/lit8 v4, v4, 0x1

    .line 2486
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 2487
    or-int/lit8 v4, v4, 0x2

    .line 2490
    :cond_2c
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    .line 2491
    or-int/lit8 v4, v4, 0x1

    .line 2492
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 2493
    or-int/lit8 v4, v4, 0x2

    .line 2497
    :cond_2d
    const v19, 0x8000

    and-int v19, v19, v17

    if-eqz v19, :cond_2e

    .line 2498
    or-int/lit8 v4, v4, 0x1

    .line 2499
    const-string v19, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 2500
    or-int/lit8 v4, v4, 0x2

    .line 2501
    const/16 v16, 0x1

    .line 2506
    :cond_2e
    const/high16 v19, 0x10000

    and-int v19, v19, v17

    if-eqz v19, :cond_2f

    .line 2507
    or-int/lit8 v4, v4, 0x1

    .line 2508
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 2509
    or-int/lit8 v4, v4, 0x2

    .line 2513
    :cond_2f
    const/high16 v19, 0x20000

    and-int v19, v19, v17

    if-eqz v19, :cond_30

    .line 2514
    or-int/lit8 v4, v4, 0x1

    .line 2515
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 2516
    or-int/lit8 v4, v4, 0x2

    .line 2520
    :cond_30
    const/high16 v19, 0x40000

    and-int v19, v19, v17

    if-eqz v19, :cond_31

    .line 2521
    or-int/lit8 v4, v4, 0x1

    .line 2523
    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move/from16 v19, v0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    const-string v19, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_31

    const-string/jumbo v19, "foreground"

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 2527
    or-int/lit8 v4, v4, 0x2

    .line 2532
    :cond_31
    const/high16 v19, 0x80000

    and-int v19, v19, v17

    if-eqz v19, :cond_32

    .line 2533
    or-int/lit8 v4, v4, 0x1

    .line 2534
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isEdgeIntent(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 2535
    or-int/lit8 v4, v4, 0x2

    .line 2539
    :cond_32
    const/high16 v19, 0x200000

    and-int v19, v19, v17

    if-eqz v19, :cond_33

    .line 2540
    or-int/lit8 v4, v4, 0x1

    .line 2541
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 2542
    or-int/lit8 v4, v4, 0x2

    .line 2546
    :cond_33
    const/high16 v19, 0x100000

    and-int v19, v19, v17

    if-eqz v19, :cond_34

    .line 2547
    or-int/lit8 v4, v4, 0x1

    .line 2548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2549
    or-int/lit8 v4, v4, 0x2

    .line 2552
    :cond_34
    and-int/lit8 v19, v4, 0x1

    if-eqz v19, :cond_35

    and-int/lit8 v19, v4, 0x2

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_36

    :cond_35
    const/4 v9, 0x1

    .line 2553
    .restart local v9    # "isAllowed":Z
    :goto_a
    if-nez v9, :cond_37

    const/4 v10, 0x1

    .line 2554
    :goto_b
    goto/16 :goto_3

    .line 2552
    .end local v9    # "isAllowed":Z
    :cond_36
    const/4 v9, 0x0

    goto :goto_a

    .line 2553
    .restart local v9    # "isAllowed":Z
    :cond_37
    const/4 v10, 0x0

    goto :goto_b

    .line 2556
    .end local v4    # "allowedFlag":I
    .end local v9    # "isAllowed":Z
    :cond_38
    const-string v19, "backup"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2557
    const/high16 v19, 0x1000000

    and-int v19, v19, v17

    if-eqz v19, :cond_c

    .line 2558
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method public screenOnStateChanged(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    .line 1511
    :cond_0
    return-void
.end method

.method setAllPoliciesOnOffState(I)V
    .locals 3
    .param p1, "on"    # I

    .prologue
    .line 913
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_2

    .line 918
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 919
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 924
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 926
    :cond_2
    return-void

    .line 921
    :cond_3
    if-nez p1, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    goto :goto_0
.end method

.method public setAppUsedRecentlyState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1491
    return-void
.end method

.method public setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "trafficDuration"    # Ljava/lang/String;
    .param p2, "trafficAmount"    # Ljava/lang/String;
    .param p3, "notiUpdateCount"    # Ljava/lang/String;
    .param p4, "appSizeIncreased"    # Ljava/lang/String;

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 3847
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 3848
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 3849
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 3850
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunDownloadParameter --- trafficDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , trafficAmount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , notiUpdateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appSizeIncreased = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    return-void
.end method

.method public setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "triggerPeriod"    # Ljava/lang/String;
    .param p2, "unusedPeriod"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 3840
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 3841
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 3842
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunParameter --- TriggerPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , UnusedPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    return-void
.end method

.method public setCarModeOnState(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 1514
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1515
    return-void
.end method

.method public setDataConnectionConnected()V
    .locals 5

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1318
    .local v0, "mConnManagerDoNotUseDirectly":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1319
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 1320
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1321
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    return-void

    .line 1319
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPackageReceivedGCMIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2620
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_1

    .line 2622
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2624
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_0

    .line 2625
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    .line 2626
    :cond_0
    monitor-exit v2

    .line 2628
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    return-void

    .line 2626
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPackagesUnusedLockingTime(I)V
    .locals 6
    .param p1, "hours"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 899
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 900
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 907
    :cond_1
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 908
    return-void
.end method

.method public setSCPMBlackListValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3889
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3890
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3893
    .local v0, "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3894
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3895
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3893
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3901
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    monitor-exit v3

    .line 3903
    return-void

    .line 3902
    .end local v0    # "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMBlockValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3855
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3859
    .local v0, "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3860
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3861
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3859
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3867
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    monitor-exit v3

    .line 3869
    return-void

    .line 3868
    .end local v0    # "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3906
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3907
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3910
    .local v0, "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3911
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3912
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3910
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3918
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    monitor-exit v3

    .line 3920
    return-void

    .line 3919
    .end local v0    # "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3872
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3873
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3876
    .local v0, "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3877
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3878
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3876
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3884
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3885
    monitor-exit v3

    .line 3886
    return-void

    .line 3885
    .end local v0    # "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 929
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 931
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 932
    monitor-exit v1

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenOnState(Z)V
    .locals 1
    .param p1, "onoff"    # Z

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->screenOnStateChanged(Z)V

    .line 1496
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 1497
    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 936
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 939
    monitor-exit v1

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchUser(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 701
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 705
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 711
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->unregisterContentObserver()V

    .line 712
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 713
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 714
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    .line 716
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 719
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 723
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 724
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 725
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 726
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 727
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 728
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 729
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 730
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 731
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 732
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 733
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 734
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 735
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 736
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 737
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 738
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 739
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 740
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 741
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 742
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 744
    :cond_d
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 746
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    .line 747
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V
    .locals 6
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v5, 0x0

    .line 3115
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_2

    .line 3117
    :cond_1
    if-eqz p1, :cond_2

    .line 3119
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 3121
    iput v5, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3123
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-string v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V

    .line 3132
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 3133
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3134
    :cond_3
    return-void

    .line 3126
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto :goto_0
.end method

.method public updateDBResetTimeForTimeChanged(J)V
    .locals 13
    .param p1, "changedTime"    # J

    .prologue
    .line 3144
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_0

    .line 3145
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDBResetTimeForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 3149
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_1

    .line 3150
    const-string v5, "MARsPolicyManager"

    const-string v6, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :cond_1
    :goto_0
    return-void

    .line 3155
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3157
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3159
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3161
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 3162
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long/2addr v8, p1

    iput-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3165
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3166
    .local v0, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3158
    .end local v0    # "extras":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3171
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3172
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method updateManagedPackages(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 1031
    if-eqz p1, :cond_11

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 1032
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 1033
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateManagedPackages! size = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    const/4 v10, 0x0

    .line 1036
    .local v10, "needTriggerAppLockerPolicy":Z
    const/4 v11, 0x0

    .line 1038
    .local v11, "needTriggerAutoRunPolicy":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_e

    .line 1039
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1040
    .local v13, "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1042
    .local v5, "newState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .local v2, "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_7

    .line 1049
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1

    .line 1052
    const/4 v10, 0x0

    .line 1056
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v3, 0x2

    if-ne v5, v3, :cond_2

    .line 1059
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1062
    :cond_2
    iput v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 1065
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1066
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 1069
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_5

    .line 1070
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1071
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1072
    .local v12, "newAutoRun":I
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    if-ne v12, v3, :cond_4

    .line 1073
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1075
    :cond_4
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1038
    .end local v12    # "newAutoRun":I
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1078
    :cond_6
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1138
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1083
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .restart local v5    # "newState":I
    .restart local v8    # "i":I
    .restart local v10    # "needTriggerAppLockerPolicy":Z
    .restart local v11    # "needTriggerAutoRunPolicy":Z
    .restart local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_7
    const-wide/16 v6, 0x0

    .line 1084
    .local v6, "time":J
    :try_start_1
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 1085
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1088
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    if-eq v5, v3, :cond_9

    const/4 v3, 0x3

    if-ne v5, v3, :cond_a

    :cond_9
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v3, :cond_a

    .line 1091
    const/4 v10, 0x1

    .line 1094
    :cond_a
    new-instance v2, Lcom/android/server/am/MARsPackageStatus;

    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1097
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_c

    .line 1098
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1099
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1103
    :goto_2
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 1105
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 1108
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_c

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_c

    .line 1109
    const/4 v11, 0x1

    .line 1113
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1101
    :cond_d
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_2

    .line 1117
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v6    # "time":J
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_f

    if-eqz v10, :cond_f

    .line 1119
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1120
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1121
    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1126
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_10

    if-eqz v11, :cond_10

    .line 1128
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1129
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1130
    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1133
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 1136
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 1138
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    :cond_11
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    return-void
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1401
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1402
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1403
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1404
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 1406
    :cond_0
    return-void
.end method

.method public updateSBikePackages(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 3492
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3493
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 3494
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    .line 3492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3496
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    return-void
.end method

.method public updateTrafficStat()V
    .locals 15

    .prologue
    .line 1361
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-string v7, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v3, "intentGetLocaitonPkg":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_0

    const-string v7, "MARsPolicyManager"

    const-string v12, "GPS INTENT send"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1365
    iget-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    if-eqz v7, :cond_4

    .line 1366
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1367
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1368
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1370
    iget-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 1371
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1372
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageStatus;

    .line 1373
    .local v6, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v4, v6, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1376
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1377
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1378
    .local v10, "txbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1379
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_1

    .line 1381
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",txbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_1
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1384
    .local v8, "rxbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1385
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokeNMGetNotificationCountInfo(Ljava/lang/String;)V

    .line 1388
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_2

    .line 1389
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",rxbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "rxbytestime":J
    .end local v10    # "txbytestime":J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1396
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v7

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_3
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1398
    .end local v2    # "i":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public updateUDSPackages(Ljava/util/ArrayList;)V
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
    .line 3477
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3478
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3479
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3480
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3481
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3482
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 3477
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3486
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
