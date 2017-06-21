.class Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 1

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 561
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 565
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 567
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mIntensityLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 568
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 569
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v3, "ml_status"

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$202(Lcom/android/server/lights/LightsService;I)I

    .line 570
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v3, "ml_repeat_value"

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$3002(Lcom/android/server/lights/LightsService;I)I

    .line 571
    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v3, "ml_battery_charging"

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v2, v0}, Lcom/android/server/lights/LightsService;->access$1402(Lcom/android/server/lights/LightsService;Z)Z

    .line 573
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$202(Lcom/android/server/lights/LightsService;I)I

    .line 576
    :cond_1
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartGlow Intensity Settings Changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartGlow Repeat Settings Changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$3000(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartGlow Charging Status Settings Changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1400(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const-string v0, "/sys/class/leds/led_1/intensity"

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 581
    const-string v0, "/sys/class/leds/led_2/intensity"

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 582
    const-string v0, "/sys/class/leds/led_3/intensity"

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 583
    const-string v0, "/sys/class/leds/led_4/intensity"

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 589
    :goto_0
    monitor-exit v8

    .line 590
    return-void

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    const/16 v2, 0xd

    const/4 v3, -0x1

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    invoke-static/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    .line 587
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/lights/LightsService;->mCurrPriority:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$3102(Lcom/android/server/lights/LightsService;I)I

    goto :goto_0

    .line 589
    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 586
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
