.class Lcom/android/server/lights/LightsService$1;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 5

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    # setter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2202(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 604
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$3202(Lcom/android/server/lights/LightsService;Z)Z

    .line 606
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 608
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 609
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v3, 0x11200e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$002(Lcom/android/server/lights/LightsService;Z)Z

    .line 611
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v3, 0x1120029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$3302(Lcom/android/server/lights/LightsService;Z)Z

    .line 613
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3300(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/sys/class/sec/led/led_lowpower"

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$3402(Lcom/android/server/lights/LightsService;Z)Z

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3400(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2bc

    :goto_0
    # setter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3, v1}, Lcom/android/server/lights/LightsService;->access$2302(Lcom/android/server/lights/LightsService;I)I

    .line 622
    const-string v1, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SvcLED] SUPPORT_LED_INDICATOR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUseSoftwareAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$3300(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$3400(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mDelayForcedSvcLEDTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$2300(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUsePatternLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    monitor-exit v2

    .line 628
    return-void

    .line 620
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 627
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
