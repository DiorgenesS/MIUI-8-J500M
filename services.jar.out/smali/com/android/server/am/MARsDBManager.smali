.class public Lcom/android/server/am/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerObserver;,
        Lcom/android/server/am/MARsDBManager$DBHandler;,
        Lcom/android/server/am/MARsDBManager$DBThread;,
        Lcom/android/server/am/MARsDBManager$SCPMDBValue;,
        Lcom/android/server/am/MARsDBManager$SMDBValue;
    }
.end annotation


# static fields
.field private static final AUTORUN:Ljava/lang/String; = "autoRun"

.field public static final AUTORUN_CATEGORY:Ljava/lang/String; = "AutoRun"

.field private static final AUTORUN_OPTIMIZATION_TYPE_SKIP:Ljava/lang/String; = "SkipOptimization"

.field private static final AUTORUN_PARAMETER:Ljava/lang/String; = "AutoRunParameter"

.field private static final AUTORUN_RESTRICTION_TYPE_BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final AUTORUN_RESTRICTION_TYPE_BLOCK:Ljava/lang/String; = "Block"

.field private static final AUTORUN_RESTRICTION_TYPE_SKIP:Ljava/lang/String; = "Skip"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field private static final DATA2:Ljava/lang/String; = "data2"

.field private static final DATA3:Ljava/lang/String; = "data3"

.field private static final DATA4:Ljava/lang/String; = "data4"

.field private static final DATA5:Ljava/lang/String; = "data5"

.field private static final DOWNLOAD_PARAMETER:Ljava/lang/String; = "DownLoadParameter"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final ISAPPOPTTARGET:Ljava/lang/String; = "isAppOptTarget"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field static final MARS_CHECK_SCPM_PARAMETERS_MSG:I = 0xd

.field static final MARS_DB_DELETE_PACKAGE_MSG:I = 0xa

.field static final MARS_DB_INITMANAGEDPACKAGES_MSG:I = 0x1

.field static final MARS_DB_INITSETTING_MSG:I = 0x2

.field static final MARS_DB_INIT_SKT_PACKAGE_MSG:I = 0xc

.field static final MARS_DB_INSERT_PACKAGE_MSG:I = 0x9

.field static final MARS_DB_REQUEST_FILLINDB_MSG:I = 0x7

.field static final MARS_DB_UPDATE_AUTORUN_MSG:I = 0xb

.field static final MARS_DB_UPDATE_PREVIOUS_PACKAGESTYPE_MSG:I = 0x8

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x3

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x4

.field static final MARS_SMART_MGR_DB_CHANGED:I = 0x5

.field static final MARS_SMART_MGR_SETTINGS_DB_CHANGED:I = 0x6

.field private static final NOTIFIEDCOUNT:Ljava/lang/String; = "notifiedCount"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field public static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field public static final PACKAGE_TYPE_CARRIER:I = 0x1000

.field public static final PACKAGE_TYPE_CONTAINER:I = 0x2000

.field public static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field public static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_DRM:I = 0x8000

.field public static final PACKAGE_TYPE_EXCEPTION_AUTORUN_DEFAULT_OFF:I = 0x20000

.field public static final PACKAGE_TYPE_GOOGLE:I = 0x800

.field public static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field public static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field public static final PACKAGE_TYPE_ORDINARY_SYSTEM:I = 0x100

.field public static final PACKAGE_TYPE_PRELOADED:I = 0x400

.field public static final PACKAGE_TYPE_PRIVILEGED_SYSTEM:I = 0x200

.field public static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field public static final PACKAGE_TYPE_SDCARD:I = 0x10000

.field public static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field public static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field public static final PACKAGE_TYPE_VENDOR:I = 0x4000

.field private static final READCOUNT:Ljava/lang/String; = "readCount"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "MARs"

.field static final TAG:Ljava/lang/String; = "MARsDBManager"

.field static final UPDATE_SMDB_COLUMN_AUTORUN:I = 0x8

.field static final UPDATE_SMDB_COLUMN_EXTRAS:I = 0x2

.field static final UPDATE_SMDB_COLUMN_PKGTYPE:I = 0x4

.field static final UPDATE_SMDB_COLUMN_RESETTIME:I = 0x1

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field public final SCPM_URI_MARS:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public final SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

.field public final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public final SMART_MGR_URI:Landroid/net/Uri;

.field final cscpkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

.field private mDBUpdated:Z

.field public mOldVersion:Z

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public mPreScpmVersion:Ljava/lang/String;

.field private mPreviousPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field

.field mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

.field mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

.field mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

.field private mUpdateResetTimeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-string/jumbo v1, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    .line 143
    const-string/jumbo v1, "content://com.samsung.android.sm/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 144
    const-string/jumbo v1, "content://com.samsung.android.sm/excluded_app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    .line 179
    const-string/jumbo v1, "content://com.samsung.android.sm.policy/policy_item/MARs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_MARS:Landroid/net/Uri;

    .line 180
    const-string/jumbo v1, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    .line 237
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    .line 239
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    .line 241
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 400
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    .line 402
    new-instance v0, Lcom/android/server/am/MARsDBManager$DBThread;

    const-string v1, "MARsDBThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager$DBThread;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 403
    .local v0, "mDBThread":Lcom/android/server/am/MARsDBManager$DBThread;
    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager$DBThread;->start()V

    .line 404
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Lcom/android/server/am/MARsDBManager$DBHandler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->deletePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->updateAutoRunTargetXmlToDB()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getSCPMParametersFromDB()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsDBManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsDBManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->insertPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkSmDBVersion()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 560
    const/4 v6, 0x0

    .line 562
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "isAppOptTarget"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 565
    if-eqz v6, :cond_0

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v7

    .line 571
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "MARsDBManager"

    const-string v1, "checkSmDBVersion, catch no column exception! OldVersion!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    iput-boolean v8, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    goto :goto_0

    .line 575
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 576
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2

    .line 577
    const-string v0, "MARsDBManager"

    const-string v1, "checkSmDBVersion-sql, catch no column exception! OldVersion!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    goto :goto_0
.end method

.method private deletePackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1571
    const-string/jumbo v3, "package_name=?"

    .line 1572
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 1573
    .local v2, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1575
    .local v1, "row":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1580
    :goto_0
    if-gez v1, :cond_0

    .line 1581
    const-string v4, "MARsDBManager"

    const-string/jumbo v5, "deletePackage error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_0
    return-void

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExcludedAppDBValues()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 719
    const-string/jumbo v6, "exclude_category"

    .line 720
    .local v6, "EXCLUDE_CATEGORY":Ljava/lang/String;
    const-string/jumbo v7, "exclude_type"

    .line 721
    .local v7, "EXCLUDE_TYPE":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v10, "sktSpeicalPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v11, "whiteListIntentsForSKT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 726
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 733
    :goto_0
    if-eqz v8, :cond_3

    .line 734
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 735
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 737
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "2"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const-string v0, "6"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    :catch_0
    move-exception v9

    .line 729
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 742
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "7"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 748
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPolicyManager;->setSKTSpeicalPackages(Ljava/util/ArrayList;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V

    .line 752
    return-void
.end method

.method public static getLongFromString(Ljava/lang/String;J)J
    .locals 5
    .param p0, "strValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 1632
    if-eqz p0, :cond_0

    .line 1633
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 1638
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 1635
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManagedPackagesFromDB()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    const/4 v14, 0x0

    .line 620
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 621
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 622
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 624
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 625
    const-string v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-eqz v1, :cond_3

    .line 629
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "package_name"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "isSMFreezed"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "extras"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "resetTime"

    aput-object v2, v3, v1

    .line 639
    .restart local v3    # "projection":[Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 646
    :goto_1
    if-eqz v14, :cond_5

    .line 647
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v16, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_1
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 649
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 651
    .local v8, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 652
    .local v9, "strIsSMFreezed":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 653
    .local v11, "strExtras":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 654
    .local v10, "strResetTime":Ljava/lang/String;
    const/4 v12, 0x0

    .line 655
    .local v12, "strPkgType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 656
    .local v13, "strAutoRun":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v1, :cond_2

    .line 657
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 658
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 661
    :cond_2
    if-eqz v8, :cond_1

    .line 662
    new-instance v6, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v6, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 632
    .end local v6    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "strIsSMFreezed":Ljava/lang/String;
    .end local v10    # "strResetTime":Ljava/lang/String;
    .end local v11    # "strExtras":Ljava/lang/String;
    .end local v12    # "strPkgType":Ljava/lang/String;
    .end local v13    # "strAutoRun":Ljava/lang/String;
    .end local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_3
    const-string/jumbo v4, "isAppOptTarget=?"

    .line 633
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v5, v1

    .line 634
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "package_name"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "isSMFreezed"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "extras"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "resetTime"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "packageType"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "autoRun"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "isAppOptTarget"

    aput-object v2, v3, v1

    .restart local v3    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v15

    .line 642
    .local v15, "e":Ljava/lang/Exception;
    const-string v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 667
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 671
    .end local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :goto_3
    return-object v16

    .line 670
    :cond_5
    const-string v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB no database!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v16, 0x0

    goto :goto_3
.end method

.method private getPackageType(Landroid/content/pm/PackageInfo;)I
    .locals 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/high16 v4, 0x40000

    .line 1207
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1208
    .local v2, "sourceDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1209
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1212
    .local v0, "packageType":I
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isShowIconPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    or-int/lit8 v0, v0, 0x1

    .line 1217
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "/data/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_3

    .line 1220
    or-int/lit8 v0, v0, 0x2

    .line 1224
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    .line 1226
    :cond_4
    or-int/lit8 v0, v0, 0x4

    .line 1230
    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1231
    or-int/lit8 v0, v0, 0x8

    .line 1235
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1236
    or-int/lit8 v0, v0, 0x10

    .line 1240
    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1241
    or-int/lit8 v0, v0, 0x20

    .line 1245
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1246
    or-int/lit8 v0, v0, 0x40

    .line 1250
    :cond_9
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 1251
    or-int/lit16 v0, v0, 0x80

    .line 1255
    :cond_a
    if-eqz v2, :cond_b

    const-string v3, "/system/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1256
    or-int/lit16 v0, v0, 0x100

    .line 1260
    :cond_b
    if-eqz v2, :cond_c

    const-string v3, "/system/priv-app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1261
    or-int/lit16 v0, v0, 0x200

    .line 1265
    :cond_c
    if-eqz v1, :cond_d

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isPreloadedPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1266
    or-int/lit16 v0, v0, 0x400

    .line 1283
    :cond_d
    if-eqz v2, :cond_e

    const-string v3, "/system/container"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1284
    or-int/lit16 v0, v0, 0x2000

    .line 1288
    :cond_e
    if-eqz v2, :cond_f

    const-string v3, "/vendor/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1289
    or-int/lit16 v0, v0, 0x4000

    .line 1293
    :cond_f
    if-eqz v2, :cond_10

    const-string v3, "/data/app-private"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1294
    const v3, 0x8000

    or-int/2addr v0, v3

    .line 1298
    :cond_10
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 1299
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 1303
    :cond_11
    if-eqz v1, :cond_12

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1304
    const/high16 v3, 0x20000

    or-int/2addr v0, v3

    .line 1307
    :cond_12
    return v0
.end method

.method private getSCPMParametersFromDB()V
    .locals 2

    .prologue
    .line 1768
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1772
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1773
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getSCPMPolicyItemFromDB()V

    goto :goto_0

    .line 1775
    :cond_1
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "scpm policy version is old, don\'t update scpm policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSCPMPolicyItemFromDB()V
    .locals 30

    .prologue
    .line 1679
    const/4 v13, 0x0

    .line 1680
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "item"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "category"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data1"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "data2"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "data3"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "data4"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "data5"

    aput-object v4, v5, v3

    .line 1682
    .local v5, "projection":[Ljava/lang/String;
    const/16 v28, 0x0

    .line 1683
    .local v28, "triggerPeriod":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1684
    .local v29, "unusedPeriod":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1685
    .local v20, "dataTrafficDuration":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1686
    .local v19, "dataTrafficAmount":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1687
    .local v23, "notificatonUpdateCount":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1690
    .local v12, "appSizeIncreased":Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1691
    .local v25, "scpmBlockValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    .local v27, "scpmSkipValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v24, "scpmBlackListValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    .local v26, "scpmSkipOptimizationListValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1696
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1697
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 1698
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 1701
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_MARS:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1707
    :goto_0
    if-eqz v13, :cond_8

    .line 1708
    :cond_0
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1709
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1710
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1711
    .local v22, "item":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1712
    .local v8, "category":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1713
    .local v14, "data1":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1714
    .local v15, "data2":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1715
    .local v16, "data3":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1716
    .local v17, "data4":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1718
    .local v18, "data5":Ljava/lang/String;
    const-string v3, "AutoRunParameter"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AutoRun"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1719
    move-object/from16 v28, v14

    .line 1720
    move-object/from16 v29, v15

    goto :goto_1

    .line 1702
    .end local v8    # "category":Ljava/lang/String;
    .end local v14    # "data1":Ljava/lang/String;
    .end local v15    # "data2":Ljava/lang/String;
    .end local v16    # "data3":Ljava/lang/String;
    .end local v17    # "data4":Ljava/lang/String;
    .end local v18    # "data5":Ljava/lang/String;
    .end local v22    # "item":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 1703
    .local v21, "e":Ljava/lang/Exception;
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1721
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v8    # "category":Ljava/lang/String;
    .restart local v14    # "data1":Ljava/lang/String;
    .restart local v15    # "data2":Ljava/lang/String;
    .restart local v16    # "data3":Ljava/lang/String;
    .restart local v17    # "data4":Ljava/lang/String;
    .restart local v18    # "data5":Ljava/lang/String;
    .restart local v22    # "item":Ljava/lang/String;
    :cond_1
    const-string v3, "DownLoadParameter"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AutoRun"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1722
    move-object/from16 v20, v14

    .line 1723
    move-object/from16 v19, v15

    .line 1724
    move-object/from16 v23, v16

    .line 1725
    move-object/from16 v12, v17

    goto/16 :goto_1

    .line 1727
    :cond_2
    move-object v9, v15

    .line 1728
    .local v9, "callee":Ljava/lang/String;
    move-object/from16 v10, v16

    .line 1729
    .local v10, "caller":Ljava/lang/String;
    move-object/from16 v11, v17

    .line 1731
    .local v11, "action":Ljava/lang/String;
    new-instance v6, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/MARsDBManager$SCPMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    .local v6, "pkg":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v3, "Block"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1734
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    :goto_2
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- category = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , restriction: data1 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , callee = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , caller = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , action = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1735
    :cond_3
    const-string v3, "Skip"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1736
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1737
    :cond_4
    const-string v3, "BlackList"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1738
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1739
    :cond_5
    const-string v3, "SkipOptimization"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1740
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1742
    :cond_6
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- restrictType = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , it is error!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1749
    .end local v6    # "pkg":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v8    # "category":Ljava/lang/String;
    .end local v9    # "callee":Ljava/lang/String;
    .end local v10    # "caller":Ljava/lang/String;
    .end local v11    # "action":Ljava/lang/String;
    .end local v14    # "data1":Ljava/lang/String;
    .end local v15    # "data2":Ljava/lang/String;
    .end local v16    # "data3":Ljava/lang/String;
    .end local v17    # "data4":Ljava/lang/String;
    .end local v18    # "data5":Ljava/lang/String;
    .end local v22    # "item":Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1751
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- triggerPeriod = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , unusedPeriod = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , dataTrafficDuration = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , dataTrafficAmount = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , notificatonUpdateCount = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , appSizeIncreased = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2, v12}, Lcom/android/server/am/MARsPolicyManager;->setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMBlockValue(Ljava/util/ArrayList;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMSkipValue(Ljava/util/ArrayList;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMBlackListValue(Ljava/util/ArrayList;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V

    .line 1765
    :goto_3
    return-void

    .line 1762
    :cond_8
    const-string v3, "MARsDBManager"

    const-string/jumbo v4, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getSettingsValueFromDB()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 677
    const-string/jumbo v6, "key"

    .line 678
    .local v6, "SETTING_KEY":Ljava/lang/String;
    const-string/jumbo v7, "value"

    .line 679
    .local v7, "SETTING_VALUE":Ljava/lang/String;
    const/4 v11, -0x1

    .line 680
    .local v11, "nLockingTime":I
    const/4 v12, -0x1

    .line 682
    .local v12, "nSpcmSwitch":I
    const/4 v8, 0x0

    .line 685
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 693
    :goto_0
    if-eqz v8, :cond_3

    .line 694
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 698
    .local v10, "key":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v0, "spcm_locking_time"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 700
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    .line 703
    :cond_1
    const-string/jumbo v0, "spcm_switch"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 705
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v12}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 708
    :catch_0
    move-exception v9

    .line 709
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with parseInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 688
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "key":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 689
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 713
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 715
    :cond_3
    return-void
.end method

.method private initManagedPackagesInternal()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 592
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->checkSmDBVersion()V

    .line 594
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 595
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->updateManagedPackages(Ljava/util/ArrayList;)V

    .line 613
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    .line 614
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 616
    return-void

    .line 597
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 598
    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    if-nez v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, v3}, Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V

    .line 606
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    goto :goto_0

    .line 602
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v0, "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    invoke-direct {p0, v6, v0, v3}, Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V

    goto :goto_1

    .line 610
    .end local v0    # "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_3
    const-string v2, "MARsDBManager"

    const-string v3, "Packages database not exist, and not created!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertPackage(Ljava/lang/String;)V
    .locals 20
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1515
    const/4 v13, 0x0

    .line 1516
    .local v13, "packageType":I
    const/4 v14, 0x0

    .line 1517
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    const/16 v11, 0x100f

    .line 1520
    .local v11, "flags":I
    const/4 v8, 0x0

    .line 1521
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "package_name=?"

    .line 1522
    .local v5, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .line 1523
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1527
    .local v9, "duplicated":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v17, "package_name"

    aput-object v17, v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1530
    if-eqz v8, :cond_3

    .line 1531
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1532
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1533
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1534
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1535
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already exist in DB!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/4 v9, 0x1

    goto :goto_0

    .line 1540
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1541
    if-eqz v9, :cond_3

    .line 1568
    :cond_2
    :goto_1
    return-void

    .line 1545
    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v11, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1548
    if-eqz v14, :cond_2

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    .line 1549
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v13

    .line 1551
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1553
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "package_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string/jumbo v2, "isSMFreezed"

    const-string v3, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string/jumbo v2, "resetTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v2, :cond_4

    .line 1557
    const-string/jumbo v2, "packageType"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1561
    .local v15, "uri":Landroid/net/Uri;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1563
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 1564
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting package info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1565
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1566
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "PermissionFound":Z
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1183
    .local v3, "perms":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1185
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    const-string v5, "com.sec.android.EXCEPTION_AUTORUN_DEFAULT_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1186
    const/4 v0, 0x1

    .line 1193
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1194
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1196
    .local v2, "match":I
    if-ltz v2, :cond_3

    .line 1197
    const/4 v0, 0x1

    .line 1203
    .end local v2    # "match":I
    :cond_1
    :goto_1
    return v0

    .line 1184
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "i":I
    .restart local v2    # "match":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isCarrierPackage(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 964
    const/16 v8, 0xb

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "com.sk"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "com.kt"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "com.lg"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "com.estsoft.alyac"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "com.uplus"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "com.tmobile"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "com.sprint"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "com.vzw"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string/jumbo v9, "com.verizon"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "com.att"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "com.mizmowireless"

    aput-object v9, v1, v8

    .line 969
    .local v1, "carrierStartingStr":[Ljava/lang/String;
    const/16 v8, 0x96

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.elevenst.deals"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "com.elevenst"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "com.iloen.melon"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "com.nate.android.portalmini"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "com.tms"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "com.cyworld.camera"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "com.moent.vas"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "com.mnet.app"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x9

    const-string v9, "com.mobitv.client.tmobiletvhd"

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-string v9, "com.customermobile.preload"

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-string/jumbo v9, "com.whitepages.nameid.tmobile"

    aput-object v9, v6, v8

    const/16 v8, 0xd

    const-string/jumbo v9, "us.com.dt.iq.appsource.tmobile"

    aput-object v9, v6, v8

    const/16 v8, 0xe

    const-string/jumbo v9, "com.smithmicro.mnd"

    aput-object v9, v6, v8

    const/16 v8, 0xf

    const-string/jumbo v9, "com.smithmicro.EDM"

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-string v9, "com.locationlabs.sparkle.yellow.pre"

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-string v9, "com.coremobility.app.vnotes"

    aput-object v9, v6, v8

    const/16 v8, 0x12

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x13

    const-string v9, "com.oem.smartwifisupport"

    aput-object v9, v6, v8

    const/16 v8, 0x14

    const-string v9, "com.kineto.smartwifi"

    aput-object v9, v6, v8

    const/16 v8, 0x15

    const-string v9, "com.itsoninc.android.uid"

    aput-object v9, v6, v8

    const/16 v8, 0x16

    const-string v9, "com.itsoninc.android.itsonservice"

    aput-object v9, v6, v8

    const/16 v8, 0x17

    const-string/jumbo v9, "com.telenav.app.android.scout_us"

    aput-object v9, v6, v8

    const/16 v8, 0x18

    const-string v9, "com.mobitv.client.sprinttvng"

    aput-object v9, v6, v8

    const/16 v8, 0x19

    const-string v9, "com.nextradioapp.nextradio"

    aput-object v9, v6, v8

    const/16 v8, 0x1a

    const-string v9, "com.nbadigital.gametimelite"

    aput-object v9, v6, v8

    const/16 v8, 0x1b

    const-string v9, "com.nascar.nascarmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x1c

    const-string v9, "com.pinsight.v1"

    aput-object v9, v6, v8

    const/16 v8, 0x1d

    const-string/jumbo v9, "msgplus.jibe.sca"

    aput-object v9, v6, v8

    const/16 v8, 0x1e

    const-string v9, "com.handmark.expressweather"

    aput-object v9, v6, v8

    const/16 v8, 0x1f

    const-string v9, "com.amazon.mShop"

    aput-object v9, v6, v8

    const/16 v8, 0x20

    const-string v9, "com.familyandco.familywall"

    aput-object v9, v6, v8

    const/16 v8, 0x21

    const-string v9, "com.locationlabs.finder.sprint"

    aput-object v9, v6, v8

    const/16 v8, 0x22

    const-string/jumbo v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x23

    const-string/jumbo v9, "com.spotify.music"

    aput-object v9, v6, v8

    const/16 v8, 0x24

    const-string v9, "com.airg"

    aput-object v9, v6, v8

    const/16 v8, 0x25

    const-string/jumbo v9, "com.soleo.numbersearch"

    aput-object v9, v6, v8

    const/16 v8, 0x26

    const-string v9, "com.livewiremobile.musicstore.boost"

    aput-object v9, v6, v8

    const/16 v8, 0x27

    const-string/jumbo v9, "com.wipit.android.boostwallet"

    aput-object v9, v6, v8

    const/16 v8, 0x28

    const-string v9, "com.birdstep.android.cm"

    aput-object v9, v6, v8

    const/16 v8, 0x29

    const-string v9, "com.instagram.android"

    aput-object v9, v6, v8

    const/16 v8, 0x2a

    const-string v9, "com.nq.live.sprintid"

    aput-object v9, v6, v8

    const/16 v8, 0x2b

    const-string v9, "com.mobiroo.xgen"

    aput-object v9, v6, v8

    const/16 v8, 0x2c

    const-string v9, "com.pinsight.eureka.offers"

    aput-object v9, v6, v8

    const/16 v8, 0x2d

    const-string/jumbo v9, "com.wipit.sprintmoneyexpress"

    aput-object v9, v6, v8

    const/16 v8, 0x2e

    const-string v9, "com.ebay.mobile"

    aput-object v9, v6, v8

    const/16 v8, 0x2f

    const-string v9, "com.asurion.android.mobilerecovery.sprint"

    aput-object v9, v6, v8

    const/16 v8, 0x30

    const-string v9, "com.itsoninc.android.itsonclient"

    aput-object v9, v6, v8

    const/16 v8, 0x31

    const-string v9, "com.onelouder.baconreader"

    aput-object v9, v6, v8

    const/16 v8, 0x32

    const-string v9, "com.livewiremobile.musicstore.vmu"

    aput-object v9, v6, v8

    const/16 v8, 0x33

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x34

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x35

    const-string v9, "com.nqmobile.antivirus20.uscc"

    aput-object v9, v6, v8

    const/16 v8, 0x36

    const-string v9, "com.mobitv.client.uscctv"

    aput-object v9, v6, v8

    const/16 v8, 0x37

    const-string/jumbo v9, "com.synchronoss.sm"

    aput-object v9, v6, v8

    const/16 v8, 0x38

    const-string v9, "com.LogiaGroup.LogiaDeck"

    aput-object v9, v6, v8

    const/16 v8, 0x39

    const-string/jumbo v9, "com.telenav.app.android.uscc"

    aput-object v9, v6, v8

    const/16 v8, 0x3a

    const-string/jumbo v9, "com.zed.TrdWapLauncher"

    aput-object v9, v6, v8

    const/16 v8, 0x3b

    const-string v9, "com.privacystar.android.metro"

    aput-object v9, v6, v8

    const/16 v8, 0x3c

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x3d

    const-string/jumbo v9, "com.whitepages.metro411"

    aput-object v9, v6, v8

    const/16 v8, 0x3e

    const-string v9, "com.handmark.metro.launcher"

    aput-object v9, v6, v8

    const/16 v8, 0x3f

    const-string v9, "com.mobileposse.client"

    aput-object v9, v6, v8

    const/16 v8, 0x40

    const-string v9, "com.nuance.nmc.sihome.metropcs"

    aput-object v9, v6, v8

    const/16 v8, 0x41

    const-string v9, "com.metro.simlock"

    aput-object v9, v6, v8

    const/16 v8, 0x42

    const-string v9, "com.metropcs.service.vvm"

    aput-object v9, v6, v8

    const/16 v8, 0x43

    const-string v9, "com.amazon.kindle"

    aput-object v9, v6, v8

    const/16 v8, 0x44

    const-string v9, "com.amazon.mp3"

    aput-object v9, v6, v8

    const/16 v8, 0x45

    const-string v9, "com.amazon.venezia"

    aput-object v9, v6, v8

    const/16 v8, 0x46

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x47

    const-string v9, "com.audible.application"

    aput-object v9, v6, v8

    const/16 v8, 0x48

    const-string v9, "com.imdb.mobile"

    aput-object v9, v6, v8

    const/16 v8, 0x49

    const-string v9, "com.amazon.fv"

    aput-object v9, v6, v8

    const/16 v8, 0x4a

    const-string v9, "com.gotv.nflgamecenter.us.lite"

    aput-object v9, v6, v8

    const/16 v8, 0x4b

    const-string/jumbo v9, "com.slacker.radio"

    aput-object v9, v6, v8

    const/16 v8, 0x4c

    const-string/jumbo v9, "com.telecomsys.directedsms.android.SCG"

    aput-object v9, v6, v8

    const/16 v8, 0x4d

    const-string v9, "com.asurion.android.verizon.vms"

    aput-object v9, v6, v8

    const/16 v8, 0x4e

    const-string v9, "com.LogiaGroup.LogiaDeck"

    aput-object v9, v6, v8

    const/16 v8, 0x4f

    const-string/jumbo v9, "com.vznavigator.Generic"

    aput-object v9, v6, v8

    const/16 v8, 0x50

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x51

    const-string v9, "com.motricity.verizon.ssodownloadable"

    aput-object v9, v6, v8

    const/16 v8, 0x52

    const-string/jumbo v9, "com.vcast.mediamanager"

    aput-object v9, v6, v8

    const/16 v8, 0x53

    const-string v9, "com.fusionone.android.sync.vzbuaclient"

    aput-object v9, v6, v8

    const/16 v8, 0x54

    const-string/jumbo v9, "net.aetherpal.device"

    aput-object v9, v6, v8

    const/16 v8, 0x55

    const-string/jumbo v9, "com.yahoo.mobile.client.android.yahoo.att"

    aput-object v9, v6, v8

    const/16 v8, 0x56

    const-string/jumbo v9, "com.yahoo.mobile.client.android.mail.att"

    aput-object v9, v6, v8

    const/16 v8, 0x57

    const-string v9, "com.asurison.android.mobilerecovery.att"

    aput-object v9, v6, v8

    const/16 v8, 0x58

    const-string/jumbo v9, "com.telenav.app.android.cingular"

    aput-object v9, v6, v8

    const/16 v8, 0x59

    const-string v9, "com.drivemode"

    aput-object v9, v6, v8

    const/16 v8, 0x5a

    const-string v9, "com.locationlabs.sparkle.blue"

    aput-object v9, v6, v8

    const/16 v8, 0x5b

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x5c

    const-string v9, "com.mobitv.client.tv"

    aput-object v9, v6, v8

    const/16 v8, 0x5d

    const-string v9, "com.locationlabs.cni.att"

    aput-object v9, v6, v8

    const/16 v8, 0x5e

    const-string/jumbo v9, "com.yellowpages.android.ypmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x5f

    const-string/jumbo v9, "com.wavemarket.waplauncher"

    aput-object v9, v6, v8

    const/16 v8, 0x60

    const-string/jumbo v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x61

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x62

    const-string v9, "com.ampsvc.android"

    aput-object v9, v6, v8

    const/16 v8, 0x63

    const-string v9, "com.americanexpress.plenti"

    aput-object v9, v6, v8

    const/16 v8, 0x64

    const-string/jumbo v9, "com.synchronoss.dcs.att.r2g"

    aput-object v9, v6, v8

    const/16 v8, 0x65

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x66

    const-string v9, "com.amazon.kindle"

    aput-object v9, v6, v8

    const/16 v8, 0x67

    const-string v9, "com.matchboxmobile.wisp"

    aput-object v9, v6, v8

    const/16 v8, 0x68

    const-string v9, "com.quickmobile.att.experienceweekend2014"

    aput-object v9, v6, v8

    const/16 v8, 0x69

    const-string/jumbo v9, "com.themarketingarm.attexpressions"

    aput-object v9, v6, v8

    const/16 v8, 0x6a

    const-string/jumbo v9, "com.welldoc.diabetesmanager"

    aput-object v9, v6, v8

    const/16 v8, 0x6b

    const-string/jumbo v9, "com.xora.att"

    aput-object v9, v6, v8

    const/16 v8, 0x6c

    const-string/jumbo v9, "deezer.android.app"

    aput-object v9, v6, v8

    const/16 v8, 0x6d

    const-string v9, "com.quickplay.android.bellmediaplayer"

    aput-object v9, v6, v8

    const/16 v8, 0x6e

    const-string v9, "ca.bell.selfserve.mybellmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x6f

    const-string v9, "com.bell.ptt"

    aput-object v9, v6, v8

    const/16 v8, 0x70

    const-string v9, "ca.bell.wt.android.tunesappswidget"

    aput-object v9, v6, v8

    const/16 v8, 0x71

    const-string/jumbo v9, "com.suretap.suretap_wallet"

    aput-object v9, v6, v8

    const/16 v8, 0x72

    const-string v9, "com.fivemobile.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x73

    const-string v9, "com.rogers.npd.appzone"

    aput-object v9, v6, v8

    const/16 v8, 0x74

    const-string v9, "com.nhl.gc1112.free"

    aput-object v9, v6, v8

    const/16 v8, 0x75

    const-string v9, "com.rogers.citytv.phone"

    aput-object v9, v6, v8

    const/16 v8, 0x76

    const-string/jumbo v9, "com.telus.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x77

    const-string/jumbo v9, "com.telus.featuredapps"

    aput-object v9, v6, v8

    const/16 v8, 0x78

    const-string v9, "com.koodo.selfserve"

    aput-object v9, v6, v8

    const/16 v8, 0x79

    const-string v9, "com.android.settings"

    aput-object v9, v6, v8

    const/16 v8, 0x7a

    const-string/jumbo v9, "com.videotron.android.portail.launcher"

    aput-object v9, v6, v8

    const/16 v8, 0x7b

    const-string v9, "ca.windmobile.selfcare.prod"

    aput-object v9, v6, v8

    const/16 v8, 0x7c

    const-string v9, "com.pelmorex.WeatherEyeAndroid"

    aput-object v9, v6, v8

    const/16 v8, 0x7d

    const-string v9, "ca.bell.wt.android.mobilewallet"

    aput-object v9, v6, v8

    const/16 v8, 0x7e

    const-string v9, "ca.virginmobile.myaccount.virginmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x7f

    const-string v9, "com.atm.downloadandroid"

    aput-object v9, v6, v8

    const/16 v8, 0x80

    const-string v9, "com.fido.npd.appzone"

    aput-object v9, v6, v8

    const/16 v8, 0x81

    const-string v9, "com.fidosolutions.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x82

    const-string v9, "com.gameloft.microwidget"

    aput-object v9, v6, v8

    const/16 v8, 0x83

    const-string v9, "com.rogers.citytv.tablet"

    aput-object v9, v6, v8

    const/16 v8, 0x84

    const-string v9, "com.Rogers.MyRogersTab"

    aput-object v9, v6, v8

    const/16 v8, 0x85

    const-string v9, "com.Rogers.OnDemand"

    aput-object v9, v6, v8

    const/16 v8, 0x86

    const-string v9, "com.rogers.suretap_wallet"

    aput-object v9, v6, v8

    const/16 v8, 0x87

    const-string v9, "com.rogers.voip"

    aput-object v9, v6, v8

    const/16 v8, 0x88

    const-string/jumbo v9, "com.telenav.app.android.bell"

    aput-object v9, v6, v8

    const/16 v8, 0x89

    const-string v9, "com.communitake.remotecontrolservice"

    aput-object v9, v6, v8

    const/16 v8, 0x8a

    const-string v9, "com.gameloft.android.gdc"

    aput-object v9, v6, v8

    const/16 v8, 0x8b

    const-string v9, "com.nim.rogers"

    aput-object v9, v6, v8

    const/16 v8, 0x8c

    const-string/jumbo v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x8d

    const-string v9, "com.Fido.Ringtones"

    aput-object v9, v6, v8

    const/16 v8, 0x8e

    const-string v9, "com.Fido.Shop"

    aput-object v9, v6, v8

    const/16 v8, 0x8f

    const-string v9, "com.gameloft.android.Rogers.GloftPA13"

    aput-object v9, v6, v8

    const/16 v8, 0x90

    const-string v9, "com.quickplay.rodo"

    aput-object v9, v6, v8

    const/16 v8, 0x91

    const-string v9, "com.Rogers.OneNumber"

    aput-object v9, v6, v8

    const/16 v8, 0x92

    const-string v9, "com.Rogers.Ringtones"

    aput-object v9, v6, v8

    const/16 v8, 0x93

    const-string v9, "com.Rogers.Shop"

    aput-object v9, v6, v8

    const/16 v8, 0x94

    const-string/jumbo v9, "com.telenav.app.android.fido"

    aput-object v9, v6, v8

    const/16 v8, 0x95

    const-string/jumbo v9, "com.telenav.app.android.rogers"

    aput-object v9, v6, v8

    .line 1145
    .local v6, "mCarrierPackageWhitelist":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1146
    .local v2, "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1147
    const/4 v8, 0x1

    .line 1156
    .end local v2    # "compStr":Ljava/lang/String;
    :goto_1
    return v8

    .line 1145
    .restart local v2    # "compStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1150
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_3

    .line 1151
    aget-object v7, v6, v3

    .line 1152
    .local v7, "packagename":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1153
    const/4 v8, 0x1

    goto :goto_1

    .line 1150
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1156
    .end local v7    # "packagename":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 1160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x8080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1165
    .local v0, "Packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1166
    const/4 v2, 0x1

    .line 1168
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x0

    .line 891
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 911
    :goto_0
    return v5

    .line 896
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 899
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 901
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    .line 902
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 903
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 904
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 911
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1172
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 1174
    .local v0, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1175
    const/4 v1, 0x1

    .line 1177
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .locals 11

    .prologue
    .line 1643
    const/4 v6, 0x0

    .line 1644
    .local v6, "cursorPolicy":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1646
    .local v8, "isNeedUpdate":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1648
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1649
    const-string/jumbo v0, "policyName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1650
    .local v9, "policyName":Ljava/lang/String;
    const-string/jumbo v0, "policyVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1651
    .local v10, "policyVersion":Ljava/lang/String;
    const-string v0, "MARs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , policyVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mPreScpmVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/am/MARsDBManager;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v10, v2, v3}, Lcom/android/server/am/MARsDBManager;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1655
    iput-object v10, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    .line 1656
    const/4 v8, 0x1

    goto :goto_0

    .line 1658
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1661
    :cond_2
    iput-object v10, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    const/4 v8, 0x1

    goto :goto_0

    .line 1669
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v10    # "policyVersion":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 1670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1674
    :cond_4
    :goto_1
    return v8

    .line 1666
    :catch_0
    move-exception v7

    .line 1667
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "policy list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    if-eqz v6, :cond_4

    .line 1670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1669
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private isPreloadedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 954
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 955
    .local v1, "packagename":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    const/4 v2, 0x1

    .line 959
    .end local v1    # "packagename":Ljava/lang/String;
    :goto_1
    return v2

    .line 953
    .restart local v1    # "packagename":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "packagename":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isSCPMClientExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1627
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowIconPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 917
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 921
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 922
    const/4 v2, 0x1

    .line 924
    :cond_0
    return v2
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 933
    const-string/jumbo v3, "com.sec.enterprise.knox.express"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v1

    .line 937
    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    move v1, v2

    .line 938
    goto :goto_0

    .line 941
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 944
    .local v0, "match":I
    if-gez v0, :cond_0

    move v1, v2

    .line 948
    goto :goto_0
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 757
    .local v3, "startDepth":I
    const-string/jumbo v0, "favorite"

    .line 760
    .local v0, "CSC_TAG":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 761
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 762
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 774
    :cond_2
    return-void

    .line 764
    :cond_3
    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 767
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 770
    const/4 v5, 0x0

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "cscpkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateAutoRunTargetXmlToDB()V
    .locals 19

    .prologue
    .line 814
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v18, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const-string v17, "/data/system/.aasa/AutoRunTarget.xml"

    .line 816
    .local v17, "path":Ljava/lang/String;
    const-string v12, "PACKAGES"

    .line 818
    .local v12, "features":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 819
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-eqz v13, :cond_0

    .line 826
    const/4 v14, 0x0

    .line 828
    .local v14, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    .end local v14    # "fileReader":Ljava/io/FileReader;
    invoke-direct {v14, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    if-eqz v14, :cond_4

    .line 838
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 839
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 841
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .line 842
    .local v11, "eventType":I
    :goto_1
    const/4 v3, 0x1

    if-eq v11, v3, :cond_3

    .line 843
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 844
    .local v15, "name":Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 855
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v11

    .line 856
    goto :goto_1

    .line 830
    .end local v11    # "eventType":I
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 831
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "eventType":I
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    :try_start_2
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 847
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 849
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .local v2, "smdbValue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 859
    .end local v2    # "smdbValue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v11    # "eventType":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v10

    .line 861
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 865
    :goto_3
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 857
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "eventType":I
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 878
    .end local v11    # "eventType":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 880
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 881
    const-string v3, "MARsDBManager"

    const-string/jumbo v5, "updateAutoRunTargetXmlToDB!"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPolicyManager;->updateManagedPackages(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 868
    :catch_2
    move-exception v10

    .line 870
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 874
    :goto_4
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 863
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v3

    goto :goto_3

    .line 872
    .local v10, "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    goto :goto_4

    .line 844
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private updateCSCPackagesList()V
    .locals 12

    .prologue
    .line 777
    const-string v0, "/system/csc/default_application_order.xml"

    .line 778
    .local v0, "CSC_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 781
    .local v1, "cscFile":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 782
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v3, "cscFileChk":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 784
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .local v2, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 786
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 787
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 788
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 789
    if-eqz v6, :cond_0

    .line 790
    invoke-direct {p0, v6}, Lcom/android/server/am/MARsDBManager;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v1, v2

    .line 802
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :cond_1
    if-eqz v1, :cond_2

    .line 804
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 811
    .end local v3    # "cscFileChk":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 806
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 807
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 793
    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 794
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    const-string v7, "MARsDBManager"

    const-string v8, "XmlPullParserException in updateCSCPackagesList"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    if-eqz v1, :cond_2

    .line 804
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 806
    :catch_2
    move-exception v4

    .line 807
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 797
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 798
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v7, "MARsDBManager"

    const-string v8, "IOException in updateCSCPackagesList"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 802
    if-eqz v1, :cond_2

    .line 804
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 806
    :catch_4
    move-exception v4

    .line 807
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 802
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_3

    .line 804
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 808
    :cond_3
    :goto_4
    throw v7

    .line 806
    :catch_5
    move-exception v4

    .line 807
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 802
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_3

    .line 797
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_2

    .line 793
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;
    .param p8, "resetTime"    # Ljava/lang/String;
    .param p9, "notifiedCount"    # Ljava/lang/String;
    .param p10, "readCount"    # Ljava/lang/String;
    .param p11, "packageType"    # Ljava/lang/String;
    .param p12, "autoRun"    # Ljava/lang/String;
    .param p13, "isAppOptTarget"    # Ljava/lang/String;

    .prologue
    .line 1589
    const/4 v2, 0x0

    .line 1591
    .local v2, "nRet":I
    if-nez p1, :cond_0

    .line 1592
    const-string v7, "MARsDBManager"

    const-string/jumbo v8, "parameter is error!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1598
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v7, "isDefaultFreezed"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v7, "isSMFreezed"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_3
    if-eqz p4, :cond_4

    const-string/jumbo v7, "isUserForceStopped"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_4
    if-eqz p5, :cond_5

    const-string/jumbo v7, "lastUsedTime"

    invoke-virtual {v6, v7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_5
    if-eqz p6, :cond_6

    const-string/jumbo v7, "versionMgmt"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_6
    if-eqz p7, :cond_7

    const-string/jumbo v7, "extras"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_7
    if-eqz p8, :cond_8

    const-string/jumbo v7, "resetTime"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :cond_8
    if-eqz p9, :cond_9

    const-string/jumbo v7, "notifiedCount"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_9
    if-eqz p10, :cond_a

    const-string/jumbo v7, "readCount"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_a
    if-eqz p11, :cond_b

    const-string/jumbo v7, "packageType"

    move-object/from16 v0, p11

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_b
    if-eqz p12, :cond_c

    const-string v7, "autoRun"

    move-object/from16 v0, p12

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_c
    if-eqz p13, :cond_d

    const-string/jumbo v7, "isAppOptTarget"

    move-object/from16 v0, p13

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_d
    const-string/jumbo v3, "package_name=?"

    .line 1615
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 1618
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "MARs-self"

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1619
    .local v5, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1624
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MARsDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception with update() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDBAll(ILjava/util/ArrayList;)V
    .locals 19
    .param p1, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1444
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :try_start_0
    const-string v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDBAll : begin --size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 1446
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1447
    .local v16, "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 1448
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1449
    .local v10, "resetTime":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 1450
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1452
    :cond_0
    const/4 v9, 0x0

    .line 1453
    .local v9, "extras":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 1454
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1456
    :cond_1
    const/4 v13, 0x0

    .line 1457
    .local v13, "packageType":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 1458
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1460
    :cond_2
    const/4 v14, 0x0

    .line 1461
    .local v14, "autoRun":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 1462
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1465
    :cond_3
    if-eqz v3, :cond_4

    .line 1466
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/MARsDBManager;->updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1472
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v9    # "extras":Ljava/lang/String;
    .end local v10    # "resetTime":Ljava/lang/String;
    .end local v13    # "packageType":Ljava/lang/String;
    .end local v14    # "autoRun":Ljava/lang/String;
    .end local v16    # "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_5
    const-string v2, "MARsDBManager"

    const-string/jumbo v4, "updateDBAll : end"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    .end local v18    # "i":I
    :goto_1
    return-void

    .line 1473
    :catch_0
    move-exception v17

    .line 1474
    .local v17, "e":Ljava/lang/Exception;
    const-string v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateDBForApp(ZLjava/util/ArrayList;Z)V
    .locals 31
    .param p1, "generate"    # Z
    .param p3, "onUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1318
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_0

    .line 1319
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDBForApp, --- generate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --onUpgrade = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1324
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const/16 v12, 0x100f

    .line 1327
    .local v12, "flags":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 1329
    .local v16, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1333
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsDBManager;->updateCSCPackagesList()V

    .line 1342
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1343
    if-eqz p3, :cond_5

    .line 1344
    const/4 v10, 0x0

    .line 1345
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "package_name"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1348
    if-eqz v10, :cond_5

    .line 1349
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1350
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1351
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1353
    .local v18, "packageName":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 1354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v18    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1434
    .local v11, "e":Ljava/lang/Exception;
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on handling DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1437
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void

    .line 1358
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1362
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v30

    .line 1363
    .local v30, "valuesSize":I
    if-eqz p3, :cond_6

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int v30, v30, v4

    .line 1367
    :cond_6
    const/16 v25, 0x64

    .line 1368
    .local v25, "splitSize":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v29, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v14, 0x0

    .line 1370
    .local v14, "index":I
    const/16 v24, 0x0

    .line 1373
    .local v24, "split":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_d

    .line 1374
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    .line 1375
    .local v20, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1376
    .local v22, "pkgname":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1378
    .local v19, "packageType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v19

    .line 1381
    if-eqz p3, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1373
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1387
    :cond_8
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1388
    .local v28, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "package_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v4, "isSMFreezed"

    const-string v5, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string/jumbo v4, "packageType"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    if-nez v14, :cond_9

    .line 1393
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v26, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    .end local v26    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_9
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 1398
    .local v27, "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v27, :cond_c

    .line 1399
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    add-int/lit8 v14, v14, 0x1

    .line 1408
    move/from16 v0, v25

    if-eq v14, v0, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v13, v4, :cond_b

    .line 1409
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    new-array v15, v4, [Landroid/content/ContentValues;

    .line 1410
    .local v15, "insertValues":[Landroid/content/ContentValues;
    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v15}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1415
    move/from16 v0, v25

    if-ne v14, v0, :cond_b

    .line 1416
    add-int/lit8 v24, v24, 0x1

    .line 1417
    const/4 v14, 0x0

    .line 1421
    .end local v15    # "insertValues":[Landroid/content/ContentValues;
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_7

    .line 1422
    new-instance v21, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 1423
    .local v21, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1402
    .end local v21    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_c
    const-string v4, "MARsDBManager"

    const-string v5, "Unfortunately error !!!! "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1428
    .end local v19    # "packageType":I
    .end local v20    # "pi":Landroid/content/pm/PackageInfo;
    .end local v22    # "pkgname":Ljava/lang/String;
    .end local v27    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_d
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1431
    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const-wide/32 v6, 0xea60

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .locals 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "columns"    # I
    .param p3, "value"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 1483
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    const/4 v9, 0x0

    .line 1489
    .local v9, "resetTime":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1490
    :try_start_0
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1492
    :cond_2
    const/4 v8, 0x0

    .line 1493
    .local v8, "extras":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    .line 1494
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1496
    :cond_3
    const/4 v12, 0x0

    .line 1497
    .local v12, "packageType":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    .line 1498
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1500
    :cond_4
    const/4 v13, 0x0

    .line 1501
    .local v13, "autoRun":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    .line 1502
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1505
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/MARsDBManager;->updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1508
    .end local v8    # "extras":Ljava/lang/String;
    .end local v12    # "packageType":Ljava/lang/String;
    .end local v13    # "autoRun":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1509
    .local v15, "e":Ljava/lang/Exception;
    const-string v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkSCPMParametersFromDB()V
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 548
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method

.method public deletePackageInDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 529
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 533
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void
.end method

.method public initManagedPackages()V
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public initSKTPackagesWhiteList()V
    .locals 6

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    .line 456
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 458
    return-void
.end method

.method public initSettingFromUI()V
    .locals 6

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 438
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    .line 441
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 444
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public insertPackageToDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 516
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    return-void
.end method

.method public requestFillInDB(Z)V
    .locals 4
    .param p1, "onUpgrade"    # Z

    .prologue
    const/4 v3, 0x7

    .line 465
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 466
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 468
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 470
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 472
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    .line 409
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    .line 410
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 420
    :cond_2
    return-void
.end method

.method public updateAutoRun()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 540
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 541
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    return-void
.end method

.method public updateResetTime(Ljava/util/ArrayList;)V
    .locals 3
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
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/4 v2, 0x3

    .line 497
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 498
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 504
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method

.method public updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 484
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 487
    const-string/jumbo v2, "strExtras"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    return-void
.end method
