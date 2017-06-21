.class public Lcom/android/server/desktop/DesktopService;
.super Lcom/samsung/android/desktop/IDesktop$Stub;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktop/DesktopService$DeviceConnectReceiver;,
        Lcom/android/server/desktop/DesktopService$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "backupinfo"

.field private static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field private static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final MSG_SAVE_CURRENT_HOME_STATE:I = 0x3e9

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CLASS_NAME:Ljava/lang/String; = "class-name"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "package-name"


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/desktop/IDesktopStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopDockObserver:Landroid/os/FileObserver;

.field private mDesktopLauncherComponent:Landroid/content/ComponentName;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasExternalDisplay:Z

.field private mIsBTKeyboardConnected:Z

.field private mIsBTMouseConnected:Z

.field private mIsDesktopDockConnected:Z

.field private mIsInstalledLauncher:Z

.field private mIsKnoxDesktopMode:Z

.field private mIsUSBKeyboardConnected:Z

.field private mIsUSBMouseConnected:Z

.field private final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSupportMultiDensityAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;-><init>()V

    .line 58
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.desktoplauncher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    .line 60
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    .line 62
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    .line 63
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSystemResources:Landroid/content/res/Resources;

    .line 64
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    .line 65
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 68
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    .line 69
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    .line 70
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    .line 72
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    .line 73
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    .line 74
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    .line 75
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    .line 76
    iput-boolean v8, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    .line 78
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 79
    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    .line 470
    new-instance v4, Lcom/android/server/desktop/DesktopService$2;

    invoke-direct {v4, p0}, Lcom/android/server/desktop/DesktopService$2;-><init>(Lcom/android/server/desktop/DesktopService;)V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 673
    new-instance v4, Lcom/android/server/desktop/DesktopService$3;

    invoke-direct {v4, p0}, Lcom/android/server/desktop/DesktopService$3;-><init>(Lcom/android/server/desktop/DesktopService;)V

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mSystemResources:Landroid/content/res/Resources;

    .line 89
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->initDesktopDockObserver()V

    .line 91
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->checkDesktopLauncher()V

    .line 94
    new-instance v3, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;-><init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V

    .line 95
    .local v3, "packageStateReceiver":Lcom/android/server/desktop/DesktopService$PackageStateReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v2, "filterPackage":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v0, Lcom/android/server/desktop/DesktopService$DeviceConnectReceiver;

    invoke-direct {v0, p0, v7}, Lcom/android/server/desktop/DesktopService$DeviceConnectReceiver;-><init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V

    .line 104
    .local v0, "deviceConnectReceiver":Lcom/android/server/desktop/DesktopService$DeviceConnectReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v1, "filterDevice":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v4, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v4, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 111
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v5, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsBTKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/desktop/DesktopService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateExternalMonitorStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktop/DesktopService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->setDesktopDockState(Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/desktop/DesktopService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktop/DesktopService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/desktop/DesktopService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    return p1
.end method

.method private applyMultiDensityAppList(Z)V
    .locals 9
    .param p1, "add"    # Z

    .prologue
    .line 444
    const/16 v0, 0xf0

    .line 446
    .local v0, "CUSTOM_DENSITY":I
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 447
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    .line 448
    const/4 v6, 0x0

    .line 454
    .local v6, "strings":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 455
    move-object v1, v6

    .local v1, "arr$":Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 456
    .local v5, "string":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "arr$":Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mSupportMultiDensityAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 462
    .local v4, "processName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 463
    invoke-static {}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->getInstance()Lcom/samsung/android/multidensity/MultiDensityGlobal;

    move-result-object v7

    const/16 v8, 0xf0

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->setApplication(Ljava/lang/String;I)Z

    goto :goto_1

    .line 465
    :cond_1
    invoke-static {}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->getInstance()Lcom/samsung/android/multidensity/MultiDensityGlobal;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->removeApplication(Ljava/lang/String;)Z

    goto :goto_1

    .line 468
    .end local v4    # "processName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkDesktopLauncher()V
    .locals 4

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    .local v1, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 221
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    const-string v2, "com.sec.android.app.desktoplauncher"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private disableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KNOXDESKTOP_DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v1, "android.intent.extra.KNOXDESKTOP_CHANGED_BY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    invoke-virtual {p0, v3}, Lcom/android/server/desktop/DesktopService;->setKnoxDesktopMode(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method private enableKnoxDesktopMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KNOXDESKTOP_DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KNOXDESKTOP_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v1, "android.intent.extra.KNOXDESKTOP_CHANGED_BY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 292
    invoke-virtual {p0, v3}, Lcom/android/server/desktop/DesktopService;->setKnoxDesktopMode(Z)V

    .line 294
    :cond_0
    return-void
.end method

.method private initDesktopDockObserver()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/android/server/desktop/DesktopService$1;

    const-string v1, "/dev/"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktop/DesktopService$1;-><init>(Lcom/android/server/desktop/DesktopService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    .line 207
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mDesktopDockObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 208
    return-void
.end method

.method private isFactoryBinary()Z
    .locals 3

    .prologue
    .line 323
    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadCurrentHome()Landroid/content/ComponentName;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 637
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    .line 639
    .local v2, "items":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 641
    :try_start_0
    const-string v6, "com.sec.android.app.desktoplauncher"

    invoke-static {v6}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 642
    .local v0, "cacheDirs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "backupinfo"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 646
    .local v4, "reader":Landroid/util/JsonReader;
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 647
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 648
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v6, "package-name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 650
    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 659
    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    aget-object v6, v2, v10

    if-eqz v6, :cond_1

    aget-object v6, v2, v11

    if-eqz v6, :cond_1

    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v2, v11

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 665
    :cond_1
    const/4 v6, 0x0

    .line 668
    :goto_2
    return-object v6

    .line 651
    .restart local v0    # "cacheDirs":[Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "reader":Landroid/util/JsonReader;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v6, "class-name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 652
    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 662
    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    .end local v5    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 654
    .restart local v0    # "cacheDirs":[Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "reader":Landroid/util/JsonReader;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 657
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 668
    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Landroid/util/JsonReader;
    :cond_5
    new-instance v6, Landroid/content/ComponentName;

    aget-object v7, v2, v10

    aget-object v8, v2, v11

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private notifyDesktopDockState(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 237
    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 238
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 239
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 241
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 242
    .local v0, "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/IDesktopStateCallback;->onDesktopDockState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v0    # "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 247
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 248
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    return-void
.end method

.method private notifyKnoxDesktopModeState(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    iget-object v5, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 253
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 254
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 256
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 257
    .local v0, "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/IDesktopStateCallback;->onDesktopModeState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v0    # "cb":Lcom/samsung/android/desktop/IDesktopStateCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 263
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 262
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 263
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    return-void
.end method

.method private removeAllTasksToRelaunch()V
    .locals 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 438
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, -0x1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 441
    :cond_0
    return-void
.end method

.method private setDesktopDockState(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 211
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopState(), connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->notifyDesktopDockState(Z)V

    .line 215
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V

    .line 216
    return-void
.end method

.method private showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 507
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string/jumbo v3, "err"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 515
    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    const-class v2, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 516
    return-void

    .line 507
    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private updateExternalMonitorStatus()V
    .locals 8

    .prologue
    .line 487
    iget-object v6, p0, Lcom/android/server/desktop/DesktopService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    .line 488
    .local v5, "mDisplays":[Landroid/view/Display;
    const/4 v2, 0x0

    .line 490
    .local v2, "isExternalDisplayConnected":Z
    move-object v0, v5

    .local v0, "arr$":[Landroid/view/Display;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 491
    .local v4, "mDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 493
    :cond_0
    const/4 v2, 0x1

    .line 490
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v4    # "mDisplay":Landroid/view/Display;
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mHasExternalDisplay:Z

    .line 498
    return-void
.end method

.method private updateKnoxDesktopModeState()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/server/desktop/DesktopService;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsBTMouseConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsUSBMouseConnected:Z

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->enableKnoxDesktopMode()V

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_1
    const-string v0, "DesktopLauncher is not installed"

    const-string v1, "Please install DesktopLauncher"

    invoke-direct {p0, v0, v1}, Lcom/android/server/desktop/DesktopService;->showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->disableKnoxDesktopMode()V

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->disableKnoxDesktopMode()V

    goto :goto_0
.end method


# virtual methods
.method public changeToGalaxyDesktopLauncher()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 520
    iget-object v12, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 521
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-nez v9, :cond_0

    .line 572
    :goto_0
    return v10

    .line 526
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "allHomeCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 528
    .local v3, "currentLauncherComponent":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    new-array v5, v12, [Landroid/content/ComponentName;

    .line 529
    .local v5, "homeComponentSet":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 530
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 531
    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 532
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v5, v7

    .line 536
    if-nez v3, :cond_1

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.sec.android.app.easylauncher"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 538
    move-object v3, v0

    .line 529
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 541
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v2    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    aput-object v13, v5, v12

    .line 544
    if-nez v3, :cond_3

    .line 545
    sget-object v11, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    const-string v12, "changeToGalaxyDesktopLauncher() : Failed to get current Launcher"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/desktop/DesktopService;->saveCurrentHome(Landroid/content/ComponentName;)V

    .line 552
    sget-object v10, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeToGalaxyDesktopLauncher() currentLauncher = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_0
    iget-object v10, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 566
    .local v6, "homeFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 567
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 569
    const/high16 v10, 0x100000

    iget-object v12, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {v9, v6, v10, v5, v12}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    move v10, v11

    .line 572
    goto/16 :goto_0

    .line 558
    .end local v6    # "homeFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v4

    .line 559
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "DesktopLauncher is not installed"

    const-string v12, "Please install DesktopLauncher"

    invoke-direct {p0, v10, v12}, Lcom/android/server/desktop/DesktopService;->showHeadsUpNotification(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 561
    goto/16 :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    .line 122
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopDockConnected(), really connected is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isInstalledDesktopLauncher()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-boolean v1, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "desktop_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public readDataFromDock()B
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/android/server/desktop/DesktopNative;->readDevice()B

    move-result v0

    return v0
.end method

.method public registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktop/IDesktopStateCallback;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 159
    monitor-exit v2

    .line 160
    return v0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreToPreviousLauncher()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 577
    iget-object v12, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 578
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_0

    .line 620
    :goto_0
    return v11

    .line 584
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->loadCurrentHome()Landroid/content/ComponentName;

    move-result-object v4

    .line 592
    .local v4, "currentLauncherComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 594
    :cond_1
    sget-object v12, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreToPreviousLauncher() select other launcher, currentLauncher = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .end local v4    # "currentLauncherComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v5

    .line 587
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 599
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "currentLauncherComponent":Landroid/content/ComponentName;
    :cond_2
    sget-object v11, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreToPreviousLauncher() currentLauncher = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v1, "allHomeCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 604
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [Landroid/content/ComponentName;

    .line 605
    .local v6, "homeComponentSet":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 606
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 607
    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 608
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v6, v8

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v2    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 614
    .local v7, "homeFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 615
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 616
    iget-object v11, p0, Lcom/android/server/desktop/DesktopService;->mDesktopLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 617
    const/high16 v11, 0x100000

    invoke-virtual {v10, v7, v11, v6, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 620
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public saveCurrentHome(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 633
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 632
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKnoxDesktopMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 309
    sget-object v0, Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKnoxDesktopMode(), enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iput-boolean p1, p0, Lcom/android/server/desktop/DesktopService;->mIsKnoxDesktopMode:Z

    .line 313
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "desktop_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    invoke-direct {p0}, Lcom/android/server/desktop/DesktopService;->removeAllTasksToRelaunch()V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->applyMultiDensityAppList(Z)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService;->notifyKnoxDesktopModeState(Z)V

    .line 320
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public turnOnMainLCD(Z)V
    .locals 2
    .param p1, "turnOn"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/desktop/DesktopService;->mPowerManager:Landroid/os/PowerManager;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setForceUnblankDisplay(Z)V

    .line 178
    return-void
.end method

.method public unregisterStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktop/IDesktopStateCallback;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktop/DesktopService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 168
    monitor-exit v2

    .line 169
    return v0

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeDataToDock(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 146
    invoke-static {p1}, Lcom/android/server/desktop/DesktopNative;->writeDevice(I)Z

    move-result v0

    return v0
.end method
