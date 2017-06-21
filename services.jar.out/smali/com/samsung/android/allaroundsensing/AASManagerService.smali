.class public Lcom/samsung/android/allaroundsensing/AASManagerService;
.super Lcom/samsung/android/allaroundsensing/IAASManager$Stub;
.source "AASManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AASManagerService"


# instance fields
.field private final DEBUG:Z

.field private aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

.field private mBVenable:Z

.field private mBrightnessValue:F

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mUseAllAroundSensingConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;-><init>()V

    .line 39
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->DEBUG:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    .line 49
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mUseAllAroundSensingConfig:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-direct {v0, p1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 68
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightnessValueEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
