.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field private static final INITIALIZE_KNOX_WALLPAPER:I = 0x3e9

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETUP_KNOX_WALLPAPER:I = 0x3eb

.field private static final SWITCH_KNOX_WALLPAPER:I = 0x3ea

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_2:Ljava/lang/String; = "wallpaper2"

.field private static final WALLPAPER_DESKTOP:Ljava/lang/String; = "wallpaper_desktop"

.field private static final WALLPAPER_DESKTOP_INFO:Ljava/lang/String; = "wallpaper_desktop_info.xml"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field public final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRunning:Z

.field private mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

.field final mContext:Landroid/content/Context;

.field private mCurrSimId:I

.field private mCurrentPersonaId:I

.field mCurrentUserId:I

.field final mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

.field mDesktopWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field private mIsDesktopMode:Z

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field mLastWallpaperMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mPrevSimId:I

.field private mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field whichSimSetWallpaper:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 747
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 147
    new-array v4, v7, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 158
    iput v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 159
    const-string v4, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 160
    const-string v4, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 161
    const-string v4, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 162
    const-string v4, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 163
    iput-boolean v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    .line 164
    iput v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I

    .line 165
    iput v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I

    .line 174
    iput-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 181
    iput v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    .line 336
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 339
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaperMaps:Landroid/util/SparseArray;

    .line 2705
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 2749
    iput-boolean v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    .line 2760
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    .line 748
    const-string v4, "WallpaperManagerService"

    const-string v5, "WallpaperService startup"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 752
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 754
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 755
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 756
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 757
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v8, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 758
    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 759
    invoke-direct {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 761
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 762
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 764
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    invoke-virtual {v0, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 767
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v2, 0x0

    .line 768
    .local v2, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 769
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 770
    .restart local v2    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_0

    .line 771
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 772
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadSettingsLocked is called for user -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "mPersona":Landroid/os/PersonaManager;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_0
    iput-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopManager:Lcom/samsung/android/desktop/DesktopManager;

    .line 796
    return-void
.end method

.method private SimStatusVerify()I
    .locals 5

    .prologue
    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, "currSimId":I
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStatusVerify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrSimID()I

    move-result v0

    .line 2374
    const-string/jumbo v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2382
    .local v1, "simSlot":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperForMultiSimSkip()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2383
    const/4 v0, 0x0

    .line 2385
    :cond_0
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperManagerService->SimStatusVerify slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    if-gez v0, :cond_1

    .line 2388
    const/4 v0, 0x0

    .line 2390
    :cond_1
    return v0
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 143
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaperMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(IZ)Lcom/android/internal/util/JournaledFile;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I

    return p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_0
    return-void
.end method

.method private chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2763
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2764
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2766
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 2053
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2057
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .restart local p3    # "defValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 1136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1137
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1138
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1139
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1140
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 2196
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2197
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2198
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 3

    .prologue
    .line 2593
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2595
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 2596
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 2598
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 799
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperInfobyData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperInfo;
    .locals 14
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v11, 0x0

    .line 1413
    const/4 v8, 0x0

    .line 1415
    .local v8, "wi":Landroid/app/WallpaperInfo;
    :try_start_0
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1416
    .local v6, "serviceUserId":I
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1417
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v12, 0x1080

    invoke-interface {v10, v0, v12, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 1420
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_0

    .line 1422
    const-string v10, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempted wallpaper "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is unavailable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempted wallpape  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " is unavailable"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1457
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v10

    .line 1427
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceUserId":I
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-interface {v10, v3, v12, v13, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 1434
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 1435
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v5, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1436
    .local v5, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v10

    if-eqz v10, :cond_2

    .line 1439
    :try_start_1
    new-instance v9, Landroid/app/WallpaperInfo;

    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v12, v10}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v8    # "wi":Landroid/app/WallpaperInfo;
    .local v9, "wi":Landroid/app/WallpaperInfo;
    move-object v8, v9

    .end local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v9    # "wi":Landroid/app/WallpaperInfo;
    .restart local v8    # "wi":Landroid/app/WallpaperInfo;
    :cond_1
    move-object v10, v8

    .line 1453
    goto :goto_0

    .line 1440
    .restart local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 1441
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v10, "WallpaperManagerService"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    const-string/jumbo v10, "wallpaer info parse error  "

    invoke-virtual {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1443
    goto :goto_0

    .line 1444
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 1445
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "WallpaperManagerService"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    const-string/jumbo v10, "wallpaer info IO exception  "

    invoke-virtual {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    .line 1447
    goto :goto_0

    .line 1434
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1455
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v1

    .line 1456
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "wallpaer info exception  "

    invoke-virtual {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1457
    goto :goto_0
.end method

.method private getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2070
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 2072
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2073
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 2076
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 2079
    :cond_0
    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 2083
    const-string v16, "WallpaperManagerService"

    const-string/jumbo v17, "loadSettingsLocked"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v16

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v8

    .line 2089
    .local v8, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 2090
    .local v10, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 2091
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 2093
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 2097
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 2098
    .local v15, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v16

    if-eqz v16, :cond_a

    if-nez v15, :cond_a

    .line 2099
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 2100
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2107
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 2108
    .local v12, "success":Z
    const-string v6, ""

    .line 2110
    .local v6, "error":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2111
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v11, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 2112
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2116
    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 2117
    .local v14, "type":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    .line 2118
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2119
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v16, "wp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2120
    const/16 v16, 0x0

    const-string/jumbo v17, "width"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2121
    const/16 v16, 0x0

    const-string/jumbo v17, "height"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2123
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const-string/jumbo v17, "paddingLeft"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2124
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const-string/jumbo v17, "paddingTop"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2125
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const-string/jumbo v17, "paddingRight"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2126
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const-string/jumbo v17, "paddingBottom"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2127
    const/16 v16, 0x0

    const-string/jumbo v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2128
    const/16 v16, 0x0

    const-string/jumbo v17, "component"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2129
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_b

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    :goto_1
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2132
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    const-string v16, "android"

    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2135
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2139
    :cond_4
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mWidth:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mHeight:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mNextWallpaperComponent:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 2147
    .end local v4    # "comp":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    .line 2148
    const/4 v12, 0x1

    move-object v10, v11

    .line 2169
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "type":I
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v10, :cond_6

    .line 2170
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2176
    :cond_6
    :goto_3
    if-nez v12, :cond_7

    .line 2177
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "load wallpaper is failed set default "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 2178
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Safe mode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 2179
    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2180
    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2181
    iget-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Rect;->set(IIII)V

    .line 2182
    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2186
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v3

    .line 2187
    .local v3, "baseSize":I
    iget v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_8

    .line 2188
    iput v3, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2190
    :cond_8
    iget v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 2191
    iput v3, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2193
    :cond_9
    return-void

    .line 2103
    .end local v3    # "baseSize":I
    .end local v6    # "error":Ljava/lang/String;
    .end local v12    # "success":Z
    :cond_a
    if-nez v15, :cond_1

    .line 2104
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 2105
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2129
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v6    # "error":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "success":Z
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 2149
    .end local v4    # "comp":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 2150
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const-string v16, "WallpaperManagerService"

    const-string/jumbo v17, "no current wallpaper -- first boot?"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto/16 :goto_2

    .line 2152
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 2153
    .local v5, "e":Ljava/lang/NullPointerException;
    :goto_5
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto/16 :goto_2

    .line 2155
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    .line 2156
    .local v5, "e":Ljava/lang/NumberFormatException;
    :goto_6
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto/16 :goto_2

    .line 2158
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v5

    .line 2159
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto/16 :goto_2

    .line 2161
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v5

    .line 2162
    .local v5, "e":Ljava/io/IOException;
    :goto_8
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2167
    goto/16 :goto_2

    .line 2164
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 2165
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_9
    const-string v16, "WallpaperManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 2172
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v16

    goto/16 :goto_3

    .line 2164
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 2161
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 2158
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 2155
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 2152
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 2149
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v5

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 1968
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private static makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;
    .locals 7
    .param p0, "userId"    # I
    .param p1, "isDesktopMode"    # Z

    .prologue
    .line 1974
    if-eqz p1, :cond_0

    const-string/jumbo v1, "wallpaper_desktop_info.xml"

    .line 1975
    .local v1, "child":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1976
    .local v0, "base":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v2

    .line 1974
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "wallpaper_info.xml"

    goto :goto_0
.end method

.method private migrateFromOld()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2039
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "migrateFromOld"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2041
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2042
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2043
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2044
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2046
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2047
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2048
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2050
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1936
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1937
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1939
    :try_start_0
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1946
    :cond_0
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1947
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1949
    return-void

    .line 1940
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private onRefreshWallpaperByUiMode(Z)V
    .locals 6
    .param p1, "isDesktopMode"    # Z

    .prologue
    .line 2771
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRefreshWallpaperByUiMode() isDesktopMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    .line 2778
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2779
    if-eqz p1, :cond_1

    .line 2780
    :try_start_0
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 2781
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2782
    .local v1, "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2788
    .local v0, "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 2789
    :cond_0
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRefreshWallpaperByUiMode() wdPrevWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wdNextWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    monitor-exit v3

    .line 2807
    :goto_1
    return-void

    .line 2784
    .end local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2785
    .restart local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .restart local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_0

    .line 2794
    :cond_2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v2, :cond_3

    .line 2795
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 2798
    :cond_3
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v2, :cond_4

    .line 2799
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2802
    :cond_4
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v2, :cond_5

    .line 2803
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 2804
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2806
    :cond_5
    monitor-exit v3

    goto :goto_1

    .end local v0    # "wdNextWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "wdPrevWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private registerBackupRestoreReceiver()V
    .locals 3

    .prologue
    .line 2537
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "registerBackupRestoreReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2539
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2540
    const-string v1, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2541
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2542
    const-string v1, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2543
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    .line 2544
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2545
    return-void
.end method

.method private registerSimChangedReceiver()V
    .locals 3

    .prologue
    .line 2522
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "registerSimChangedReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2526
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2527
    const-string v1, "WallpaperManagerService"

    const-string v2, "ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED & ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2529
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2532
    :cond_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    .line 2533
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2534
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1981
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "saveSettingsLocked"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(IZ)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1986
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1988
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1990
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1991
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1993
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1994
    const/4 v5, 0x0

    const-string/jumbo v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1995
    const/4 v5, 0x0

    const-string/jumbo v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1996
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_0

    .line 1997
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    :cond_0
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_1

    .line 2000
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    :cond_1
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_2

    .line 2003
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    :cond_2
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_3

    .line 2006
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2008
    :cond_3
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2009
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2011
    const/4 v5, 0x0

    const-string/jumbo v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    :cond_4
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2016
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2017
    if-eqz v4, :cond_5

    .line 2018
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 2019
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2020
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2022
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 2036
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2023
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_6

    .line 2026
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2032
    :cond_6
    :goto_2
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "journal.rollback"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2034
    const-string/jumbo v5, "roll back"

    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :catch_1
    move-exception v5

    goto :goto_2

    .line 2023
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setKnoxWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2608
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKnoxWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2610
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2611
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2612
    return-void
.end method

.method private setKnoxWallpaperMessage(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 2616
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2617
    :try_start_0
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2620
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_0

    .line 2621
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wallpaper not yet initialized for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2655
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2623
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    if-nez v8, :cond_1

    .line 2624
    const-string v8, "WallpaperManagerService"

    const-string v10, "PMS cannot be null"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    monitor-exit v9

    .line 2657
    :goto_0
    return-void

    .line 2627
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 2629
    .local v4, "ident":J
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getKnoxWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 2630
    .local v0, "data":Ljava/io/InputStream;
    if-nez v0, :cond_2

    .line 2631
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX wallpaper stream cannot be null for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2653
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2634
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2635
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_3

    .line 2636
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2638
    :cond_3
    const/4 v2, 0x0

    .line 2640
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2641
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2643
    if-eqz v3, :cond_4

    .line 2644
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2646
    :cond_4
    if-eqz v0, :cond_5

    .line 2647
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2653
    :cond_5
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2655
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 2643
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v8

    :goto_2
    if-eqz v2, :cond_6

    .line 2644
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2646
    :cond_6
    if-eqz v0, :cond_7

    .line 2647
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2650
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2651
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper Exception-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2653
    :try_start_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2643
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2661
    const v2, 0x8000

    new-array v1, v2, [B

    .line 2663
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 2664
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 2666
    :cond_0
    return-void
.end method

.method private simInserted(I)Z
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    .line 2442
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, "iccType":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simInserted() : simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2448
    const/4 v1, 0x1

    .line 2450
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 11
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1912
    const-string v0, "WallpaperManagerService"

    const-string v1, "attachServiceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1926
    :catch_0
    move-exception v8

    .line 1927
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1928
    const-string v0, "Failed attaching wallpaper; clearing "

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1929
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1930
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 24
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1685
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    if-nez p2, :cond_1

    .line 1688
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_1

    .line 1689
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    .line 1690
    if-nez p1, :cond_1

    .line 1691
    const-string v4, "WallpaperManagerService"

    const-string v5, "bindWallpaperComponentLocked: still using default"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const-string v4, "bindWallpaperComponentLocked: still using default "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1694
    const/4 v4, 0x1

    .line 1874
    :goto_0
    return v4

    .line 1696
    :cond_0
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1698
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "same wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v4, 0x1

    goto :goto_0

    .line 1705
    :cond_1
    if-nez p1, :cond_2

    .line 1706
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1707
    if-nez p1, :cond_2

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1712
    const-string v4, "WallpaperManagerService"

    const-string v5, "Using image wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v4, "Using image wallpaper "

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1716
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v20, v0

    .line 1717
    .local v20, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v5, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v21

    .line 1719
    .local v21, "si":Landroid/content/pm/ServiceInfo;
    if-nez v21, :cond_3

    .line 1721
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is unavailable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1723
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1725
    :cond_3
    const-string v4, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1729
    .local v16, "msg":Ljava/lang/String;
    const-string v4, "Selected service does not require "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1730
    if-eqz p3, :cond_4

    .line 1731
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .end local v16    # "msg":Ljava/lang/String;
    .end local v20    # "serviceUserId":I
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v11

    .line 1866
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1867
    .restart local v16    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1868
    if-eqz p3, :cond_11

    .line 1869
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1733
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v20    # "serviceUserId":I
    .restart local v21    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1737
    .end local v16    # "msg":Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    .line 1739
    .local v22, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    move/from16 v0, v20

    invoke-interface {v4, v13, v5, v6, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v18

    .line 1746
    .local v18, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_6

    .line 1747
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1748
    .local v19, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_9

    .line 1751
    :try_start_2
    new-instance v22, Landroid/app/WallpaperInfo;

    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v4}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1768
    .end local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_6
    if-nez v22, :cond_c

    .line 1769
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service is not a wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageMangerquery count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1772
    const/4 v12, 0x0

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_a

    .line 1773
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1774
    .restart local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1772
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1752
    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    :catch_1
    move-exception v11

    .line 1753
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_7

    .line 1754
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1756
    :cond_7
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1758
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v11

    .line 1759
    .local v11, "e":Ljava/io/IOException;
    if-eqz p3, :cond_8

    .line 1760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1762
    :cond_8
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1746
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1777
    .end local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current ServiceInfo name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current ServiceInfo package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service is not a wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1781
    .restart local v16    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 1782
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1784
    :cond_b
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1790
    .end local v12    # "i":I
    .end local v16    # "msg":Ljava/lang/String;
    .end local v18    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_c
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/4 v15, 0x1

    .line 1797
    .local v15, "maxDisplay":I
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxDisplay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v10, 0x0

    .local v10, "displayId":I
    :goto_3
    if-ge v10, v15, :cond_12

    .line 1808
    new-instance v17, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1809
    .local v17, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1810
    const-string v4, "android.intent.extra.client_label"

    const v5, 0x1040444

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    const-string v23, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040445

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x22000001

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v13, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1822
    .restart local v16    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1823
    if-eqz p3, :cond_d

    .line 1824
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1826
    :cond_d
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1833
    .end local v16    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1835
    .local v14, "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v4, v5, :cond_f

    if-eqz v14, :cond_f

    .line 1836
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1838
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1839
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1840
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1841
    move-object/from16 v0, p4

    iput v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->displayId:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1843
    :try_start_4
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v4, v5, :cond_10

    .line 1845
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding window token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[uid]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v6, 0x7dd

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1859
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1798
    :cond_10
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1871
    .end local v10    # "displayId":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v15    # "maxDisplay":I
    .end local v17    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v20    # "serviceUserId":I
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    .local v11, "e":Landroid/os/RemoteException;
    .restart local v16    # "msg":Ljava/lang/String;
    :cond_11
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1874
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v16    # "msg":Ljava/lang/String;
    .restart local v10    # "displayId":I
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "maxDisplay":I
    .restart local v20    # "serviceUserId":I
    .restart local v21    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1862
    .restart local v14    # "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v17    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :catch_3
    move-exception v4

    goto :goto_4
.end method

.method public checkWallpaperForMultiSimSkip()Z
    .locals 5

    .prologue
    .line 2353
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2354
    .local v0, "mProductName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2356
    .local v1, "multiSIM_skip":Z
    const-string/jumbo v2, "trlteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "klteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2357
    :cond_0
    const/4 v1, 0x1

    .line 2360
    :cond_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 2361
    const/4 v1, 0x1

    .line 2364
    :cond_2
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWallpaperForMultiSimSkip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    return v1
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1009
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1014
    :cond_0
    const-string v0, "clearWallpaper"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 1017
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1906
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaperComponentLocked "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1908
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1909
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 1021
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearWallpaperLocked =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v0, "clearWallpaperLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1028
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1034
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1035
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "remove wallpaper file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string/jumbo v0, "remove wallpaper file"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1043
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1045
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 1047
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1048
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_2

    .line 1072
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1049
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 1072
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v7

    .line 1055
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .line 1062
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_2
    const-string v0, "Default wallpaper component not found"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1063
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1065
    if-eqz p3, :cond_5

    .line 1067
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1072
    :cond_5
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1068
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    .line 1878
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    .line 1879
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1881
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1884
    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1886
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 1888
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1892
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1895
    :try_start_2
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1899
    :goto_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1900
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1901
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1903
    :cond_2
    return-void

    .line 1897
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1889
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1882
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2548
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

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

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    :goto_0
    return-void

    .line 2557
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2558
    :try_start_0
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2560
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2561
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2563
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2564
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2565
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2566
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2567
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2569
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2

    .line 2570
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2571
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2573
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_1

    .line 2575
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2576
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2578
    :cond_1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2579
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2580
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2582
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2584
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2585
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 2559
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2588
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 804
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 807
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 812
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 813
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 816
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    return-void
.end method

.method public getCurrSimID()I
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2395
    const/4 v2, 0x0

    .line 2397
    .local v2, "currSimId":I
    const-string/jumbo v0, "ril.ICC_TYPE"

    .line 2398
    .local v0, "SP_KEY_SIM_STATE_SIM":Ljava/lang/String;
    const-string v1, "0"

    .line 2399
    .local v1, "SP_VALUE_SIM_STATE_ABSENT":Ljava/lang/String;
    const-string/jumbo v11, "ril.ICC_TYPE"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2400
    .local v8, "simStateString":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2402
    .local v7, "simState":[Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v7, :cond_1

    array-length v11, v7

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    :cond_0
    move v3, v2

    .line 2438
    .end local v2    # "currSimId":I
    .local v3, "currSimId":I
    :goto_0
    return v3

    .line 2406
    .end local v3    # "currSimId":I
    .restart local v2    # "currSimId":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone1_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_2

    move v4, v9

    .line 2407
    .local v4, "sim1Enabled":Z
    :goto_1
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone2_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v5, v9

    .line 2409
    .local v5, "sim2Enabled":Z
    :goto_2
    const-string/jumbo v11, "ril.MSIMM"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2410
    .local v6, "simSlot":Ljava/lang/String;
    const-string v11, "0"

    aget-object v12, v7, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v4, :cond_5

    const-string v11, "0"

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v5, :cond_5

    .line 2412
    const-string v9, "1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2413
    const/4 v2, 0x1

    :goto_3
    move v3, v2

    .line 2438
    .end local v2    # "currSimId":I
    .restart local v3    # "currSimId":I
    goto :goto_0

    .end local v3    # "currSimId":I
    .end local v4    # "sim1Enabled":Z
    .end local v5    # "sim2Enabled":Z
    .end local v6    # "simSlot":Ljava/lang/String;
    .restart local v2    # "currSimId":I
    :cond_2
    move v4, v10

    .line 2406
    goto :goto_1

    .restart local v4    # "sim1Enabled":Z
    :cond_3
    move v5, v10

    .line 2407
    goto :goto_2

    .line 2415
    .restart local v5    # "sim2Enabled":Z
    .restart local v6    # "simSlot":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2416
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubscriptionManager.getSlotId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2418
    :cond_5
    const-string v11, "0"

    aget-object v10, v7, v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_6

    const-string v10, "0"

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_6

    .line 2420
    const/4 v2, 0x0

    .line 2421
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCurrSimID no sim  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2423
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 2424
    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_7

    .line 2425
    const/4 v2, 0x1

    .line 2436
    :goto_4
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCurrSimID single sim inserted  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2427
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_8

    .line 2428
    const/4 v2, 0x1

    goto :goto_4

    .line 2430
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 2433
    :cond_9
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2434
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubscriptionManager.getSlotId 2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public getHeightHint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1197
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1198
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1199
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    .line 1201
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1203
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 927
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 932
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 2604
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 2605
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1242
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1243
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    .line 1248
    .local v0, "SimStatusFlag":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1249
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 1250
    .local v7, "wallpaperUserId":I
    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_5

    .line 1251
    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v11, 0x64

    if-lt v10, v11, :cond_4

    .line 1252
    const/4 v7, 0x0

    .line 1258
    :goto_0
    iget-boolean v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    if-eqz v10, :cond_0

    .line 1259
    const/4 v7, 0x0

    .line 1261
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1263
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_1

    .line 1264
    :try_start_1
    const-string/jumbo v10, "width"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1265
    const-string/jumbo v10, "height"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1268
    :cond_1
    const-string v4, ""

    .line 1269
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, ""

    .line 1270
    .local v5, "nFile":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1271
    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1273
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper_desktop"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1282
    :cond_3
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1283
    new-instance v3, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1284
    .local v3, "f":Ljava/io/File;
    const-string v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getWallpaper filename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1286
    const-string v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WallpaperManagerService  SimStatusFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WALLPAPER_FILE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not existed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    :try_start_2
    monitor-exit v9

    .line 1295
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 1254
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    goto/16 :goto_0

    .line 1256
    :cond_5
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto/16 :goto_0

    .line 1289
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_6
    const/high16 v10, 0x10000000

    :try_start_3
    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    :try_start_4
    monitor-exit v9

    goto :goto_1

    .line 1296
    .end local v0    # "SimStatusFlag":I
    .end local v1    # "callingUid":I
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "wallpaperUserId":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 1290
    .restart local v0    # "SimStatusFlag":I
    .restart local v1    # "callingUid":I
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v7    # "wallpaperUserId":I
    :catch_0
    move-exception v2

    .line 1292
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v10, "WallpaperManagerService"

    const-string v11, "Error getting wallpaper"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    const-string v10, "Error getting wallpaper"

    invoke-virtual {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1295
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDesktopWallpaperData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1304
    .local v0, "desktopWallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    if-ge p1, v6, :cond_0

    .line 1305
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "desktopWallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1306
    .restart local v0    # "desktopWallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "getDesktopWallpaperData : fallback to OWNER"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    .end local v0    # "desktopWallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :goto_0
    return-object v0

    .line 1312
    :cond_1
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWallpaperData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1314
    .local v1, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_2

    if-ge p1, v6, :cond_2

    .line 1315
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1316
    .restart local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "getWallpaperData : fallback to OWNER"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 1319
    goto :goto_0
.end method

.method public getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v7, 0x0

    .line 1325
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1328
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1329
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 1330
    .local v6, "wallpaperUserId":I
    const/16 v9, 0x3e8

    if-ne v0, v9, :cond_2

    .line 1331
    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v10, 0x64

    if-lt v9, v10, :cond_1

    .line 1332
    const/4 v6, 0x0

    .line 1338
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    if-eqz v9, :cond_0

    .line 1339
    const/4 v6, 0x0

    .line 1343
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1345
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_3

    .line 1346
    monitor-exit v8

    .line 1382
    :goto_1
    return-object v7

    .line 1334
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    goto :goto_0

    .line 1336
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_0

    .line 1349
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    if-eqz p2, :cond_4

    .line 1350
    :try_start_1
    const-string/jumbo v9, "width"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    const-string/jumbo v9, "height"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    :cond_4
    const-string v3, ""

    .line 1355
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 1356
    .local v4, "nFile":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_5

    .line 1357
    add-int/lit8 v9, p3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1359
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaper"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaper_desktop"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1367
    :cond_6
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback register : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1369
    new-instance v2, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1371
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1372
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WallpaperManagerService WALLPAPER_FILE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WallpaperManagerService WALLPAPER_FILE: is not exist  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1374
    :try_start_2
    monitor-exit v8

    goto/16 :goto_1

    .line 1383
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "wallpaperUserId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1376
    .restart local v0    # "callingUid":I
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "nFile":Ljava/lang/String;
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "wallpaperUserId":I
    :cond_7
    const/high16 v9, 0x10000000

    :try_start_3
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    :try_start_4
    monitor-exit v8

    goto/16 :goto_1

    .line 1377
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1379
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v9, "WallpaperManagerService"

    const-string v10, "Error getting wallpaper"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    const-string v9, "Error getting wallpaper for multi sim"

    invoke-virtual {p0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1382
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    .line 1388
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1389
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 1390
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 1391
    const/4 v0, 0x0

    .line 1395
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    if-eqz v2, :cond_1

    .line 1396
    const/4 v0, 0x0

    .line 1398
    :cond_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1401
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1403
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2

    .line 1404
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 1406
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1407
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWallpaperName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 2263
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2264
    .local v0, "name":Ljava/lang/String;
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWallpaperName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    return-object v0
.end method

.method public getWidthHint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1185
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1186
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1187
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1188
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    .line 1190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1192
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1102
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1104
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1106
    .local v2, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1108
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1112
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1117
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1119
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 1121
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1124
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1127
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1128
    const/4 v6, 0x1

    monitor-exit v7

    .line 1132
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    return v6

    .line 1108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1131
    .end local v2    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1132
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public initializeKnoxWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2699
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeKnoxWallpaper userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2701
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2702
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2703
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 2755
    const/4 v0, 0x0

    return v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadKnoxWallpaperSettings(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 2670
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2671
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2672
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2673
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2674
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 2675
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2676
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 2679
    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_1

    .line 2680
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2681
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 2684
    :cond_1
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " postponing showing wallpaper for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    monitor-exit v2

    .line 2686
    return-void

    .line 2685
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onRemoveUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 958
    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    .line 975
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 960
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onStoppingUser(I)V

    .line 961
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 962
    .local v2, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 963
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    .local v3, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 967
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper_desktop"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 968
    .local v0, "desktopWallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 969
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper_desktop_info.xml"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 970
    .local v1, "desktopWallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRemoveUser:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 974
    monitor-exit v5

    goto :goto_0

    .end local v0    # "desktopWallpaperFile":Ljava/io/File;
    .end local v1    # "desktopWallpaperInfoFile":Ljava/io/File;
    .end local v2    # "wallpaperFile":Ljava/io/File;
    .end local v3    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method onStoppingUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 938
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 955
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 944
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 945
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1

    .line 946
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 947
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 949
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 951
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 954
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 22
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    const-string/jumbo v18, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2270
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2272
    .local v15, "resName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2273
    .local v11, "pkg":Ljava/lang/String;
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2274
    .local v6, "colon":I
    if-lez v6, :cond_0

    .line 2275
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2278
    :cond_0
    const/4 v10, 0x0

    .line 2279
    .local v10, "ident":Ljava/lang/String;
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 2280
    .local v16, "slash":I
    if-lez v16, :cond_1

    .line 2281
    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2284
    :cond_1
    const/16 v17, 0x0

    .line 2285
    .local v17, "type":Ljava/lang/String;
    if-lez v6, :cond_2

    if-lez v16, :cond_2

    sub-int v18, v16, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 2286
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2289
    :cond_2
    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    if-eqz v17, :cond_8

    .line 2290
    const/4 v14, -0x1

    .line 2291
    .local v14, "resId":I
    const/4 v13, 0x0

    .line 2292
    .local v13, "res":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 2294
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 2295
    .local v5, "c":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2296
    .local v12, "r":Landroid/content/res/Resources;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 2297
    if-nez v14, :cond_5

    .line 2298
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ident="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    const/16 v18, 0x0

    .line 2330
    if-eqz v13, :cond_3

    .line 2332
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2335
    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    .line 2337
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11

    .line 2348
    .end local v5    # "c":Landroid/content/Context;
    .end local v6    # "colon":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_4
    :goto_1
    return v18

    .line 2305
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    .line 2306
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2307
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 2309
    :cond_6
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2311
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const v18, 0x8000

    :try_start_4
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 2313
    .local v4, "buffer":[B
    :goto_2
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "amt":I
    if-lez v3, :cond_9

    .line 2314
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2320
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 2321
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "package name not found:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2330
    if-eqz v13, :cond_7

    .line 2332
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 2335
    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    .line 2337
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 2347
    .end local v6    # "colon":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string/jumbo v18, "restore wallpaper failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 2348
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2318
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restored wallpaper: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2319
    const/16 v18, 0x1

    .line 2330
    if-eqz v13, :cond_a

    .line 2332
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2335
    :cond_a
    :goto_6
    if-eqz v9, :cond_4

    .line 2337
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 2340
    :catch_1
    move-exception v19

    goto/16 :goto_1

    .line 2323
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 2324
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Resource not found: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "resource not fount:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2330
    if-eqz v13, :cond_b

    .line 2332
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 2335
    :cond_b
    :goto_8
    if-eqz v8, :cond_8

    .line 2337
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_5

    .line 2340
    :catch_3
    move-exception v18

    goto/16 :goto_5

    .line 2326
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v7

    .line 2327
    .local v7, "e":Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v18, "IOException while restoring wallpaper"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 2328
    const-string v18, "WallpaperManagerService"

    const-string v19, "IOException while restoring wallpaper "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2330
    if-eqz v13, :cond_c

    .line 2332
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 2335
    :cond_c
    :goto_a
    if-eqz v8, :cond_8

    .line 2337
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_5

    .line 2340
    :catch_5
    move-exception v18

    goto/16 :goto_5

    .line 2330
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_b
    if-eqz v13, :cond_d

    .line 2332
    :try_start_11
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 2335
    :cond_d
    :goto_c
    if-eqz v8, :cond_e

    .line 2337
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2338
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2339
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2340
    :cond_e
    :goto_d
    throw v18

    .line 2345
    .end local v6    # "colon":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "wallpaper.name error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2333
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :catch_6
    move-exception v19

    goto/16 :goto_0

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v19

    goto/16 :goto_6

    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v18

    goto/16 :goto_4

    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_9
    move-exception v18

    goto/16 :goto_8

    .local v7, "e":Ljava/io/IOException;
    :catch_a
    move-exception v18

    goto :goto_a

    .end local v7    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v19

    goto :goto_c

    .line 2340
    :catch_c
    move-exception v19

    goto :goto_d

    .line 2330
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "r":Landroid/content/res/Resources;
    :catchall_1
    move-exception v18

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 2326
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 2323
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 2340
    .end local v5    # "c":Landroid/content/Context;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_f
    move-exception v18

    goto/16 :goto_5

    .line 2320
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_10
    move-exception v7

    goto/16 :goto_3

    .line 2340
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "r":Landroid/content/res/Resources;
    :catch_11
    move-exception v19

    goto/16 :goto_1
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1145
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1150
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1151
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1152
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 1153
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1181
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1156
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1157
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1158
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1160
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_3

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_5

    .line 1161
    :cond_3
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1162
    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1163
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1164
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 1165
    :cond_4
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5

    .line 1166
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 1168
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    :goto_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1181
    :cond_5
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 1173
    :cond_6
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_5

    .line 1177
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1170
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1207
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1212
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1213
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1214
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v2, :cond_2

    .line 1215
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1218
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1219
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1220
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1221
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v2, v0, :cond_3

    monitor-exit v3

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_4

    .line 1223
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 1225
    :try_start_2
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1237
    :cond_4
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 1229
    :cond_5
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_4

    .line 1233
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1226
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setSettingsSystemUiTransparency(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 188
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1463
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1491
    :goto_0
    return-object v2

    .line 1468
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1469
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1471
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaper not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const-string/jumbo v6, "setWallpaper not allowed"

    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1476
    :cond_1
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1477
    :try_start_0
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v8, "setWallpaper"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1479
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1480
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1482
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1483
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2

    .line 1484
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v8, "wallpaper.imageWallpaperPending = true"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1488
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1491
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    goto :goto_0

    .line 1493
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "userId":I
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1491
    .restart local v0    # "ident":J
    .restart local v4    # "userId":I
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1654
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1655
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1656
    :try_start_0
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1659
    .local v9, "userId":I
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1660
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1662
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "setWallpaper not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const-string/jumbo v0, "setWallpaperComponent is not allowed "

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1664
    monitor-exit v10

    .line 1681
    :goto_0
    return-void

    .line 1667
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1668
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_1

    .line 1669
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1680
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v9    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1671
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v9    # "userId":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1673
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1674
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1678
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1680
    monitor-exit v10

    goto :goto_0

    .line 1678
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1597
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 1600
    :cond_0
    return-void
.end method

.method public setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 1537
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperForMultiSim  simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1499
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaperForSet"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1501
    .local v4, "userId":I
    iget-boolean v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    if-eqz v6, :cond_0

    .line 1502
    const/4 v4, 0x0

    .line 1504
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1507
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1508
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1510
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaper not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v2, 0x0

    .line 1530
    :goto_0
    return-object v2

    .line 1515
    :cond_1
    if-nez v5, :cond_2

    .line 1516
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1518
    :cond_2
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1519
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1520
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1522
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1523
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_3

    .line 1524
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1527
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1530
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    goto :goto_0

    .line 1532
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1530
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public settingsRestored()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2203
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "settingsRestored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :cond_0
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "settingsRestored"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v4, 0x0

    .line 2212
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x0

    .line 2213
    .local v6, "success":Z
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2214
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 2217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 2219
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2221
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2226
    const-string v0, "bind failed!! restore default wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 2227
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2229
    :cond_1
    const/4 v6, 0x1

    .line 2247
    :cond_2
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    if-nez v6, :cond_3

    .line 2250
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore wallpaper: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restore wallpaper: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 2252
    const-string v0, ""

    iput-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2253
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2256
    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2257
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2258
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2259
    return-void

    .line 2233
    :cond_4
    :try_start_2
    const-string v0, ""

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2234
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "settingsRestored: name is empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/4 v6, 0x1

    .line 2236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V

    .line 2241
    :goto_1
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settingsRestored: success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    if-eqz v6, :cond_2

    .line 2243
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto/16 :goto_0

    .line 2247
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2238
    :cond_5
    :try_start_3
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "settingsRestored: attempting to restore named resource"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    goto :goto_1

    .line 2258
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public switchPersonaWallpaper(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "forced"    # Z

    .prologue
    .line 2690
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2692
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2693
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2694
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2695
    return-void

    .line 2693
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 978
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 979
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 980
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 982
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_0

    .line 983
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 984
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 986
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 987
    monitor-exit v2

    .line 988
    return-void

    .line 987
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 991
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 992
    const/4 v6, 0x0

    .line 994
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 996
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_1
    return-void

    .line 994
    :cond_0
    :try_start_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v7

    .line 1000
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 1002
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_3
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    const-string v0, "Failure starting previous wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 1005
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public systemRunning()V
    .locals 6

    .prologue
    .line 819
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->chooseWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 826
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 827
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 828
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 829
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->registerSimChangedReceiver()V

    .line 830
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->registerBackupRestoreReceiver()V

    .line 831
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 832
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 855
    .local v1, "mPersona":Landroid/os/PersonaManager;
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/PersonaManager;)V

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 921
    :goto_1
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v7, 0x0

    .line 1545
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    .line 1546
    .local v0, "SimStatusFlag":I
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1549
    :cond_0
    :try_start_0
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1550
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1551
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1552
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1559
    :cond_1
    const/4 v4, 0x0

    .line 1560
    .local v4, "file":Ljava/io/File;
    const-string v6, ""

    .line 1561
    .local v6, "nFile":Ljava/lang/String;
    const-string v5, ""

    .line 1564
    .local v5, "fileName":Ljava/lang/String;
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_2

    .line 1565
    const/4 v0, 0x0

    .line 1568
    :cond_2
    if-eqz v0, :cond_3

    .line 1569
    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1570
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1574
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaper_desktop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1578
    :cond_4
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1581
    .restart local v4    # "file":Ljava/io/File;
    const/high16 v8, 0x3c000000    # 0.0078125f

    invoke-static {v4, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1583
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1584
    const-string v8, "!SELinux.restorecon "

    invoke-virtual {p0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v3, v7

    .line 1593
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1587
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "nFile":Ljava/lang/String;
    :cond_5
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1589
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1590
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "WallpaperManagerService"

    const-string v9, "Error setting wallpaper"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1591
    const-string/jumbo v8, "updateWallpaperBitmapLocked  Error setting wallpaper "

    invoke-virtual {p0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v3, v7

    .line 1593
    goto :goto_0
.end method

.method updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v6, 0x0

    .line 1605
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1607
    :cond_0
    :try_start_0
    iget v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1608
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1609
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1610
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f9

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1615
    :cond_1
    const/4 v3, 0x0

    .line 1616
    .local v3, "file":Ljava/io/File;
    const-string v5, ""

    .line 1617
    .local v5, "nFile":Ljava/lang/String;
    const-string v4, ""

    .line 1618
    .local v4, "fileName":Ljava/lang/String;
    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    if-eqz v7, :cond_2

    .line 1619
    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1620
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wallpaper"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wallpaper_desktop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1628
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1630
    .restart local v3    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v8, 0x3c000000    # 0.0078125f

    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1632
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_5

    .line 1634
    if-eqz v2, :cond_4

    .line 1635
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    move-object v2, v6

    .line 1649
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1642
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    :cond_5
    :try_start_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1645
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1646
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error setting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    const-string/jumbo v7, "updateWallpaperBitmapLockedForSet  Error setting wallpaper "

    invoke-virtual {p0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    move-object v2, v6

    .line 1649
    goto :goto_1

    .line 1637
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public writeResetLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1077
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;Z)V

    .line 1078
    return-void
.end method

.method public writeResetLog(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "flush"    # Z

    .prologue
    .line 1081
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/log/wallpaper_log.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1083
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1085
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1086
    .local v4, "out":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1087
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1088
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "dateString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1092
    if-eqz p2, :cond_1

    .line 1093
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1094
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " writeResetLogException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
