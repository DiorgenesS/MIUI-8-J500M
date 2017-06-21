.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_ACTION_START_CLOCK:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEBUG:Z

.field private static final MIN_UPDATE_PERIOD:I

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "cocktails.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WAKELOCK_TIMEOUT:J

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

.field private final mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCocktailPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

.field private mInitialzed:Z

.field private mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private mLocale:Ljava/util/Locale;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mNextCocktailId:I

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesCocktails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field private mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

.field private mStateLoaded:Z

.field private mTickerDisableflags:I

.field private final mUserId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    .line 123
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    const v1, 0x1b7740

    :cond_0
    sput v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "policyManager"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 142
    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 143
    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    .line 144
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    .line 146
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    .line 924
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    .line 151
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 152
    iput p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 153
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 154
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 156
    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 157
    iput-object p4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 158
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 160
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 162
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemReady()V

    .line 173
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    return v0
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "categoryIds"    # I
    .param p3, "version"    # I

    .prologue
    const/4 v3, 0x0

    .line 586
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 630
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 592
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 593
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 594
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 595
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v3

    .line 597
    goto :goto_0

    .line 600
    :cond_4
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 601
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : even if the package is disable in emergency mode, allow creating cocktail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .local v2, "provider":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v1

    .line 614
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_8

    .line 615
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProviderLocked : already existed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 616
    goto/16 :goto_0

    .line 605
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "provider":Landroid/content/ComponentName;
    :cond_6
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 606
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 607
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "addProviderLocked : disable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v3

    .line 609
    goto/16 :goto_0

    .line 618
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "provider":Landroid/content/ComponentName;
    :cond_8
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 619
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_a

    .line 620
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->setVersion(I)V

    .line 621
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 622
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 624
    :cond_9
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 626
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "addProviderLocked : success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    .line 630
    goto/16 :goto_0
.end method

.method private addProvidersForPackageLocked(Ljava/lang/String;I)Z
    .locals 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 698
    sget-boolean v12, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 699
    sget-object v12, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addProvidersForPackageLocked : pkgName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    const/4 v9, 0x0

    .line 702
    .local v9, "providersAdded":Z
    const/4 v11, 0x0

    .line 703
    .local v11, "toolsAdded":Z
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v8

    .line 704
    .local v8, "intentName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    iget v12, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {p0, v7, v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 707
    .local v3, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 708
    .local v1, "N":I
    :goto_0
    iget-object v12, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v12}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v5

    .line 709
    .local v5, "categoryIds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 710
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 712
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 709
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 707
    .end local v1    # "N":I
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "categoryIds":I
    .end local v6    # "i":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 715
    .restart local v1    # "N":I
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "categoryIds":I
    .restart local v6    # "i":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 716
    move/from16 v0, p2

    invoke-direct {p0, v10, v5, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v4

    .line 717
    .local v4, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v4, :cond_1

    .line 718
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v12

    iget v12, v12, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 719
    const/4 v11, 0x1

    .line 721
    :cond_4
    const/4 v12, 0x0

    invoke-direct {p0, v4, v8, v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 722
    const/4 v9, 0x1

    goto :goto_2

    .line 726
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-eqz v9, :cond_6

    .line 727
    if-eqz v11, :cond_6

    .line 728
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 731
    :cond_6
    return v9
.end method

.method private cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1279
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1280
    .local v0, "broadcast":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1284
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1288
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1290
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1286
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method private checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "category"    # I

    .prologue
    .line 267
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 268
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1891
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1892
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1893
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 1894
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1895
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1899
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1900
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1901
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1905
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1842
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V

    .line 1862
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1866
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1868
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1873
    return-void

    .line 1871
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2217
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 2218
    .local v0, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2220
    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2221
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2223
    const-string v1, " (label="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2225
    const-string v1, ") (description="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2227
    const-string v1, ") (icon="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2229
    const-string v1, ") (previewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2231
    const-string v1, ") (updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2233
    const-string v1, ") (category="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2235
    const-string v1, ") (permitVisibilityChanged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2237
    const-string v1, ") (configure="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2239
    const-string v1, ") (privateMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    const-string v1, ") (cscPreviewImage="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2242
    iget-boolean v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2243
    const-string v1, " (uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2245
    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .locals 5

    .prologue
    .line 537
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    if-nez v1, :cond_1

    .line 538
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 539
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 540
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadCocktailListLocked(I)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadStateLocked()V

    .line 543
    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;-><init>(Landroid/content/Context;Landroid/util/SparseArray;I)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    .line 546
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 485
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 487
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 488
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    return-object v2
.end method

.method private findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "privateMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v2, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 497
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 498
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 499
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    .line 500
    .local v4, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    return-object v2
.end method

.method private getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I
    .locals 3
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1575
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1576
    .local v0, "cocktailIds":[I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    aput v2, v0, v1

    .line 1577
    return-object v0
.end method

.method private getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1693
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1696
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_0
    return-object v0

    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1080
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktails.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1640
    const/4 v0, 0x0

    .line 1642
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1646
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1647
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1649
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1643
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 1877
    const/4 v0, 0x0

    .line 1878
    .local v0, "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 1884
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1885
    return-void

    .line 1881
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1882
    .restart local v0    # "cocktailIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static isLocalBinder()Z
    .locals 2

    .prologue
    .line 2081
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCocktailListLocked(I)V
    .locals 7
    .param p1, "version"    # I

    .prologue
    .line 575
    new-instance v4, Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v4, "intent":Landroid/content/Intent;
    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {p0, v4, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 577
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 578
    .local v0, "N":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v2

    .line 579
    .local v2, "categoryIds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 580
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 581
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 577
    .end local v0    # "N":I
    .end local v2    # "categoryIds":I
    .end local v3    # "i":I
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 583
    .restart local v0    # "N":I
    .restart local v2    # "categoryIds":I
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method

.method private loadStateLocked()V
    .locals 7

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 902
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 904
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 905
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    if-eqz v2, :cond_0

    .line 911
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    const/4 v2, 0x0

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 906
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 907
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 909
    if-eqz v2, :cond_0

    .line 911
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 912
    const/4 v2, 0x0

    goto :goto_0

    .line 913
    :catch_2
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 911
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 912
    const/4 v2, 0x0

    .line 915
    :cond_1
    :goto_1
    throw v3

    .line 913
    :catch_3
    move-exception v0

    .line 914
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 894
    .local v0, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    .end local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 882
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 883
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 884
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 885
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 889
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1
    return-object v1

    .line 883
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 11
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "viewId"    # I

    .prologue
    .line 1430
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 1432
    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v8, v8, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    iget v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v8, v9, p2, v10}, Lcom/samsung/android/cocktailbar/ICocktailHost;->viewDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-nez v8, :cond_2

    .line 1437
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1438
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$FilterComparison;

    .line 1439
    .local v3, "key":Landroid/content/Intent$FilterComparison;
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1440
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1442
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 1462
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1464
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1466
    .local v6, "token":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v0, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1474
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Landroid/content/Intent$FilterComparison;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :cond_2
    return-void

    .line 1433
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z
    .locals 12
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "categoryIds"    # I
    .param p5, "version"    # I

    .prologue
    .line 651
    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 652
    .local v6, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 653
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x0

    .line 655
    .local v10, "res":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.cocktail.provider"

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 656
    if-nez v3, :cond_1

    .line 657
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    const/4 v0, 0x0

    .line 690
    if-eqz v3, :cond_0

    .line 691
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_2

    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    .line 665
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 666
    .local v9, "nodeName":Ljava/lang/String;
    const-string v0, "cocktail-provider"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with cocktail-provider tag for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    const/4 v0, 0x0

    .line 690
    if-eqz v3, :cond_0

    .line 691
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 671
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object v1, p3

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v8

    .line 672
    .local v8, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v8, :cond_6

    .line 673
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v8, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    invoke-virtual {p1, v8}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 675
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    const/4 v10, 0x1

    .line 690
    :goto_1
    if-eqz v3, :cond_4

    .line 691
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    move v0, v10

    .line 694
    goto :goto_0

    .line 678
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 681
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 683
    .end local v8    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v7

    .line 687
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML parsing failed for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    const/4 v0, 0x0

    .line 690
    if-eqz v3, :cond_0

    .line 691
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 690
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    .line 691
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v0
.end method

.method private parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "categoryIds"    # I
    .param p4, "version"    # I

    .prologue
    .line 635
    new-instance v1, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 636
    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailAffinity:I

    if-lez v0, :cond_0

    .line 638
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAffinityLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 646
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    :goto_0
    return-object v1

    .line 645
    .restart local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 646
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x280

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    .line 867
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 870
    :catch_0
    move-exception v2

    .line 871
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 27
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 980
    const/16 v19, 0x0

    .line 981
    .local v19, "success":Z
    const/16 v22, 0x0

    .line 983
    .local v22, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 984
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 986
    const/16 v17, 0x0

    .line 987
    .local v17, "providerIndex":I
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 989
    .local v11, "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    :cond_0
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 990
    .local v21, "type":I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 991
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 992
    .local v20, "tag":Ljava/lang/String;
    const-string/jumbo v23, "gs"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 993
    const/16 v23, 0x0

    const-string/jumbo v24, "version"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1f
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-result-object v3

    .line 995
    .local v3, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1f
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result v22

    .line 1031
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v20    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1032
    const/16 v19, 0x1

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .local v9, "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2f
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .local v18, "str":Ljava/lang/String;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .local v12, "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    goto :goto_1

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1064
    const/4 v4, 0x0

    .line 1073
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    :cond_2
    :goto_3
    if-nez v19, :cond_3

    .line 1074
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v24, "Failed to read state, clearing cocktail."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 1077
    :cond_3
    return-void

    .line 996
    .restart local v3    # "attributeValue":Ljava/lang/String;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_1
    move-exception v8

    .line 997
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v22, 0x0

    goto :goto_0

    .line 999
    .end local v3    # "attributeValue":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_6
    const-string/jumbo v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1000
    const/16 v23, 0x0

    const-string/jumbo v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1001
    .local v15, "pkg":Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, "cl":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-result-object v13

    .line 1004
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_7
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1f
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1012
    :goto_4
    :try_start_8
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    .line 1014
    .local v6, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v23

    const-string v24, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1025
    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    .line 1026
    move/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1028
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :catch_2
    move-exception v8

    .line 1006
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1010
    .local v16, "pkgs":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v15, v16, v23

    goto :goto_4

    .line 1016
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "pkgs":[Ljava/lang/String;
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_7
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1017
    new-instance v6, Lcom/samsung/android/cocktailbar/Cocktail;

    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    move/from16 v0, v23

    invoke-direct {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 1018
    .restart local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-direct {v10}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>()V

    .line 1019
    .local v10, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v10, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1020
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V

    .line 1021
    invoke-virtual {v6, v10}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_5

    .line 1033
    .end local v6    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v7    # "cl":Ljava/lang/String;
    .end local v10    # "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "providerIndex":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_3
    move-exception v8

    .line 1034
    .local v8, "e":Ljava/lang/NullPointerException;
    :try_start_9
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    goto :goto_6

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_4
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_7
    :try_start_c
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_8
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_5
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_6
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 1062
    :goto_8
    if-eqz v4, :cond_9

    .line 1063
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_9
    :goto_9
    throw v23

    .line 1066
    :catch_7
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "providerIndex":I
    .end local v21    # "type":I
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_a
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_8
    move-exception v8

    .line 1067
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_9
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v23

    .line 1062
    :goto_a
    if-eqz v4, :cond_b

    .line 1063
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_b
    :goto_b
    throw v23

    .line 1066
    :catch_a
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1035
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 1036
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_14
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2d
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_16
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    goto :goto_c

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_c
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_d
    :try_start_17
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_c
    :try_start_19
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_d
    move-exception v8

    .line 1067
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_e
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v23

    .line 1062
    :goto_e
    if-eqz v4, :cond_d

    .line 1063
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_d
    :goto_f
    throw v23

    .line 1066
    :catch_f
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1037
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v8

    .line 1038
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1c
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_1e
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    goto :goto_10

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_11
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_11
    :try_start_1f
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_13

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_e
    :try_start_21
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_22
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_12

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_12
    move-exception v8

    .line 1067
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_13
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v23

    .line 1062
    :goto_12
    if-eqz v4, :cond_f

    .line 1063
    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_14

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_f
    :goto_13
    throw v23

    .line 1066
    :catch_14
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1039
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v8

    .line 1040
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_24
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2b
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_26
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_16
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    goto :goto_14

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_16
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_15
    :try_start_27
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_18

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_10
    :try_start_29
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_16
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_17

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_17
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_18
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    :catchall_4
    move-exception v23

    .line 1062
    :goto_16
    if-eqz v4, :cond_11

    .line 1063
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_19

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_11
    :goto_17
    throw v23

    .line 1066
    :catch_19
    move-exception v8

    .line 1067
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1041
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v8

    .line 1042
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_2c
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_2a
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_2e
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_1b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    goto :goto_18

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_1b
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_19
    :try_start_2f
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1d

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_12
    :try_start_31
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1b
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_1c

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_1c
    move-exception v8

    .line 1067
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_1d
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v23

    .line 1062
    :goto_1a
    if-eqz v4, :cond_13

    .line 1063
    :try_start_33
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1e

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_13
    :goto_1b
    throw v23

    .line 1066
    :catch_1e
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1043
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v8

    .line 1044
    .local v8, "e":Ljava/lang/Exception;
    :try_start_34
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    .line 1046
    if-nez v19, :cond_2

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_35
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_29
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_36
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_1c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_14

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_20
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    goto :goto_1c

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_20
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    :goto_1d
    :try_start_37
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_6

    .line 1062
    if-eqz v4, :cond_2

    .line 1063
    :try_start_38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_22

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1056
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_14
    :try_start_39
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_20
    .catchall {:try_start_39 .. :try_end_39} :catchall_a

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    .line 1063
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_21

    .line 1064
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1066
    :catch_21
    move-exception v8

    .line 1067
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_22
    move-exception v8

    .line 1067
    sget-object v23, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "failed to close stream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v23

    .line 1062
    :goto_1e
    if-eqz v4, :cond_15

    .line 1063
    :try_start_3b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_23

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_15
    :goto_1f
    throw v23

    .line 1066
    :catch_23
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1046
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v23

    if-nez v19, :cond_16

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :try_start_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v9

    .line 1050
    .restart local v9    # "file":Landroid/util/AtomicFile;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_28
    .catchall {:try_start_3c .. :try_end_3c} :catchall_8

    .line 1051
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 1052
    .restart local v18    # "str":Ljava/lang/String;
    :try_start_3d
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :goto_20
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_17

    .line 1054
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_24
    .catchall {:try_start_3d .. :try_end_3d} :catchall_9

    goto :goto_20

    .line 1058
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    :catch_24
    move-exception v8

    move-object v4, v5

    .line 1059
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_21
    :try_start_3e
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_8

    .line 1062
    if-eqz v4, :cond_16

    .line 1063
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_26

    .line 1064
    const/4 v4, 0x0

    .line 1070
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_16
    :goto_22
    throw v23

    .line 1056
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .restart local v18    # "str":Ljava/lang/String;
    :cond_17
    :try_start_40
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_24
    .catchall {:try_start_40 .. :try_end_40} :catchall_9

    .line 1057
    const/4 v4, 0x0

    .line 1062
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    if-eqz v4, :cond_16

    .line 1063
    :try_start_41
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_25

    .line 1064
    const/4 v4, 0x0

    goto :goto_22

    .line 1066
    :catch_25
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1066
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "msgBuffer":Ljava/lang/StringBuffer;
    .end local v18    # "str":Ljava/lang/String;
    :catch_26
    move-exception v8

    .line 1067
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v23

    .line 1062
    :goto_23
    if-eqz v4, :cond_18

    .line 1063
    :try_start_42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_27

    .line 1064
    const/4 v4, 0x0

    .line 1068
    :cond_18
    :goto_24
    throw v23

    .line 1066
    :catch_27
    move-exception v8

    .line 1067
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v24, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "failed to close stream "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_9
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_23

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_28
    move-exception v8

    goto/16 :goto_21

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_a
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1e

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_29
    move-exception v8

    goto/16 :goto_1d

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_b
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1a

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2a
    move-exception v8

    goto/16 :goto_19

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_c
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_16

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2b
    move-exception v8

    goto/16 :goto_15

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_d
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_12

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2c
    move-exception v8

    goto/16 :goto_11

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_e
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2d
    move-exception v8

    goto/16 :goto_d

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v18    # "str":Ljava/lang/String;
    :catchall_f
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2e
    move-exception v8

    goto/16 :goto_7

    .line 1061
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v11    # "loadedCocktails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "providerIndex":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v21    # "type":I
    :catchall_10
    move-exception v23

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 1058
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v18    # "str":Ljava/lang/String;
    :catch_2f
    move-exception v8

    goto/16 :goto_2
.end method

.method private registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 14
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1247
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1248
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerForBroadcastsLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v9

    .line 1251
    .local v9, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v9, :cond_2

    iget v2, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    if-lez v2, :cond_2

    .line 1252
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v6

    .line 1253
    .local v6, "broadcast":Landroid/app/PendingIntent;
    if-eqz v6, :cond_3

    move v7, v0

    .line 1254
    .local v7, "alreadyRegistered":Z
    :goto_0
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v10, "intent":Landroid/content/Intent;
    new-array v8, v0, [I

    .line 1256
    .local v8, "cocktailIds":[I
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    aput v0, v8, v1

    .line 1257
    const-string v0, "cocktailIds"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1258
    iget-object v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1261
    .local v12, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v10, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1264
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1266
    if-nez v7, :cond_2

    .line 1267
    invoke-virtual {p1, v6}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1268
    iget v0, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1269
    .local v4, "period":J
    sget v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 1270
    sget v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v4, v0

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1276
    .end local v4    # "period":J
    .end local v6    # "broadcast":Landroid/app/PendingIntent;
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "cocktailIds":[I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "token":J
    :cond_2
    return-void

    .restart local v6    # "broadcast":Landroid/app/PendingIntent;
    :cond_3
    move v7, v1

    .line 1253
    goto :goto_0

    .line 1264
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "cocktailIds":[I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeAllUpdatedCocktailsLocked()V
    .locals 6

    .prologue
    .line 514
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 515
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 516
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 517
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 515
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    return-void
.end method

.method private removeCocktailInHostLocked(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1632
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->removeCocktail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method private removeCocktailLocked(I)V
    .locals 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 1617
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1618
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1621
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1624
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1625
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 1627
    :cond_1
    return-void
.end method

.method private removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1606
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1607
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1611
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1612
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 1613
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1614
    return-void
.end method

.method private removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 840
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 841
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 845
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 852
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 812
    sget-boolean v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 813
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeProvidersForPackageLocked : pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    const/4 v4, 0x0

    .line 816
    .local v4, "providersRemoved":Z
    const/4 v5, 0x0

    .line 817
    .local v5, "toolsUpdated":Z
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 818
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 819
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 820
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 821
    invoke-direct {p0, v2, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    .line 822
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 823
    const/4 v5, 0x1

    .line 818
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 827
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    if-eqz v4, :cond_4

    .line 828
    if-eqz v5, :cond_3

    .line 829
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 831
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    const-string v6, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 836
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    return v4
.end method

.method private removeUpdatedCocktailsExceptContextual()V
    .locals 7

    .prologue
    .line 524
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 525
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 526
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 527
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 528
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    monitor-exit v4

    .line 534
    return-void

    .line 533
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    .line 373
    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 375
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_0

    .line 376
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_0

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 389
    const/4 v1, 0x1

    .line 391
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    :goto_0
    return v1

    .line 380
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x1

    .line 353
    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 355
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_0

    .line 356
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v2, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 369
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :goto_1
    return v1

    .line 360
    .restart local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_0

    .line 369
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private resetLoadedDataLocked()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 551
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 552
    return-void
.end method

.method private saveStateAsync()V
    .locals 2

    .prologue
    .line 921
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 922
    return-void
.end method

.method private saveStateLocked()V
    .locals 6

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 938
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 939
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 948
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 942
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 943
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    .line 1084
    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1085
    .local v0, "dir":Ljava/io/File;
    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1086
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-nez v3, :cond_1

    .line 1087
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1090
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/cocktails.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1093
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "visibility"    # I

    .prologue
    .line 1213
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1214
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendCocktailChangedVisibilityIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1218
    const-string v1, "cocktailVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1220
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1221
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1222
    return-void
.end method

.method private sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 7
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1188
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1189
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisableIntentLocked : cocktailId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1192
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1195
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1196
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1198
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1199
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1200
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1202
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v4, v2}, Lcom/android/server/DeviceIdleController$LocalService;->removePowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V

    .line 1210
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 1207
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1225
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1226
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDragEventLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1230
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1231
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1232
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1233
    return-void
.end method

.method private sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "forcely"    # Z

    .prologue
    .line 1128
    if-eqz p1, :cond_0

    .line 1129
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1130
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEnableAndUpdateBroadcastLocked : cocktail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1135
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 8
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v7, 0x1

    .line 1141
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1142
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnableIntentLocked : cocktailId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1145
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnableIntentLocked : cocktail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1149
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1151
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1152
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1153
    invoke-virtual {p1, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1155
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1156
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1157
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1158
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v4, v2}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveWhitelistExceptIdle(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1163
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendInitialBroadcasts()V
    .locals 2

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1115
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    .line 1116
    monitor-exit v1

    .line 1117
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendInitialBroadcastsLocked()V
    .locals 5

    .prologue
    .line 1120
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1121
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1122
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1123
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_0

    .line 1125
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_0
    return-void
.end method

.method private sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1236
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1237
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpdateFeedsBroadcastLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cocktailId"

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1241
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1243
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1244
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "c"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "intentName"    # Ljava/lang/String;
    .param p3, "forcely"    # Z

    .prologue
    .line 1168
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1169
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    :cond_2
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1174
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendUpdateIntentLocked : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1178
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1179
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    aput v3, v0, v2

    .line 1180
    const-string v2, "cocktailIds"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1182
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1183
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    goto :goto_0
.end method

.method private setModeLocked(ILjava/lang/String;I)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    packed-switch p1, :pswitch_data_0

    .line 423
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    .line 433
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 435
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 436
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_0

    .line 419
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 420
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    .line 440
    :cond_1
    return-void

    .line 426
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 428
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 429
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private systemReady()V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unbindCocktailRemoteViewsServicesLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 1822
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    .line 1824
    .local v0, "cocktailId":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1826
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1827
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1828
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 1829
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1831
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1832
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1833
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1836
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1837
    return-void
.end method

.method private unlinkHost()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 201
    :cond_0
    return-void
.end method

.method private unsetModeLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 454
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 455
    .local v1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 456
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 459
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateCocktailAttribute()V
    .locals 7

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 249
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 251
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLoced(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 252
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 253
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 249
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_1

    .line 263
    .end local v0    # "N":I
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    return-void
.end method

.method private updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "lastEnabled"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 273
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "newEnabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    move-object p1, v0

    .line 276
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFromSettingsLocked()V

    .line 278
    :cond_0
    monitor-exit v2

    .line 279
    return-object p1

    .line 278
    .end local v0    # "newEnabled":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1486
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1487
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeedsLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->updateFeeds(ILjava/util/List;)V

    .line 1494
    :goto_0
    return-void

    .line 1492
    :cond_1
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeedsLocked : reject"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFromSettingsLocked()V
    .locals 6

    .prologue
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v4, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 287
    .local v3, "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 288
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_0

    .line 292
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 293
    .restart local v3    # "id":I
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 294
    .restart local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_2

    .line 295
    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_1

    .line 298
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "id":I
    :cond_3
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .locals 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 735
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 736
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateProvidersForPackageLocked : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    const/4 v15, 0x0

    .line 739
    .local v15, "providersUpdated":Z
    const/16 v16, 0x0

    .line 740
    .local v16, "toolsUpdated":Z
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 741
    .local v14, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v13

    .line 742
    .local v13, "intentName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 745
    .local v10, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v10, :cond_2

    const/4 v8, 0x0

    .line 746
    .local v8, "N":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v6

    .line 747
    .local v6, "categoryIds":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_9

    .line 748
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 749
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 750
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v2, v7

    if-eqz v2, :cond_3

    .line 747
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 745
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "categoryIds":I
    .end local v8    # "N":I
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "i":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 753
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "categoryIds":I
    .restart local v8    # "N":I
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    :cond_3
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v4, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    .line 756
    .local v3, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v3, :cond_6

    .line 757
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 758
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    .line 760
    const/16 v16, 0x1

    .line 762
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 763
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 767
    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    .line 765
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    goto :goto_3

    .line 769
    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    move-object/from16 v2, p0

    move/from16 v7, p2

    .line 770
    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 771
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_8

    .line 773
    const/16 v16, 0x1

    .line 777
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    .line 778
    const/4 v15, 0x1

    goto :goto_2

    .line 774
    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v7, 0x200

    if-ne v2, v7, :cond_7

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v7, 0x6

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    goto :goto_4

    .line 783
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 784
    add-int/lit8 v11, v8, -0x1

    :goto_5
    if-ltz v11, :cond_d

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 786
    .restart local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 788
    if-eqz p3, :cond_a

    .line 789
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_a
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_b

    .line 792
    const/16 v16, 0x1

    .line 794
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v15

    .line 784
    :cond_c
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 797
    .end local v3    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_d
    if-eqz v15, :cond_f

    .line 798
    if-eqz v16, :cond_e

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 801
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 808
    .end local v15    # "providersUpdated":Z
    :cond_f
    :goto_6
    return v15

    .line 803
    .restart local v15    # "providersUpdated":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 804
    const/4 v15, 0x0

    goto :goto_6
.end method

.method private updateToolLauncher()V
    .locals 3

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateToolLauncher(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 10
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 954
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 955
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 956
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 957
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 959
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 960
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 961
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    .line 962
    .local v5, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v5, :cond_0

    .line 963
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    const/4 v7, 0x0

    const-string/jumbo v8, "pkg"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    const/4 v7, 0x0

    const-string v8, "cl"

    iget-object v9, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 966
    const/4 v7, 0x0

    const-string/jumbo v8, "p"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 959
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v5    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :cond_1
    const/4 v7, 0x0

    const-string/jumbo v8, "gs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return v6

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callbacks"    # Landroid/os/IBinder;

    .prologue
    .line 1735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1736
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1737
    invoke-direct/range {p0 .. p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1738
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v2, :cond_0

    .line 1739
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad cocktailId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1786
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1741
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1743
    .local v3, "componentName":Landroid/content/ComponentName;
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v3, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 1745
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1746
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1749
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v6

    .line 1750
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1758
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    .line 1759
    .local v4, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1760
    .local v7, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1761
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1763
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v5, v4

    .line 1768
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .local v5, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1769
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_3

    .line 1770
    sget-object v13, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CocktailServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 1778
    .local v10, "token":J
    :try_start_4
    new-instance v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v4, v8, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1779
    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v4, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 1781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1783
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 1786
    monitor-exit v14

    .line 1787
    return-void

    .line 1783
    .end local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v13

    goto :goto_0
.end method

.method public changeVisibleEdgeService(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->changeVisibleEdgeService(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "category"    # I

    .prologue
    .line 1395
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1396
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCocktail : cocktailId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1399
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1400
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1401
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    .line 1402
    .local v2, "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v2, :cond_1

    .line 1403
    invoke-virtual {v2, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->setCategory(I)V

    .line 1404
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1405
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1407
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, v5}, Lcom/samsung/android/cocktailbar/ICocktailHost;->closeContextualCocktail(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1417
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1418
    return-void

    .line 1408
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1417
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1413
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "info":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_2
    :try_start_3
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeCocktail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reject"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public deleteHostAndDisableAllCocktails()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkHost()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 194
    return-void
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1497
    if-nez p1, :cond_0

    .line 1498
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid provider"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1500
    :cond_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1501
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    .line 1502
    .local v2, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v2, :cond_4

    .line 1503
    const/4 v6, 0x0

    .line 1504
    .local v6, "include":Z
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v7}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 1505
    .local v3, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v4, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1507
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 1508
    iget-object v9, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1509
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_1

    .line 1510
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v9

    if-ne v7, v9, :cond_2

    .line 1511
    const/4 v6, 0x1

    .line 1507
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1514
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1527
    .end local v0    # "N":I
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1517
    .restart local v0    # "N":I
    .restart local v2    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "include":Z
    :cond_3
    if-eqz v6, :cond_4

    .line 1518
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1519
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;

    invoke-direct {v9, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    .end local v0    # "N":I
    .end local v3    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "include":Z
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    return-void
.end method

.method public disableUser(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 470
    sparse-switch p1, :sswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 472
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->resetMode(II)V

    goto :goto_0

    .line 475
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeUpdatedCocktailsExceptContextual()V

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2195
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    :goto_0
    return-void

    .line 2201
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2202
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2203
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 2204
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 2205
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-direct {p0, v1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V

    .line 2203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2207
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    if-eqz v4, :cond_2

    .line 2209
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 2210
    .local v2, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnabledCocktails : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    .end local v2    # "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2207
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 2
    .param p1, "userType"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 462
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    if-eqz p2, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_0
.end method

.method public getAllCocktailIds(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1677
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1678
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1679
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1680
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    monitor-exit v3

    .line 1683
    return-void

    .line 1682
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1687
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1531
    if-nez p1, :cond_0

    .line 1532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1534
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1535
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1536
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    monitor-exit v2

    .line 1539
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1540
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1544
    if-nez p1, :cond_0

    .line 1545
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1548
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1549
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1550
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I

    move-result-object v1

    monitor-exit v2

    .line 1552
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_0

    .line 1554
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledCocktailIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1097
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1098
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initialize"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1101
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 1104
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 1105
    .local v1, "mode":I
    if-eq v0, v1, :cond_2

    .line 1106
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 1110
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 1111
    return-void

    .line 1102
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1107
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_2
    if-ne v1, v4, :cond_1

    .line 1108
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_0
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1562
    if-nez p2, :cond_0

    .line 1563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1565
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1566
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1567
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    monitor-exit v2

    .line 1571
    :goto_0
    return v1

    .line 1570
    :cond_1
    monitor-exit v2

    .line 1571
    const/4 v1, 0x0

    goto :goto_0

    .line 1570
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidHost()Z
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCocktailBarWakeUp(ZII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 2036
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2037
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2038
    .local v1, "currentUserId":I
    const/4 v4, 0x0

    .line 2039
    .local v4, "ownerId":I
    if-eq v4, v1, :cond_0

    .line 2040
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyCocktailBarWakeUp supported only owner user, currentUID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .end local v1    # "currentUserId":I
    .end local v4    # "ownerId":I
    :goto_0
    return-void

    .line 2045
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2046
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2047
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp was not supported with mobile keypad"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2051
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 2052
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;

    invoke-direct {v6, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2064
    :cond_2
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v5, :cond_3

    .line 2066
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v5, v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v5, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyWakeUpState(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2067
    :catch_0
    move-exception v2

    .line 2068
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2072
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyCocktailBarWakeUp: startActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.app.cocktailbarservice"

    const-string v6, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const-string/jumbo v5, "keycode"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2076
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I

    .prologue
    .line 1421
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1422
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1423
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1424
    invoke-direct {p0, v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1426
    :cond_0
    monitor-exit v2

    .line 1427
    return-void

    .line 1426
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1710
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1711
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCocktailVisibiltyChanged : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1715
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1716
    invoke-direct {p0, v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1718
    :cond_1
    monitor-exit v2

    .line 1719
    return-void

    .line 1718
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1702
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyKeyguardState(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1939
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1941
    .local v2, "added":Z
    const/4 v4, 0x0

    .line 1942
    .local v4, "changed":Z
    const/4 v9, 0x0

    .line 1943
    .local v9, "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1944
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1945
    const/4 v2, 0x1

    .line 1964
    :goto_0
    if-eqz v9, :cond_0

    array-length v13, v9

    if-nez v13, :cond_3

    .line 2007
    :cond_0
    :goto_1
    return-void

    .line 1946
    :cond_1
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1947
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1948
    const/4 v2, 0x0

    goto :goto_0

    .line 1950
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1951
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 1954
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1955
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1958
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    .end local v9    # "pkgList":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v10, v9, v13

    .line 1961
    .restart local v9    # "pkgList":[Ljava/lang/String;
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1962
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 1967
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_a

    .line 1968
    :cond_4
    const/4 v11, 0x0

    .line 1969
    .local v11, "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1970
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1972
    .local v5, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_5

    if-eqz v5, :cond_7

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1973
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_9

    .line 1974
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v10, v3, v7

    .line 1975
    .restart local v10    # "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v13}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1974
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1973
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1979
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v6

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v13}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v13

    if-gt v6, v13, :cond_9

    .line 1980
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_5
    if-ge v7, v8, :cond_8

    aget-object v10, v3, v7

    .line 1981
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1980
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1979
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1985
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 1986
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    if-eqz v11, :cond_0

    .line 1988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 1986
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "i":I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 1991
    .end local v11    # "res":Z
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1992
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_b

    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1994
    :cond_b
    const/4 v11, 0x0

    .line 1995
    .restart local v11    # "res":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1996
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1997
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v8, :cond_c

    aget-object v10, v3, v7

    .line 1998
    .restart local v10    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1999
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 1997
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2001
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_c
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2002
    if-eqz v11, :cond_0

    .line 2003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 2001
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13
.end method

.method public onConfigurationChanged()V
    .locals 9

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 556
    .local v5, "revised":Ljava/util/Locale;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 557
    :cond_0
    iput-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 558
    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v7

    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 560
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 561
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 562
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 563
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 564
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    .line 565
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 566
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v8

    invoke-direct {p0, v6, v8, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    .line 562
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 569
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 570
    monitor-exit v7

    .line 572
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_3
    return-void

    .line 570
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1326
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1327
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1330
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1331
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1332
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailContentView(Landroid/widget/RemoteViews;Z)V

    .line 1333
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1334
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1336
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1346
    return-void

    .line 1337
    :catch_0
    move-exception v1

    .line 1338
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1345
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1342
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "helpView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1349
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1350
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partiallyUpdateHelpView : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1353
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1354
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1355
    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V

    .line 1356
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1357
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1359
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1369
    return-void

    .line 1360
    :catch_0
    move-exception v1

    .line 1361
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1368
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1365
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partiallyUpdateHelpView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeAllUpdatedCocktails()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    .line 510
    monitor-exit v1

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCocktail(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 1592
    monitor-exit v1

    .line 1593
    return-void

    .line 1592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToDisableCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToDisableCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 7
    .param p1, "category"    # I

    .prologue
    .line 336
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 337
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToDisableCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    const/4 v3, 0x0

    .line 340
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 341
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 342
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 344
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_1

    .line 345
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 342
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v5

    .line 349
    return v3

    .line 348
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToUpdateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 7
    .param p1, "category"    # I

    .prologue
    .line 319
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 320
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestToUpdateCocktailByCategory : category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    const/4 v3, 0x0

    .line 323
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 324
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 325
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 327
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v4, p1, :cond_1

    .line 328
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 325
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v5

    .line 332
    return v3

    .line 331
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public requestUpdateFeeds()V
    .locals 6

    .prologue
    .line 395
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 396
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestUpdateFeeds"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 399
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 400
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 402
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v3, v1, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateFeedsBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 400
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    monitor-exit v4

    .line 407
    return-void

    .line 406
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public resetMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 444
    return-void
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1722
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1723
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDragEvent : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1727
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1728
    invoke-direct {p0, v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDragEventLocked(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/view/DragEvent;)V

    .line 1730
    :cond_1
    monitor-exit v2

    .line 1731
    return-void

    .line 1730
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1929
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->sendExtraData(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "restart"    # Z

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 208
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 213
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setDisableTickerView(I)V

    .line 216
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-eqz v2, :cond_2

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 211
    :cond_3
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisableTickerView(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1918
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    .line 1919
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->setDisableTickerView(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0
.end method

.method public setEnabledCocktailIds([I)V
    .locals 7
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 1653
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1654
    :try_start_0
    array-length v0, p1

    .line 1655
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    .local v2, "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1657
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    aget v6, p1, v3

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1658
    .local v1, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v1, :cond_0

    .line 1659
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1662
    .end local v1    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;

    invoke-direct {v6, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1669
    monitor-exit v5

    .line 1670
    return-void

    .line 1669
    .end local v0    # "N":I
    .end local v2    # "enabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setMode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "cocktailType"    # I

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setModeLocked(ILjava/lang/String;I)V

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I

    .prologue
    .line 1372
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1373
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1376
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1377
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1378
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1380
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1382
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->showCocktail(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1392
    return-void

    .line 1383
    :catch_0
    move-exception v1

    .line 1384
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1391
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1388
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .prologue
    const/4 v4, 0x1

    .line 221
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 224
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailAttribute()V

    .line 234
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-nez v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 236
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    .line 237
    .local v1, "mode":I
    if-eq v0, v1, :cond_5

    .line 238
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 242
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 244
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_2
    return-void

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iput p3, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    goto :goto_0

    .line 229
    :cond_4
    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 239
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :cond_5
    if-ne v1, v4, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_1
.end method

.method public switchDefaultCocktail()V
    .locals 3

    .prologue
    .line 1908
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_0

    .line 1910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost;->switchDefaultCocktail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1911
    :catch_0
    move-exception v0

    .line 1912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public systemDestroy()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;->unregisterContentObserver()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkHost()V

    .line 186
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 187
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1791
    if-nez p2, :cond_0

    .line 1792
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1794
    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1795
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V

    .line 1798
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1800
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1806
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1807
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-nez v0, :cond_1

    .line 1808
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad cocktailId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1817
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1811
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;

    .line 1813
    .local v1, "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 1814
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1815
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "conn":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1818
    return-void
.end method

.method public unsetMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "modeName"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 448
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetModeLocked(ILjava/lang/String;)V

    .line 449
    monitor-exit v1

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 1581
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1583
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1584
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 1586
    :cond_0
    monitor-exit v2

    .line 1587
    return-void

    .line 1586
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    .line 1303
    sget-boolean v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1304
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCocktail : cocktailId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1307
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1308
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_1

    .line 1309
    invoke-virtual {v0, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1310
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1311
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1313
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p2, v0, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1323
    return-void

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    goto :goto_0

    .line 1322
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1319
    .restart local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCocktail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1477
    .local p3, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1478
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 1479
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0, v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFeedsLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/util/List;)V

    .line 1482
    :cond_0
    monitor-exit v2

    .line 1483
    return-void

    .line 1482
    .end local v0    # "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 2017
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateLongpressGesture(Z)V

    .line 2018
    return-void
.end method

.method public updateSysfsBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 2025
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 2026
    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .locals 0
    .param p1, "deadzone"    # I

    .prologue
    .line 2021
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsDeadZone(I)V

    .line 2022
    return-void
.end method

.method public updateSysfsGripDisable(Z)V
    .locals 0
    .param p1, "bDisable"    # Z

    .prologue
    .line 2029
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    .line 2030
    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 1
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 2014
    return-void
.end method
