.class public Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
.super Ljava/lang/Object;
.source "AllAroundSensingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;,
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final AAS_ON:Ljava/lang/String; = "sys.aasservice.aason"

.field private static final TAG:Ljava/lang/String; = "AllAroundSensingService"


# instance fields
.field private final BV_READ_START_MILLIS:J

.field private final CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final LIGHT_SENSOR_IN_COUNT:I

.field private final LIGHT_SENSOR_OUT_COUNT:I

.field private final MSG_CHECK_AAS_SERVICE:I

.field private MSG_CHECK_AAS_SERVICE_MILLIS:J

.field private final MSG_ENABLE_SENSOR_VALUE:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_AAS_OFF:I

.field private final MSG_SET_AAS_ON:I

.field private final RECHECK_DEBOUNCE_MILLIS:J

.field private firstBrightnessValue:F

.field private firstCalValue:F

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighHysteresis:I

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mLimit120:Z

.field private mLimit255:Z

.field private mLowHysteresis:I

.field private mPowerManager:Landroid/os/PowerManager;

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mReleaseBrightnessLimit:Z

.field private mSensorCount:I

.field private mUseAllAroundSensingConfig:Z

.field private preBrightnessValue:F

.field private preCalValue:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    .line 68
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_FOREGROUND_APP:I

    .line 69
    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 71
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE:I

    .line 73
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_ON:I

    .line 74
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_OFF:I

    .line 76
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_ENABLE_SENSOR_VALUE:I

    .line 78
    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_IN_COUNT:I

    .line 79
    const/16 v3, 0xf

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_OUT_COUNT:I

    .line 81
    const-wide/16 v4, 0xc8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    .line 82
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->BV_READ_START_MILLIS:J

    .line 83
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->RECHECK_DEBOUNCE_MILLIS:J

    .line 84
    const-wide/16 v4, 0xfa

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 86
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "com.sec.android.app.camera.Camera"

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 89
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    .line 91
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mReleaseBrightnessLimit:Z

    .line 100
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 102
    const/16 v3, 0x64

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    .line 103
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLowHysteresis:I

    .line 105
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 106
    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit120:Z

    .line 166
    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    .line 116
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "AllAroundSensingServiceThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-object v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    .line 119
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    .line 120
    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    .line 129
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    .line 130
    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    if-eqz v3, :cond_0

    .line 131
    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 136
    .local v2, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 139
    const-string v3, "AllAroundSensingService"

    const-string/jumbo v4, "failed to registerProcessObserver"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkCameraAndBrightnessState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->enableBrightnessValueEnable()V

    return-void
.end method

.method private calculateBVtoLux(F)F
    .locals 6
    .param p1, "bv"    # F

    .prologue
    .line 383
    const-wide v0, 0x403712d81adea897L    # 23.07361

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x406a0417c1bda512L    # 208.1279

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private cameraStateOff()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    .line 309
    return-void
.end method

.method private cameraStateOn()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    .line 305
    return-void
.end method

.method private changeDisplayBrightness(FFF)V
    .locals 3
    .param p1, "mBrightnessValue"    # F
    .param p2, "bv"    # F
    .param p3, "mPow2bv"    # F

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v0, :cond_0

    .line 416
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 417
    const-string v0, "AllAroundSensingService"

    const-string/jumbo v1, "setAutoBrightnessLimit 255"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xff

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 422
    :cond_0
    return-void
.end method

.method private checkCameraAndBrightnessState()V
    .locals 9

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x2

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 314
    .local v4, "time":J
    const/4 v2, 0x0

    .line 315
    .local v2, "mCameraStateEnable":Z
    const/4 v1, 0x0

    .line 316
    .local v1, "mAutoBrightnessEnable":I
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string v6, "AAS"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allaroundsensing/AASManager;

    .line 318
    .local v0, "mAAS":Lcom/samsung/android/allaroundsensing/AASManager;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/allaroundsensing/AASManager;->getBrightnessValueEnable()Z

    move-result v2

    .line 322
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 339
    :goto_1
    return-void

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v8}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v6, 0x7d0

    add-long/2addr v6, v4

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 337
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_1

    .line 323
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private checkForAAS(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x2

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, "time":J
    if-eqz p1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 347
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 352
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method

.method private enableBrightnessValueEnable()V
    .locals 7

    .prologue
    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 359
    .local v4, "time":J
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string v6, "AAS"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allaroundsensing/AASManager;

    .line 361
    .local v2, "mAAS":Lcom/samsung/android/allaroundsensing/AASManager;
    const/4 v0, 0x0

    .line 362
    .local v0, "bv":F
    const/4 v1, 0x0

    .line 364
    .local v1, "bvlux":F
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->handleLightSensorEvent()V

    .line 366
    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v2}, Lcom/samsung/android/allaroundsensing/AASManager;->getBrightnessValue()F

    move-result v0

    .line 369
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->calculateBVtoLux(F)F

    move-result v1

    .line 370
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->sendLuxAndBrightnessValue(FF)V

    .line 371
    return-void
.end method

.method private handleLightSensorEvent()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 376
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 380
    :cond_0
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, "isCamera":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    const/4 v1, 0x1

    .line 248
    :cond_0
    if-eqz v1, :cond_2

    .line 249
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 250
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 255
    :goto_1
    return-void

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private releaseAutoBrightnessLimit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 425
    const-string v0, "AllAroundSensingService"

    const-string/jumbo v1, "releaseAutoBrightnessLimit"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2, v2}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    .line 428
    return-void
.end method

.method private sendLuxAndBrightnessValue(FF)V
    .locals 8
    .param p1, "bvlux"    # F
    .param p2, "bv"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 392
    .local v1, "mPow2bv":F
    move v0, p1

    .line 394
    .local v0, "mBrightnessValue":F
    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    .line 395
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ge v2, v7, :cond_2

    .line 396
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 397
    const-string v2, "AllAroundSensingService"

    const-string/jumbo v3, "reset!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 409
    :cond_0
    :goto_0
    const-string v2, "AllAroundSensingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      mPow2bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      BV -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 400
    :cond_1
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    .line 401
    iput v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->preBrightnessValue:F

    goto :goto_0

    .line 404
    :cond_2
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ne v2, v7, :cond_0

    .line 406
    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method
