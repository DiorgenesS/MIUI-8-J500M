.class Lcom/android/server/BatteryService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 538
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 539
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 545
    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 546
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "ml_battery_charging"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 548
    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "ml_aa_battery_status"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    .line 549
    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "ml_aa_status"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    :goto_2
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v3, v1}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    .line 550
    iget-object v1, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "ml_aa_battery_value"

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryLevel:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;I)I

    .line 551
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow Charging Status Setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow Low Battery Status Setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow Low Battery Level Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 556
    monitor-exit v4

    .line 557
    return-void

    :cond_0
    move v3, v2

    .line 547
    goto/16 :goto_0

    :cond_1
    move v3, v2

    .line 548
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 549
    goto/16 :goto_2

    .line 556
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
