.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRONT_LED_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.frontled.FrontLEDManagerService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isMobilePaymentAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDesktopSystemService:Lcom/android/server/desktop/DesktopSystemService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPluginManager:Landroid/app/epm/PluginManager;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field safeModeValueForTheme:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_ELASTIC_ENABLED:Z

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    .line 387
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 560
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 561
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 562
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 563
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 383
    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 543
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 546
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 549
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 550
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 557
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 552
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 538
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    return-void
.end method

.method private run()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x1

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 396
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 408
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 422
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 431
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 446
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 447
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 456
    :cond_3
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 460
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 464
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 468
    invoke-static {v10}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 471
    invoke-static {v10}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 478
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 479
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 482
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 495
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 498
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 499
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 504
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 505
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.galaxybetaservice"

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 523
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_5

    .line 524
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 525
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_6
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 440
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v7

    .line 508
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    throw v7

    .line 528
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 576
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 579
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 581
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 582
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 588
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 592
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 595
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 599
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 602
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 605
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 622
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v2, "SystemServer"

    const-string v4, "!@Boot: Start PackageManagerService"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 626
    const-string v2, "SystemServer"

    const-string v3, "!@Boot: End PackageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 628
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 630
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 634
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 637
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 642
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 643
    return-void

    .line 609
    :cond_1
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 624
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 653
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 654
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 657
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 660
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 661
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2741
    const/4 v4, 0x0

    .line 2742
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2743
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 2746
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2749
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2750
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2752
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2754
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2755
    const-string/jumbo v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2756
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2765
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2758
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2759
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2762
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2763
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2797
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2800
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2801
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return-void

    .line 2802
    :catch_0
    move-exception v0

    .line 2803
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2793
    return-void
.end method

.method private startOtherServices()V
    .locals 214

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 672
    .local v5, "context":Landroid/content/Context;
    const/16 v42, 0x0

    .line 673
    .local v42, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v79, 0x0

    .line 674
    .local v79, "contentService":Lcom/android/server/content/ContentService;
    const/16 v201, 0x0

    .line 675
    .local v201, "vibrator":Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 676
    .local v44, "alarm":Landroid/app/IAlarmManager;
    const/16 v153, 0x0

    .line 677
    .local v153, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 678
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 679
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v158, 0x0

    .line 680
    .local v158, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v69, 0x0

    .line 681
    .local v69, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v159, 0x0

    .line 682
    .local v159, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v183, 0x0

    .line 683
    .local v183, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v213, 0x0

    .line 684
    .local v213, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v199, 0x0

    .line 685
    .local v199, "usb":Lcom/android/server/usb/UsbService;
    const/16 v181, 0x0

    .line 686
    .local v181, "serial":Lcom/android/server/SerialService;
    const/16 v162, 0x0

    .line 687
    .local v162, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v66, 0x0

    .line 688
    .local v66, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v128, 0x0

    .line 689
    .local v128, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v188, 0x0

    .line 690
    .local v188, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v77, 0x0

    .line 692
    .local v77, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v88, 0x0

    .line 694
    .local v88, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v139, 0x0

    .line 695
    .local v139, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v51, 0x0

    .line 696
    .local v51, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v91, 0x0

    .line 697
    .local v91, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v113, 0x0

    .line 698
    .local v113, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v150, 0x0

    .line 699
    .local v150, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v109, 0x0

    .line 700
    .local v109, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v54, 0x0

    .line 702
    .local v54, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v170, 0x0

    .line 704
    .local v170, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v193, 0x0

    .line 705
    .local v193, "timaService":Lcom/android/server/TimaService;
    const/16 v167, 0x0

    .line 706
    .local v167, "pkmService":Lcom/android/server/PKMService;
    const/16 v191, 0x0

    .line 708
    .local v191, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v84, 0x0

    .line 711
    .local v84, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    const/16 v141, 0x0

    .line 712
    .local v141, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v143, 0x0

    .line 716
    .local v143, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v179, 0x0

    .line 717
    .local v179, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v177, 0x0

    .line 720
    .local v177, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v101, 0x0

    .line 723
    .local v101, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v90, 0x0

    .line 726
    .local v90, "dLSManager":Lcom/android/server/LSManager;
    const/16 v211, 0x0

    .line 736
    .local v211, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 737
    .local v99, "disableStorage":Z
    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 738
    .local v93, "disableBluetooth":Z
    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 739
    .local v95, "disableLocation":Z
    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 740
    .local v100, "disableSystemUI":Z
    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 741
    .local v98, "disableNonCoreServices":Z
    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 742
    .local v96, "disableNetwork":Z
    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 743
    .local v97, "disableNetworkTime":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v132

    .line 748
    .local v132, "isEmulator":Z
    const/16 v92, 0x1

    .line 751
    .local v92, "disableAtlas":Z
    :try_start_0
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 754
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 759
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v189, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_83

    .line 761
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v189, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v189

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 763
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v110, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v110

    invoke-direct {v0, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_84

    .line 767
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v110, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v200

    .line 768
    .local v200, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v200

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 770
    :try_start_3
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v141

    .line 772
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v141

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 783
    :cond_0
    :goto_0
    :try_start_4
    const-string v6, "SystemServer"

    const-string v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 791
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 793
    const-string v6, "SystemServer"

    const-string v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 799
    :try_start_6
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v43, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 801
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v43, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_7
    const-string v6, "account"

    move-object/from16 v0, v43

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_85

    move-object/from16 v42, v43

    .line 807
    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2
    :try_start_8
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v142

    .line 808
    .local v142, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v142

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_1

    .line 819
    :cond_1
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41

    const/4 v6, 0x1

    :goto_3
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v79

    .line 825
    new-instance v89, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 827
    .end local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v89, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_9
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 828
    const-string v6, "DirEncryptService"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_86

    :cond_2
    move-object/from16 v88, v89

    .line 852
    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_4
    :try_start_a
    const-string v6, "SystemServer"

    const-string v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 854
    :try_start_b
    invoke-static {v5}, Lcom/android/server/SystemServer;->startSecurityManagerService(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 861
    :goto_5
    :try_start_c
    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 863
    :try_start_d
    const-string v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 871
    :goto_6
    :try_start_e
    const-string v6, "SystemServer"

    const-string v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 873
    :try_start_f
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 882
    :goto_7
    :try_start_10
    const-string v6, "SystemServer"

    const-string v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 884
    :try_start_11
    const-string v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 893
    :goto_8
    :try_start_12
    const-string v6, "SystemServer"

    const-string v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 895
    :try_start_13
    const-string v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 902
    :goto_9
    :try_start_14
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    .line 906
    :try_start_15
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 907
    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 912
    :goto_a
    :try_start_16
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    new-instance v202, Lcom/android/server/VibratorService;

    move-object/from16 v0, v202

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    .line 914
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .local v202, "vibrator":Lcom/android/server/VibratorService;
    :try_start_17
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v202

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 917
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 918
    const-string v6, "SystemServer"

    const-string v7, "Tw ToolBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v196, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v196

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 920
    .local v196, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v6, "tw_toolbox"

    move-object/from16 v0, v196

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 931
    .end local v196    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_3
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_c

    move-result v190

    .line 932
    .local v190, "timaEnabled":Z
    if-eqz v190, :cond_4

    .line 934
    :try_start_18
    const-string v6, "SystemServer"

    const-string v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 938
    new-instance v194, Lcom/android/server/TimaService;

    move-object/from16 v0, v194

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_c

    .line 939
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .local v194, "timaService":Lcom/android/server/TimaService;
    :try_start_19
    const-string/jumbo v6, "tima"

    move-object/from16 v0, v194

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 941
    new-instance v168, Lcom/android/server/PKMService;

    move-object/from16 v0, v168

    invoke-direct {v0, v5}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_87

    .line 942
    .end local v167    # "pkmService":Lcom/android/server/PKMService;
    .local v168, "pkmService":Lcom/android/server/PKMService;
    :try_start_1a
    const-string/jumbo v6, "pkm"

    move-object/from16 v0, v168

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_88

    move-object/from16 v167, v168

    .end local v168    # "pkmService":Lcom/android/server/PKMService;
    .restart local v167    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v193, v194

    .line 947
    .end local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    :goto_b
    const/16 v6, -0x13

    :try_start_1b
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 951
    :try_start_1c
    const-string v6, "SystemServer"

    const-string v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v192, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v192

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_c

    .end local v191    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v192, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v191, v192

    .line 960
    .end local v192    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v191    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_c
    :try_start_1d
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v195

    .line 961
    .local v195, "timaversion":Z
    if-eqz v195, :cond_4

    .line 964
    const/16 v124, 0x0

    .line 965
    .local v124, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v124, Lcom/android/server/IcccManagerService;

    .end local v124    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 966
    .restart local v124    # "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v124

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 968
    const-string v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_c

    .line 970
    :try_start_1e
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v125

    .line 971
    .local v125, "iccc_result":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getTrustedBootData result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v125

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-nez v125, :cond_42

    .line 974
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v124

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_c

    .line 987
    .end local v125    # "iccc_result":I
    :goto_d
    :try_start_1f
    const-string/jumbo v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v134

    .line 989
    .local v134, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v134 .. v134}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 990
    const-string v6, "SystemServer"

    const-string v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 994
    const-string/jumbo v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v35

    .line 996
    .local v35, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 997
    const-string v6, "SystemServer"

    const-string v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_c

    .line 1015
    .end local v35    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v124    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v134    # "keyStoreClass":Ljava/lang/Class;
    .end local v195    # "timaversion":Z
    :cond_4
    :goto_e
    :try_start_20
    const-string v6, "SystemServer"

    const-string v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_c

    .line 1025
    :goto_f
    :try_start_21
    const-string v6, "SystemServer"

    const-string v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_c

    .line 1032
    :goto_10
    :try_start_22
    const-string v6, "SystemServer"

    const-string v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_c

    .line 1034
    :try_start_23
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1035
    .local v56, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1036
    .local v55, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v6, v7

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 1037
    .local v57, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v10, v6, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v184

    check-cast v184, Landroid/os/IBinder;

    .line 1038
    .local v184, "ssrmService":Landroid/os/IBinder;
    const-string v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v184

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_c

    .line 1044
    .end local v55    # "cfmsClass":Ljava/lang/Class;
    .end local v56    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v57    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v184    # "ssrmService":Landroid/os/IBinder;
    :goto_11
    :try_start_24
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v78, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_c

    .line 1046
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v78, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_25
    const-string/jumbo v6, "consumer_ir"

    move-object/from16 v0, v78

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 1049
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v44

    .line 1052
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v207

    .line 1054
    .local v207, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v207

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1056
    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v129, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_89

    .line 1059
    .end local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v129, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_26
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1060
    const-string v6, "SystemServer"

    const-string v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string/jumbo v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_14

    .line 1065
    :cond_5
    :try_start_27
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1067
    :cond_6
    const-string v6, "SystemServer"

    const-string v7, "SContext Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v176, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v176

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1069
    .local v176, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "android.hardware.scontext.SContextService"

    move-object/from16 v0, v176

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v62

    .line 1070
    .local v62, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v75

    .line 1071
    .local v75, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_14

    .line 1078
    .end local v62    # "class_SContextService":Ljava/lang/Class;
    .end local v75    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v176    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_7
    :goto_12
    :try_start_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_14

    move-result v6

    if-eqz v6, :cond_8

    .line 1080
    :try_start_29
    const-string v6, "SystemServer"

    const-string v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v53, Landroid/app/BarBeamService;

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1083
    .local v53, "barbeam":Landroid/app/BarBeamService;
    const-string v6, "barbeam"

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_14

    .line 1095
    .end local v53    # "barbeam":Landroid/app/BarBeamService;
    :cond_8
    :goto_13
    const/4 v6, 0x0

    :try_start_2a
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 1105
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_43

    const/4 v6, 0x1

    move v7, v6

    :goto_14
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v6, :cond_44

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v129

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v213

    .line 1109
    const-string/jumbo v6, "window"

    move-object/from16 v0, v213

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1110
    const-string/jumbo v6, "input"

    move-object/from16 v0, v129

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v213

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1122
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1123
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1131
    if-eqz v132, :cond_45

    .line 1132
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_16
    const-string v6, "SystemServer"

    const-string v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_14

    .line 1154
    :try_start_2b
    new-instance v144, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_14

    .line 1155
    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v144, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_2c
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v144

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_8a

    move-object/from16 v143, v144

    .line 1162
    .end local v144    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_17
    :try_start_2d
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_14

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v77, v78

    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v128, v129

    .end local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v201, v202

    .line 1169
    .end local v142    # "mProductName":Ljava/lang/String;
    .end local v190    # "timaEnabled":Z
    .end local v200    # "versionInfo":Landroid/os/Bundle;
    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :goto_18
    const/16 v185, 0x0

    .line 1170
    .local v185, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v164, 0x0

    .line 1171
    .local v164, "notification":Landroid/app/INotificationManager;
    const/16 v126, 0x0

    .line 1172
    .local v126, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v205, 0x0

    .line 1173
    .local v205, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v135, 0x0

    .line 1174
    .local v135, "location":Lcom/android/server/LocationManagerService;
    const/16 v173, 0x0

    .line 1175
    .local v173, "sLocation":Landroid/os/IBinder;
    const/16 v80, 0x0

    .line 1176
    .local v80, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v197, 0x0

    .line 1177
    .local v197, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v137, 0x0

    .line 1179
    .local v137, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v203, 0x0

    .line 1181
    .local v203, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v49, 0x0

    .line 1182
    .local v49, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v147, 0x0

    .line 1185
    .local v147, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v107, 0x0

    .line 1189
    .local v107, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v171, 0x0

    .line 1193
    .local v171, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 1195
    :try_start_2e
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    new-instance v127, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v127

    move-object/from16 v1, v213

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 1197
    .end local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v127, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_2f
    const-string/jumbo v6, "input_method"

    move-object/from16 v0, v127

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_82

    move-object/from16 v126, v127

    .line 1203
    .end local v127    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_19
    :try_start_30
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_18

    .line 1212
    :cond_9
    :goto_1a
    :try_start_31
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 1219
    :goto_1b
    :try_start_32
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v165

    .line 1220
    .local v165, "pM":Landroid/content/pm/PackageManager;
    if-eqz v165, :cond_a

    .line 1221
    const-string v6, "SystemServer"

    const-string v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string/jumbo v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v165

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v165

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v165

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1224
    new-instance v152, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v152

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1225
    .local v152, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v152

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v61

    .line 1226
    .local v61, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v74

    .line 1227
    .local v74, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1228
    const-string v6, "SystemServer"

    const-string v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1a

    .line 1237
    .end local v61    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v74    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v152    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v165    # "pM":Landroid/content/pm/PackageManager;
    :cond_a
    :goto_1c
    const/16 v82, 0x0

    .line 1239
    .local v82, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 1240
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 1241
    .local v86, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v86

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v86

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1242
    :cond_b
    const-string v6, "SystemServer"

    const-string v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v86    # "cryptState":Ljava/lang/String;
    :cond_c
    :goto_1d
    :try_start_33
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v169

    .line 1265
    .local v169, "pm":Landroid/content/pm/PackageManager;
    if-eqz v169, :cond_d

    .line 1266
    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v169

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1267
    const-string v6, "SystemServer"

    const-string v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v172, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v172

    move-object/from16 v1, v128

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1c

    .line 1269
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v172, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_34
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v172

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1270
    move-object/from16 v0, v128

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_80

    move-object/from16 v171, v172

    .line 1289
    .end local v169    # "pm":Landroid/content/pm/PackageManager;
    .end local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_d
    :goto_1e
    const-string v6, "4"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    .line 1291
    :try_start_35
    const-string v6, "SystemServer"

    const-string v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-string v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1293
    const-string v6, "SystemServer"

    const-string v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 1299
    :cond_e
    :goto_1f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    .line 1300
    if-nez v99, :cond_f

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1307
    :try_start_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1308
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    move-result-object v153

    .line 1316
    :cond_f
    :goto_20
    :try_start_37
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    if-eqz v88, :cond_10

    .line 1318
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 1356
    :cond_10
    :goto_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1359
    :try_start_38
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_20

    .line 1365
    :goto_22
    :try_start_39
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1040388

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_7f

    .line 1372
    :goto_23
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_57

    .line 1373
    if-nez v98, :cond_12

    .line 1375
    :try_start_3a
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    new-instance v138, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 1377
    .end local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v138, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_3b
    const-string/jumbo v6, "lock_settings"

    move-object/from16 v0, v138

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_7e

    move-object/from16 v137, v138

    .line 1382
    .end local v138    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_24
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1383
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1386
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1390
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1395
    :cond_12
    :try_start_3c
    const-string v6, "SystemServer"

    const-string v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v140, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 1397
    .end local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v140, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_3d
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v140

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1398
    const-string v6, "SystemServer"

    const-string v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_7d

    move-object/from16 v139, v140

    .line 1407
    .end local v140    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_25
    :try_start_3e
    const-string v6, "SystemServer"

    const-string v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v180, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v180

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 1409
    .end local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v180, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_3f
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v180

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_7c

    move-object/from16 v179, v180

    .line 1414
    .end local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_26
    :try_start_40
    const-string v6, "SystemServer"

    const-string v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    new-instance v178, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v178

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 1416
    .end local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v178, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_41
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v178

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_7b

    move-object/from16 v177, v178

    .line 1426
    .end local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_27
    :try_start_42
    const-string v6, "SystemServer"

    const-string v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    new-instance v102, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 1428
    .end local v101    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v102, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_43
    const-string/jumbo v6, "dlp"

    move-object/from16 v0, v102

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_7a

    move-object/from16 v101, v102

    .line 1435
    .end local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v101    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_28
    if-nez v98, :cond_13

    .line 1437
    :try_start_44
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v108, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    move-object/from16 v0, v108

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 1439
    .end local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v108, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_45
    const-string/jumbo v6, "enterprise_policy"

    move-object/from16 v0, v108

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1440
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_79

    move-object/from16 v107, v108

    .line 1447
    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_29
    if-nez v100, :cond_14

    .line 1449
    :try_start_46
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    new-instance v186, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v186

    move-object/from16 v1, v213

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 1451
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v186, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_47
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v186

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_78

    move-object/from16 v185, v186

    .line 1457
    .end local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_14
    :goto_2a
    if-nez v98, :cond_15

    .line 1459
    :try_start_48
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .line 1479
    :cond_15
    :goto_2b
    if-nez v96, :cond_16

    .line 1481
    :try_start_49
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1483
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 1491
    :cond_16
    :goto_2c
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :try_start_4a
    const-string v6, "SystemServer"

    const-string v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 1503
    :goto_2d
    if-nez v98, :cond_17

    .line 1505
    :try_start_4b
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v198, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v198

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .line 1507
    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v198, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_4c
    const-string/jumbo v6, "textservices"

    move-object/from16 v0, v198

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_77

    move-object/from16 v197, v198

    .line 1513
    .end local v198    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_17
    :goto_2e
    if-nez v96, :cond_56

    .line 1515
    :try_start_4d
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v160, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .line 1517
    .end local v159    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v160, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_4e
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v160

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_76

    move-object/from16 v159, v160

    .line 1523
    .end local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v159    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_2f
    :try_start_4f
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v161, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v161

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .line 1525
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v161, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_50
    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v161

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_75

    move-object/from16 v8, v161

    .line 1531
    .end local v161    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_30
    :try_start_51
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2e

    .line 1536
    .end local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_52
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_74

    .line 1541
    :goto_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1542
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1544
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1550
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1553
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1557
    :try_start_53
    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v70, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2f

    .line 1560
    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v70, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_54
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v70

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1561
    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1562
    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_73

    move-object/from16 v69, v70

    .line 1568
    .end local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_32
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1571
    :try_start_55
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v58

    .line 1573
    .local v58, "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v63

    .line 1574
    .local v63, "class_SmartBondingService":Ljava/lang/Class;
    const-string v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v116

    .line 1576
    .local v116, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v76

    .line 1578
    .local v76, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v116

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v76

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1579
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_30

    .line 1586
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v63    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v76    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v116    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :cond_18
    :goto_33
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 1587
    .local v114, "feature":Ljava/lang/String;
    if-eqz v114, :cond_19

    const-string/jumbo v6, "hongbao"

    move-object/from16 v0, v114

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1589
    :try_start_56
    const-string v6, "SystemServer"

    const-string v7, "HongbaoMode Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v58

    .line 1591
    .restart local v58    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v60

    .line 1592
    .local v60, "class_HongbaoModeService":Ljava/lang/Class;
    const-string v6, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v115

    .line 1594
    .local v115, "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v73

    .line 1596
    .local v73, "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v115

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1597
    const-string v6, "SystemServer"

    const-string v7, "HongbaoModeService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_31

    .line 1604
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v60    # "class_HongbaoModeService":Ljava/lang/Class;
    .end local v73    # "constructor_HongbaoModeService":Ljava/lang/reflect/Constructor;
    .end local v115    # "field_HONGBAOMODE_SERVICE":Ljava/lang/reflect/Field;
    :cond_19
    :goto_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1606
    :try_start_57
    const-string v6, "SystemServer"

    const-string v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    new-instance v155, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v155

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1608
    .local v155, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v155

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v154

    .line 1609
    .local v154, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v154

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v156

    .line 1610
    .local v156, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v156

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/os/IBinder;

    .line 1613
    .local v157, "mptcpService":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_32

    .line 1620
    .end local v154    # "mptcpClass":Ljava/lang/Class;
    .end local v155    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v156    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v157    # "mptcpService":Landroid/os/IBinder;
    :cond_1a
    :goto_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1622
    :try_start_58
    const-string v6, "SystemServer"

    const-string v7, "Starting EPDG SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/16 v111, 0x0

    .line 1624
    .local v111, "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "com.sec.epdg.EpdgService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v111

    .line 1625
    if-nez v111, :cond_4b

    .line 1626
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .line 1652
    .end local v111    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    :goto_36
    :try_start_59
    const-string v6, "SystemServer"

    const-string v7, "Starting CLINFO SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/16 v65, 0x0

    .line 1655
    .local v65, "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v59, 0x0

    .line 1657
    .local v59, "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v65, Ldalvik/system/PathClassLoader;

    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "/system/framework/clocinfoservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1660
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    if-nez v65, :cond_4d

    .line 1661
    const-string v6, "SystemServer"

    const-string v7, "clocinfo is not existed"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    .line 1684
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :goto_37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1687
    :try_start_5a
    const-string v6, "SystemServer"

    const-string v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    new-instance v212, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v212

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .line 1689
    .end local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v212, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_5b
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v212

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_72

    move-object/from16 v211, v212

    .line 1697
    .end local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_1c
    :goto_38
    :try_start_5c
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v183

    .line 1699
    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v183

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_36

    .line 1705
    :goto_39
    :try_start_5d
    const-string v6, "SystemServer"

    const-string v7, "DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-static {v5}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_37

    .line 1712
    .end local v114    # "feature":Ljava/lang/String;
    :goto_3a
    if-nez v98, :cond_1d

    .line 1714
    :try_start_5e
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 1727
    :cond_1d
    :goto_3b
    if-eqz v153, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_1e

    .line 1730
    :try_start_5f
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 1731
    invoke-interface/range {v153 .. v153}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_5f} :catch_71

    .line 1737
    :cond_1e
    :goto_3c
    if-eqz v42, :cond_1f

    .line 1738
    :try_start_60
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_39

    .line 1744
    :cond_1f
    :goto_3d
    if-eqz v79, :cond_20

    .line 1745
    :try_start_61
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3a

    .line 1750
    :cond_20
    :goto_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1751
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v164

    .line 1753
    move-object/from16 v0, v164

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1757
    if-nez v95, :cond_21

    .line 1759
    :try_start_62
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    new-instance v136, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3b

    .line 1761
    .end local v135    # "location":Lcom/android/server/LocationManagerService;
    .local v136, "location":Lcom/android/server/LocationManagerService;
    :try_start_63
    const-string/jumbo v6, "location"

    move-object/from16 v0, v136

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_70

    move-object/from16 v135, v136

    .line 1767
    .end local v136    # "location":Lcom/android/server/LocationManagerService;
    .restart local v135    # "location":Lcom/android/server/LocationManagerService;
    :goto_3f
    :try_start_64
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    new-instance v81, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3c

    .line 1769
    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v81, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_65
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v81

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_6f

    move-object/from16 v80, v81

    .line 1776
    .end local v81    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_21
    :goto_40
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1778
    const/16 v64, 0x0

    .line 1779
    .local v64, "clazz":Ljava/lang/Class;
    :try_start_66
    const-string v6, "SystemServer"

    const-string v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v45

    .line 1781
    .local v45, "apkServiceContext":Landroid/content/Context;
    const-string v6, "SystemServer"

    const-string v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3e

    .line 1783
    :try_start_67
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string/jumbo v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v64

    .line 1784
    const-string v6, "SystemServer"

    const-string v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3e

    .line 1789
    :goto_41
    if-eqz v64, :cond_4f

    .line 1790
    const/4 v6, 0x1

    :try_start_68
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1791
    .local v72, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/4 v6, 0x0

    aput-object v5, v48, v6

    .line 1792
    .local v48, "arglist":[Ljava/lang/Object;
    move-object/from16 v0, v72

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/os/IBinder;

    .line 1793
    .local v123, "ib":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const-string v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v123

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3e

    .line 1805
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v48    # "arglist":[Ljava/lang/Object;
    .end local v64    # "clazz":Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v123    # "ib":Landroid/os/IBinder;
    :cond_22
    :goto_42
    :try_start_69
    const-string v6, "SystemServer"

    const-string v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const-string v6, "com.samsung.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v174

    .line 1807
    .local v174, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    move-object/from16 v0, v174

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v122

    .line 1808
    .local v122, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v122

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v173, v0

    .line 1809
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3f

    .line 1860
    .end local v122    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v174    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_43
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_FRAMEWORK_SUPPORT_CP_POSITIONING=FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    if-nez v98, :cond_23

    .line 1866
    :try_start_6a
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const-string/jumbo v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_40

    .line 1874
    :cond_23
    :goto_44
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v112

    .line 1875
    .local v112, "executableVersion":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute Service Version: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v112

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    if-nez v98, :cond_24

    if-lez v112, :cond_24

    .line 1878
    :try_start_6b
    const-string v6, "SystemServer"

    const-string v7, "Execute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string/jumbo v6, "execute"

    new-instance v7, Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/ExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_41

    .line 1887
    :cond_24
    :goto_45
    :try_start_6c
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string/jumbo v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_42

    .line 1894
    :goto_46
    if-nez v98, :cond_25

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1897
    :try_start_6d
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    new-instance v206, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v206

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_43

    .line 1899
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v206, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_6e
    const-string/jumbo v6, "wallpaper"

    move-object/from16 v0, v206

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_6e

    move-object/from16 v205, v206

    .line 1906
    .end local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_25
    :goto_47
    :try_start_6f
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    new-instance v52, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_44

    .line 1908
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .local v52, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_70
    const-string v6, "audio"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_6d

    move-object/from16 v51, v52

    .line 1913
    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_48
    const/16 v94, 0x0

    .line 1915
    .local v94, "disableDockObserver":Z
    :try_start_71
    new-instance v117, Ljava/io/File;

    const-string v6, "/sys/class/switch/dock/state"

    move-object/from16 v0, v117

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1916
    .local v117, "file":Ljava/io/File;
    invoke-virtual/range {v117 .. v117}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_26

    .line 1917
    const-string v6, "SystemServer"

    const-string v7, "This kernel does not have dock station support , Do not Start DockObserver"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_45

    .line 1918
    const/16 v94, 0x1

    .line 1924
    .end local v117    # "file":Ljava/io/File;
    :cond_26
    :goto_49
    if-nez v98, :cond_27

    if-nez v94, :cond_27

    .line 1925
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1929
    :cond_27
    :try_start_72
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v128

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v128

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_46

    .line 1937
    :goto_4a
    if-nez v98, :cond_2b

    .line 1938
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1940
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1943
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1947
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1951
    :cond_2a
    :try_start_73
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    new-instance v182, Lcom/android/server/SerialService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_47

    .line 1954
    .end local v181    # "serial":Lcom/android/server/SerialService;
    .local v182, "serial":Lcom/android/server/SerialService;
    :try_start_74
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v182

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_6c

    move-object/from16 v181, v182

    .line 1964
    .end local v182    # "serial":Lcom/android/server/SerialService;
    .restart local v181    # "serial":Lcom/android/server/SerialService;
    :cond_2b
    :goto_4b
    :try_start_75
    const-string v6, "SystemServer"

    const-string v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_48

    .line 1972
    :goto_4c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1974
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1976
    if-nez v98, :cond_2f

    .line 1977
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1978
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1981
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1982
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1985
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1986
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1989
    :cond_2e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1990
    const-string v6, "SystemServer"

    const-string v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1995
    :cond_2f
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1996
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const-string/jumbo v6, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 2000
    :try_start_76
    const-string v6, "SystemServer"

    const-string v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/16 v106, 0x0

    .line 2002
    .local v106, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v106

    .line 2003
    if-nez v106, :cond_50

    .line 2004
    const-string v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_49

    .line 2020
    .end local v106    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    :goto_4d
    :try_start_77
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_4a

    .line 2029
    :goto_4e
    :try_start_78
    const-string v6, "SystemServer"

    const-string v7, "UCM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    new-instance v85, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_4b

    .line 2031
    .end local v84    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .local v85, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :try_start_79
    const-string v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, v85

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_6b

    move-object/from16 v84, v85

    .line 2039
    .end local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v84    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :goto_4f
    :try_start_7a
    const-string v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const/16 v145, 0x0

    .line 2041
    .local v145, "mdnieClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v145

    .line 2042
    if-nez v145, :cond_51

    .line 2043
    const-string v6, "SystemServer"

    const-string v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4c

    .line 2055
    .end local v145    # "mdnieClass":Ljava/lang/Class;
    :goto_50
    :try_start_7b
    const-string v6, "SystemServer"

    const-string v7, "DisplaySolution Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/16 v103, 0x0

    .line 2057
    .local v103, "dsClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.displaysolution.DisplaySolutionManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v103

    .line 2058
    if-nez v103, :cond_52

    .line 2059
    const-string v6, "SystemServer"

    const-string v7, "DisplaySolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4d

    .line 2071
    .end local v103    # "dsClass":Ljava/lang/Class;
    :goto_51
    :try_start_7c
    const-string v6, "SystemServer"

    const-string v7, "AAS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/16 v40, 0x0

    .line 2073
    .local v40, "aasClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.allaroundsensing.AASManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 2074
    if-nez v40, :cond_53

    .line 2075
    const-string v6, "SystemServer"

    const-string v7, "AAS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4e

    .line 2088
    .end local v40    # "aasClass":Ljava/lang/Class;
    :goto_52
    :try_start_7d
    const-string v6, "SystemServer"

    const-string v7, "Starting SpenGestureManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v213

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4f

    .line 2103
    :goto_53
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v187

    .line 2105
    .local v187, "supportAODFeatureVersion":I
    const/4 v6, 0x2

    move/from16 v0, v187

    if-lt v0, v6, :cond_31

    .line 2106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.aod.AODManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2124
    :cond_31
    :try_start_7e
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_50

    .line 2131
    :goto_54
    if-nez v96, :cond_32

    if-nez v97, :cond_32

    .line 2133
    :try_start_7f
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    new-instance v163, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_51

    .end local v162    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v163, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v162, v163

    .line 2149
    .end local v163    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v162    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_32
    :goto_55
    :try_start_80
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    new-instance v67, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_52

    .line 2151
    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v67, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_81
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_6a

    move-object/from16 v66, v67

    .line 2156
    .end local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_56
    if-nez v96, :cond_33

    .line 2158
    :try_start_82
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_53

    .line 2165
    :cond_33
    :goto_57
    if-nez v98, :cond_34

    .line 2167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2170
    :cond_34
    if-nez v98, :cond_35

    if-nez v92, :cond_35

    .line 2172
    :try_start_83
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    new-instance v50, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_54

    .line 2174
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v50, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_84
    const-string v6, "assetatlas"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_69

    move-object/from16 v49, v50

    .line 2180
    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_35
    :goto_58
    if-nez v98, :cond_36

    .line 2181
    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2185
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2186
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2189
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2191
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2193
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2197
    :cond_38
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2198
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2201
    :cond_39
    if-nez v98, :cond_3a

    .line 2203
    :try_start_85
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    new-instance v148, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_55

    .line 2205
    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v148, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_86
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v148

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_68

    move-object/from16 v147, v148

    .line 2210
    .end local v148    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_59
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2212
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2215
    :try_start_87
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_56

    .line 2225
    :cond_3a
    :goto_5a
    :try_start_88
    const-string v6, "SystemServer"

    const-string v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 2227
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_57

    .line 2233
    :goto_5b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2262
    const-string/jumbo v6, "ro.bluetooth.wipower"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v133

    .line 2264
    .local v133, "isWipowerEnabled":Z
    if-eqz v133, :cond_54

    .line 2266
    :try_start_89
    const-string/jumbo v39, "wbc_service"

    .line 2267
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v6, "SystemServer"

    const-string v7, "WipowerBatteryControl Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v209, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v209

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2272
    .local v209, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v209

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v208

    .line 2273
    .local v208, "wbcClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v208

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v87

    .line 2274
    .local v87, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v87

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v210

    .line 2275
    .local v210, "wbcObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded WbcService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const-string/jumbo v6, "wbc_service"

    check-cast v210, Landroid/os/IBinder;

    .end local v210    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v210

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_58

    .line 2287
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v87    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v208    # "wbcClass":Ljava/lang/Class;
    .end local v209    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_5c
    :try_start_8a
    const-string v6, "SystemServer"

    const-string v7, "MiniModeAppManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 2290
    .local v130, "instructionSet":Ljava/lang/String;
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v6, "/system/framework/minimode.jar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/dalvik-cache/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v130

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v6, v7, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2292
    .restart local v58    # "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 2293
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 2294
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "mini_mode_app_manager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_59

    .line 2303
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v130    # "instructionSet":Ljava/lang/String;
    :goto_5d
    :try_start_8b
    const-string v6, "SystemServer"

    const-string v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_5a

    .line 2311
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v94    # "disableDockObserver":Z
    .end local v112    # "executableVersion":I
    .end local v133    # "isWipowerEnabled":Z
    .end local v187    # "supportAODFeatureVersion":I
    :goto_5e
    if-nez v98, :cond_3b

    .line 2312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2316
    :cond_3b
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2318
    :try_start_8c
    new-instance v46, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 2319
    .local v46, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v6, "SamsungAppDisabler"

    move-object/from16 v0, v46

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_5b

    .line 2328
    .end local v46    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3c
    :goto_5f
    :try_start_8d
    const-string v6, "SystemServer"

    const-string v7, "Lpnet Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const-string/jumbo v6, "lpnet"

    new-instance v7, Lcom/android/server/LpnetManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_5c

    .line 2338
    :goto_60
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v175

    .line 2339
    .local v175, "safeMode":Z
    move/from16 v0, v175

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2340
    if-eqz v175, :cond_55

    .line 2341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2344
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2351
    :goto_61
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v150

    .end local v150    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v150, Lcom/android/server/MmsServiceBroker;

    .line 2376
    .restart local v150    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_8e
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    new-instance v119, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/gamemanager.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2378
    .local v119, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v119

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v118

    .line 2379
    .local v118, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v118

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v120

    .line 2380
    .local v120, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v120

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/os/IBinder;

    .line 2381
    .local v121, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2382
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5d

    .line 2391
    .end local v118    # "gamemanagerClass":Ljava/lang/Class;
    .end local v119    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v120    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v121    # "gamemanagerService":Landroid/os/IBinder;
    :goto_62
    :try_start_8f
    invoke-virtual/range {v201 .. v201}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5e

    .line 2396
    :goto_63
    if-eqz v137, :cond_3d

    .line 2398
    :try_start_90
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5f

    .line 2405
    :cond_3d
    :goto_64
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2410
    if-eqz v107, :cond_3e

    .line 2411
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2412
    const-string v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_3e
    :try_start_91
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_60

    .line 2422
    :goto_65
    if-eqz v175, :cond_3f

    .line 2423
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2429
    :cond_3f
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v68

    .line 2430
    .local v68, "config":Landroid/content/res/Configuration;
    new-instance v149, Landroid/util/DisplayMetrics;

    invoke-direct/range {v149 .. v149}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2431
    .local v149, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v204

    check-cast v204, Landroid/view/WindowManager;

    .line 2432
    .local v204, "w":Landroid/view/WindowManager;
    invoke-interface/range {v204 .. v204}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v149

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2433
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v68

    move-object/from16 v1, v149

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2437
    :try_start_92
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_61

    .line 2443
    :goto_66
    :try_start_93
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_62

    .line 2450
    :goto_67
    :try_start_94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v175

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_63

    .line 2458
    :goto_68
    :try_start_95
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_64

    .line 2464
    :goto_69
    :try_start_96
    invoke-virtual/range {v177 .. v177}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_65

    .line 2473
    :goto_6a
    :try_start_97
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_66

    .line 2480
    :goto_6b
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v200

    .line 2481
    .restart local v200    # "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v200

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2483
    :try_start_98
    invoke-virtual/range {v141 .. v141}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_67

    .line 2491
    :cond_40
    :goto_6c
    move-object v14, v9

    .line 2492
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2493
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2494
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v69

    .line 2495
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v159

    .line 2496
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v205

    .line 2497
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v126

    .line 2498
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v135

    .line 2499
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v173

    .line 2500
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v80

    .line 2501
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v162

    .line 2502
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v66

    .line 2503
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v197

    .line 2504
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v185

    .line 2506
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v203

    .line 2508
    .local v28, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v29, v49

    .line 2509
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v128

    .line 2510
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v188

    .line 2511
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v147

    .line 2512
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v51

    .line 2513
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v151, v150

    .line 2515
    .local v151, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v82

    .line 2519
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v171

    .line 2527
    .local v34, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v34}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2719
    return-void

    .line 773
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Ljava/lang/Object;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v68    # "config":Landroid/content/res/Configuration;
    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v135    # "location":Lcom/android/server/LocationManagerService;
    .end local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v149    # "metrics":Landroid/util/DisplayMetrics;
    .end local v151    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v164    # "notification":Landroid/app/INotificationManager;
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v173    # "sLocation":Landroid/os/IBinder;
    .end local v175    # "safeMode":Z
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v204    # "w":Landroid/view/WindowManager;
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v105

    .line 774
    .local v105, "e":Ljava/lang/Throwable;
    :try_start_99
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_99} :catch_1

    goto/16 :goto_0

    .line 1164
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v200    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v188, v189

    .line 1165
    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v105, "e":Ljava/lang/RuntimeException;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_6d
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 785
    .end local v105    # "e":Ljava/lang/RuntimeException;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v200    # "versionInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v105

    .line 786
    .local v105, "e":Ljava/lang/Throwable;
    :try_start_9a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 802
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v105

    .line 803
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9a} :catch_1

    goto/16 :goto_2

    .line 820
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v142    # "mProductName":Ljava/lang/String;
    :cond_41
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 830
    .end local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_4
    move-exception v105

    .line 831
    .restart local v105    # "e":Ljava/lang/Throwable;
    :try_start_9b
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_9b} :catch_86

    .line 832
    const/16 v88, 0x0

    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_4

    .line 855
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v105

    .line 856
    .restart local v105    # "e":Ljava/lang/Throwable;
    :try_start_9c
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SecurityManager Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 864
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v105

    .line 866
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 874
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v105

    .line 876
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 885
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v105

    .line 887
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 896
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v105

    .line 898
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 908
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v105

    .line 909
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_9c} :catch_1

    goto/16 :goto_a

    .line 943
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v190    # "timaEnabled":Z
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_b
    move-exception v105

    .line 944
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_6f
    :try_start_9d
    const-string/jumbo v6, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1164
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v190    # "timaEnabled":Z
    :catch_c
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 954
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v190    # "timaEnabled":Z
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d
    move-exception v105

    .line 955
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_9d} :catch_c

    goto/16 :goto_c

    .line 977
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v124    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v125    # "iccc_result":I
    .restart local v195    # "timaversion":Z
    :cond_42
    :try_start_9e
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v124

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_9e} :catch_c

    goto/16 :goto_d

    .line 979
    .end local v125    # "iccc_result":I
    :catch_e
    move-exception v105

    .line 981
    .local v105, "e":Ljava/lang/Exception;
    :try_start_9f
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_9f} :catch_c

    goto/16 :goto_d

    .line 1000
    .end local v105    # "e":Ljava/lang/Exception;
    .end local v124    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v195    # "timaversion":Z
    :catch_f
    move-exception v105

    .line 1001
    .restart local v105    # "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v6, "SystemServer"

    const-string v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 1017
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v105

    .line 1018
    .local v105, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 1027
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v105

    .line 1028
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 1039
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v105

    .line 1040
    .local v105, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a0} :catch_c

    goto/16 :goto_11

    .line 1073
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v105    # "e":Ljava/lang/Exception;
    .end local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v207    # "watchdog":Lcom/android/server/Watchdog;
    :catch_13
    move-exception v105

    .line 1074
    .restart local v105    # "e":Ljava/lang/Exception;
    :try_start_a1
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SContextService"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1164
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v77, v78

    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v128, v129

    .end local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 1084
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_15
    move-exception v105

    .line 1085
    .local v105, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 1106
    .end local v105    # "e":Ljava/lang/Throwable;
    :cond_43
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_14

    :cond_44
    const/4 v6, 0x0

    goto/16 :goto_15

    .line 1133
    :cond_45
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_46

    .line 1134
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1135
    :cond_46
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 1137
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1138
    :cond_47
    if-eqz v93, :cond_48

    .line 1139
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1141
    :cond_48
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1145
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_16

    .line 1156
    :catch_16
    move-exception v105

    .line 1157
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_70
    const-string v6, "SystemServer"

    const-string v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a1} :catch_14

    goto/16 :goto_17

    .line 1198
    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v142    # "mProductName":Ljava/lang/String;
    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v190    # "timaEnabled":Z
    .end local v200    # "versionInfo":Landroid/os/Bundle;
    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v135    # "location":Lcom/android/server/LocationManagerService;
    .restart local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v164    # "notification":Landroid/app/INotificationManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v173    # "sLocation":Landroid/os/IBinder;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_17
    move-exception v105

    .line 1199
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string/jumbo v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1206
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v105

    .line 1207
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1213
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v105

    .line 1214
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1231
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v105

    .line 1232
    .local v105, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 1244
    .end local v105    # "e":Ljava/lang/Exception;
    .restart local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    :cond_49
    if-nez v98, :cond_c

    .line 1245
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v166

    .line 1246
    .local v166, "packageMgr":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v166

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4a

    const-string/jumbo v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v166

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1249
    :cond_4a
    :try_start_a2
    const-string v6, "SystemServer"

    const-string v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    new-instance v83, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v83

    move-object/from16 v1, v213

    move-object/from16 v2, v128

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_1b

    .line 1251
    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v83, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_a3
    const-string/jumbo v6, "cover"

    move-object/from16 v0, v83

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_81

    move-object/from16 v82, v83

    .line 1254
    .end local v83    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1d

    .line 1252
    :catch_1b
    move-exception v105

    .line 1253
    .local v105, "e":Ljava/lang/Throwable;
    :goto_72
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1273
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v166    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1c
    move-exception v105

    .line 1274
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1294
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v105

    .line 1295
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1310
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v105

    .line 1311
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1321
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v105

    .line 1322
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1360
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v105

    .line 1361
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1378
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v105

    .line 1379
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1399
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v105

    .line 1400
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1410
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v105

    .line 1411
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1417
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v105

    .line 1418
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1429
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v105

    .line 1430
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1441
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v105

    .line 1442
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string v6, "SystemServer"

    const-string v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1452
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v105

    .line 1453
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1462
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v105

    .line 1463
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1484
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v105

    .line 1485
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1497
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v105

    .line 1498
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Absolute Persistence Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1508
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v105

    .line 1509
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1518
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v105

    .line 1519
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1526
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v105

    .line 1527
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1537
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v105

    move-object/from16 v4, v158

    .line 1538
    .end local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1563
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v105

    .line 1564
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1580
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v105

    .line 1581
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1598
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v114    # "feature":Ljava/lang/String;
    :catch_31
    move-exception v105

    .line 1599
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1614
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v105

    .line 1615
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1628
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v111    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4b
    :try_start_a4
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1630
    .local v47, "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1632
    move-object/from16 v0, v111

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1633
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "epdg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_33

    goto/16 :goto_36

    .line 1635
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v111    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_33
    move-exception v105

    .line 1636
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Epdg Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1639
    .end local v105    # "e":Ljava/lang/Throwable;
    :cond_4c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIVOWIFISUPPORT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1640
    new-instance v131, Landroid/content/Intent;

    invoke-direct/range {v131 .. v131}, Landroid/content/Intent;-><init>()V

    .line 1641
    .local v131, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.sec.epdg.VOWIFI_SUPPORT"

    move-object/from16 v0, v131

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    const-string v6, "CAPABLILITY"

    const/4 v7, 0x0

    move-object/from16 v0, v131

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1643
    const/high16 v6, 0x4000000

    move-object/from16 v0, v131

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v131

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1645
    const-string v6, "SystemServer"

    const-string v7, "Broadcast intent: com.sec.epdg.VOWIFI_SUPPORT CAPABILITY false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 1663
    .end local v131    # "intent":Landroid/content/Intent;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4d
    :try_start_a5
    const-string v6, "com.samsung.clocinfo.CLocInfoService"

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v59

    .line 1665
    if-nez v59, :cond_4e

    .line 1666
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a5} :catch_34

    goto/16 :goto_37

    .line 1677
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :catch_34
    move-exception v105

    .line 1678
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start CLINFO Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1679
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed To Start CLINFO Service"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1668
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4e
    :try_start_a6
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1670
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1672
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1673
    .local v71, "constCLInfoService":Ljava/lang/reflect/Constructor;
    const-string v7, "clinfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a6} :catch_34

    goto/16 :goto_37

    .line 1690
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    .end local v71    # "constCLInfoService":Ljava/lang/reflect/Constructor;
    :catch_35
    move-exception v105

    .line 1691
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1701
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v105

    .line 1702
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1707
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v105

    .line 1708
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1717
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v114    # "feature":Ljava/lang/String;
    :catch_38
    move-exception v105

    .line 1718
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1739
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v105

    .line 1740
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1746
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v105

    .line 1747
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1762
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v105

    .line 1763
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1770
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v105

    .line 1771
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1785
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    .restart local v64    # "clazz":Ljava/lang/Class;
    :catch_3d
    move-exception v105

    .line 1786
    .local v105, "e":Ljava/lang/Exception;
    :try_start_a7
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_a7} :catch_3e

    goto/16 :goto_41

    .line 1798
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v105

    .line 1799
    .local v105, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1796
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    :cond_4f
    :try_start_a8
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_a8} :catch_3e

    goto/16 :goto_42

    .line 1810
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v64    # "clazz":Ljava/lang/Class;
    :catch_3f
    move-exception v105

    .line 1811
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v105 .. v105}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 1869
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v105

    .line 1870
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1881
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v112    # "executableVersion":I
    :catch_41
    move-exception v105

    .line 1882
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1890
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v105

    .line 1891
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1900
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v105

    .line 1901
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1909
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v105

    .line 1910
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1920
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v94    # "disableDockObserver":Z
    :catch_45
    move-exception v105

    .line 1921
    .local v105, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, ""

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 1933
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_46
    move-exception v105

    .line 1934
    .local v105, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1955
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v105

    .line 1956
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 1966
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v105

    .line 1967
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 2008
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v106    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_50
    :try_start_a9
    const-string v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 2010
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 2011
    move-object/from16 v0, v106

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 2012
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const-string v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_a9} :catch_49

    goto/16 :goto_4d

    .line 2014
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v106    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_49
    move-exception v105

    .line 2015
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting eds Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4d

    .line 2022
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v105

    .line 2023
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 2032
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v105

    .line 2033
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v6, "starting UCMService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 2045
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v145    # "mdnieClass":Ljava/lang/Class;
    :cond_51
    const/4 v6, 0x1

    :try_start_aa
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v145

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 2046
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/IBinder;

    .line 2047
    .local v146, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v146

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_aa} :catch_4c

    goto/16 :goto_50

    .line 2049
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v145    # "mdnieClass":Ljava/lang/Class;
    .end local v146    # "mdnieService":Landroid/os/IBinder;
    :catch_4c
    move-exception v105

    .line 2050
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 2061
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v103    # "dsClass":Ljava/lang/Class;
    :cond_52
    const/4 v6, 0x1

    :try_start_ab
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 2062
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/os/IBinder;

    .line 2063
    .local v104, "dsService":Landroid/os/IBinder;
    const-string v6, "DisplaySolution"

    move-object/from16 v0, v104

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ab} :catch_4d

    goto/16 :goto_51

    .line 2065
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v103    # "dsClass":Ljava/lang/Class;
    .end local v104    # "dsService":Landroid/os/IBinder;
    :catch_4d
    move-exception v105

    .line 2066
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start DisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 2077
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v40    # "aasClass":Ljava/lang/Class;
    :cond_53
    const/4 v6, 0x1

    :try_start_ac
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 2078
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/IBinder;

    .line 2079
    .local v41, "aasService":Landroid/os/IBinder;
    const-string v6, "AAS"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_ac} :catch_4e

    goto/16 :goto_52

    .line 2081
    .end local v40    # "aasClass":Ljava/lang/Class;
    .end local v41    # "aasService":Landroid/os/IBinder;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_4e
    move-exception v105

    .line 2082
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start AAS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 2091
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v105

    .line 2092
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 2127
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v187    # "supportAODFeatureVersion":I
    :catch_50
    move-exception v105

    .line 2128
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 2135
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v105

    .line 2136
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 2152
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v105

    .line 2153
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 2160
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v105

    .line 2161
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 2175
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v105

    .line 2176
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2206
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v105

    .line 2207
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 2217
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v105

    .line 2218
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2228
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_57
    move-exception v105

    .line 2229
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 2277
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v133    # "isWipowerEnabled":Z
    :catch_58
    move-exception v105

    .line 2278
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 2281
    .end local v105    # "e":Ljava/lang/Throwable;
    :cond_54
    const-string v6, "SystemServer"

    const-string v7, "Wipower not supported"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 2296
    :catch_59
    move-exception v105

    .line 2297
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 2305
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v105

    .line 2306
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 2320
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v94    # "disableDockObserver":Z
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v112    # "executableVersion":I
    .end local v133    # "isWipowerEnabled":Z
    .end local v187    # "supportAODFeatureVersion":I
    :catch_5b
    move-exception v105

    .line 2321
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 2330
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v105

    .line 2331
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    .line 2347
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v175    # "safeMode":Z
    :cond_55
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_61

    .line 2383
    :catch_5d
    move-exception v105

    .line 2384
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add GameManagerService."

    move-object/from16 v0, v105

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62

    .line 2392
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_5e
    move-exception v105

    .line 2393
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 2399
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_5f
    move-exception v105

    .line 2400
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 2418
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v105

    .line 2419
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65

    .line 2438
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v68    # "config":Landroid/content/res/Configuration;
    .restart local v149    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v204    # "w":Landroid/view/WindowManager;
    :catch_61
    move-exception v105

    .line 2439
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 2444
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v105

    .line 2445
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 2451
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_63
    move-exception v105

    .line 2452
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 2459
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_64
    move-exception v105

    .line 2460
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 2465
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_65
    move-exception v105

    .line 2466
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2474
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_66
    move-exception v105

    .line 2475
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 2484
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v200    # "versionInfo":Landroid/os/Bundle;
    :catch_67
    move-exception v105

    .line 2485
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 2206
    .end local v68    # "config":Landroid/content/res/Configuration;
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v149    # "metrics":Landroid/util/DisplayMetrics;
    .end local v175    # "safeMode":Z
    .end local v200    # "versionInfo":Landroid/os/Bundle;
    .end local v204    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v94    # "disableDockObserver":Z
    .restart local v112    # "executableVersion":I
    .restart local v148    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v187    # "supportAODFeatureVersion":I
    :catch_68
    move-exception v105

    move-object/from16 v147, v148

    .end local v148    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_89

    .line 2175
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_69
    move-exception v105

    move-object/from16 v49, v50

    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_88

    .line 2152
    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_6a
    move-exception v105

    move-object/from16 v66, v67

    .end local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_87

    .line 2032
    .end local v84    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local v187    # "supportAODFeatureVersion":I
    .restart local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_6b
    move-exception v105

    move-object/from16 v84, v85

    .end local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v84    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    goto/16 :goto_86

    .line 1955
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v181    # "serial":Lcom/android/server/SerialService;
    .restart local v182    # "serial":Lcom/android/server/SerialService;
    :catch_6c
    move-exception v105

    move-object/from16 v181, v182

    .end local v182    # "serial":Lcom/android/server/SerialService;
    .restart local v181    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_85

    .line 1909
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .end local v94    # "disableDockObserver":Z
    .restart local v52    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_6d
    move-exception v105

    move-object/from16 v51, v52

    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_84

    .line 1900
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_6e
    move-exception v105

    move-object/from16 v205, v206

    .end local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_83

    .line 1770
    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v112    # "executableVersion":I
    .restart local v81    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_6f
    move-exception v105

    move-object/from16 v80, v81

    .end local v81    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_82

    .line 1762
    .end local v135    # "location":Lcom/android/server/LocationManagerService;
    .restart local v136    # "location":Lcom/android/server/LocationManagerService;
    :catch_70
    move-exception v105

    move-object/from16 v135, v136

    .end local v136    # "location":Lcom/android/server/LocationManagerService;
    .restart local v135    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_81

    .line 1732
    :catch_71
    move-exception v6

    goto/16 :goto_3c

    .line 1690
    .end local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v114    # "feature":Ljava/lang/String;
    .restart local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_72
    move-exception v105

    move-object/from16 v211, v212

    .end local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_80

    .line 1563
    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v114    # "feature":Ljava/lang/String;
    .restart local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_73
    move-exception v105

    move-object/from16 v69, v70

    .end local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_7f

    .line 1537
    :catch_74
    move-exception v105

    goto/16 :goto_7e

    .line 1526
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v161    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_75
    move-exception v105

    move-object/from16 v8, v161

    .end local v161    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_7d

    .line 1518
    .end local v159    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_76
    move-exception v105

    move-object/from16 v159, v160

    .end local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v159    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_7c

    .line 1508
    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v198    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_77
    move-exception v105

    move-object/from16 v197, v198

    .end local v198    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_7b

    .line 1452
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_78
    move-exception v105

    move-object/from16 v185, v186

    .end local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_7a

    .line 1441
    .end local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_79
    move-exception v105

    move-object/from16 v107, v108

    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_79

    .line 1429
    .end local v101    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    :catch_7a
    move-exception v105

    move-object/from16 v101, v102

    .end local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v101    # "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_78

    .line 1417
    .end local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_7b
    move-exception v105

    move-object/from16 v177, v178

    .end local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_77

    .line 1410
    .end local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_7c
    move-exception v105

    move-object/from16 v179, v180

    .end local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_76

    .line 1399
    .end local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v140    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_7d
    move-exception v105

    move-object/from16 v139, v140

    .end local v140    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_75

    .line 1378
    .end local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v138    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_7e
    move-exception v105

    move-object/from16 v137, v138

    .end local v138    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_74

    .line 1369
    :catch_7f
    move-exception v6

    goto/16 :goto_23

    .line 1273
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v169    # "pm":Landroid/content/pm/PackageManager;
    .restart local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_80
    move-exception v105

    move-object/from16 v171, v172

    .end local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_73

    .line 1252
    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v169    # "pm":Landroid/content/pm/PackageManager;
    .restart local v83    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    .restart local v166    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_81
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_72

    .line 1198
    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v166    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v127    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_82
    move-exception v105

    move-object/from16 v126, v127

    .end local v127    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_71

    .line 1164
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v135    # "location":Lcom/android/server/LocationManagerService;
    .end local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v164    # "notification":Landroid/app/INotificationManager;
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v173    # "sLocation":Landroid/os/IBinder;
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_83
    move-exception v105

    goto/16 :goto_6d

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_84
    move-exception v105

    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_6d

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v200    # "versionInfo":Landroid/os/Bundle;
    :catch_85
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6d

    .end local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v142    # "mProductName":Ljava/lang/String;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_86
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v88, v89

    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v88    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_6d

    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v190    # "timaEnabled":Z
    .restart local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_87
    move-exception v105

    move-object/from16 v193, v194

    .end local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v167    # "pkmService":Lcom/android/server/PKMService;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v168    # "pkmService":Lcom/android/server/PKMService;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_88
    move-exception v105

    move-object/from16 v167, v168

    .end local v168    # "pkmService":Lcom/android/server/PKMService;
    .restart local v167    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v193, v194

    .end local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_89
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v77, v78

    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v207    # "watchdog":Lcom/android/server/Watchdog;
    :catch_8a
    move-exception v105

    move-object/from16 v143, v144

    .end local v144    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v109, v110

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v77, v78

    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v188, v189

    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v128, v129

    .end local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v201, v202

    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 1156
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v202    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8b
    move-exception v105

    move-object/from16 v143, v144

    .end local v144    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_70

    .line 943
    .end local v78    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v129    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v194    # "timaService":Lcom/android/server/TimaService;
    :catch_8c
    move-exception v105

    move-object/from16 v193, v194

    .end local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6f

    .end local v167    # "pkmService":Lcom/android/server/PKMService;
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .restart local v168    # "pkmService":Lcom/android/server/PKMService;
    .restart local v194    # "timaService":Lcom/android/server/TimaService;
    :catch_8d
    move-exception v105

    move-object/from16 v167, v168

    .end local v168    # "pkmService":Lcom/android/server/PKMService;
    .restart local v167    # "pkmService":Lcom/android/server/PKMService;
    move-object/from16 v193, v194

    .end local v194    # "timaService":Lcom/android/server/TimaService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6f

    .line 802
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v142    # "mProductName":Ljava/lang/String;
    .end local v190    # "timaEnabled":Z
    .end local v202    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8e
    move-exception v105

    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6e

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v189    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "versionInfo":Landroid/os/Bundle;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v107    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v126    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v135    # "location":Lcom/android/server/LocationManagerService;
    .restart local v137    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v164    # "notification":Landroid/app/INotificationManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v173    # "sLocation":Landroid/os/IBinder;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_56
    move-object/from16 v4, v158

    .end local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3a

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_57
    move-object/from16 v4, v158

    .end local v158    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_5e
.end method

.method static final startSecurityManagerService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2769
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2770
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.service.sm"

    const-string v3, "com.sec.android.service.sm.service.SecurityManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2772
    const-string v1, "CMD"

    const-string v2, "START_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2773
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2774
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2732
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2733
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2736
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2737
    return-void
.end method

.method private startThemeService()V
    .locals 5

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2723
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2724
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2726
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2727
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2728
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2729
    return-void
.end method
