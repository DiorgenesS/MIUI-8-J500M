.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private final mIsIDUsingPatternLED:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 2
    .param p2, "id"    # I

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 206
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 208
    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 213
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 519
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2700(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$2702(Lcom/android/server/lights/LightsService;Z)Z

    .line 525
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 526
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 527
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 528
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    :cond_1
    return-void

    .line 534
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private stopFlashing()V
    .locals 7

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] stopFlashing! id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 494
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    monitor-exit p0

    .line 516
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$2500(Lcom/android/server/lights/LightsService;I)V

    .line 506
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 508
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    .end local v6    # "msg":Landroid/os/Message;
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 510
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 513
    :cond_2
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 414
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 415
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 419
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] pulse :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 425
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return-void

    .line 430
    :cond_1
    monitor-enter p0

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_3

    .line 433
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] pulse::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 436
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_2

    .line 437
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 438
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2400(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2400(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 218
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 222
    monitor-enter p0

    .line 224
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_0

    .line 225
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 233
    :goto_0
    monitor-exit p0

    .line 234
    return-void

    .line 229
    :cond_0
    and-int/lit16 v1, p1, 0xff

    .line 230
    .local v1, "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 231
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_0

    .line 233
    .end local v1    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 238
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setColor :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 244
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_1
    monitor-enter p0

    .line 250
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 251
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 369
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] setFlashing :: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "Off"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", onMS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offMS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 376
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    return-void

    .line 369
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1700(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 388
    :cond_3
    monitor-enter p0

    .line 390
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->access$2000(Lcom/android/server/lights/LightsService;IIIIIZ)V

    .line 399
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$2100(Lcom/android/server/lights/LightsService;Z)V

    .line 401
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 403
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2300(Lcom/android/server/lights/LightsService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    .end local v7    # "msg":Landroid/os/Message;
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 405
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 407
    :cond_4
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public setMoodLightEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->setSmartGlowEnabled(Z)V

    .line 321
    return-void
.end method

.method public setMoodLightFlashing(I[I[I[II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "color"    # [I
    .param p3, "onMS"    # [I
    .param p4, "offMS"    # [I
    .param p5, "mode"    # I

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setSmartGlowFlashing(I[I[I[II)V

    .line 256
    return-void
.end method

.method public setMoodLightOff(II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "mode"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;->setSmartGlowOff(II)V

    .line 291
    return-void
.end method

.method public setSmartGlowEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 325
    return-void
.end method

.method public setSmartGlowFlashing(I[I[I[II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "color"    # [I
    .param p3, "onMS"    # [I
    .param p4, "offMS"    # [I
    .param p5, "mode"    # I

    .prologue
    .line 260
    return-void
.end method

.method public setSmartGlowOff(II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "mode"    # I

    .prologue
    .line 295
    return-void
.end method

.method public turnOff()V
    .locals 7

    .prologue
    .line 446
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] turnOff:: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 452
    :cond_0
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] LED indicator : Not supported."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 457
    :cond_1
    monitor-enter p0

    .line 459
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$2500(Lcom/android/server/lights/LightsService;I)V

    .line 467
    # getter for: Lcom/android/server/lights/LightsService;->mSvcLedState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$2600()I

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/lights/LightsService;->access$2100(Lcom/android/server/lights/LightsService;Z)V

    .line 470
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 472
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$2300(Lcom/android/server/lights/LightsService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 484
    .end local v6    # "msg":Landroid/os/Message;
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 474
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 475
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 476
    .restart local v6    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 479
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 482
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public updateMoodLightForPowerKeyPress()V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->updateSmartGlowForPowerKeyPress()V

    .line 348
    return-void
.end method

.method public updateSmartGlowForPowerKeyPress()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method
