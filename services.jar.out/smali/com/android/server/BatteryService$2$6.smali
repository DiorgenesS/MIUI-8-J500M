.class Lcom/android/server/BatteryService$2$6;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$2;

.field final synthetic val$otgEnable:Z


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$2;Z)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/BatteryService$2$6;->this$1:Lcom/android/server/BatteryService$2;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$2$6;->val$otgEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/server/BatteryService$2$6;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$2$6;->val$otgEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setOTGEnableDisable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set otgEnable as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/BatteryService$2$6;->val$otgEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/server/BatteryService$2$6;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->sendOTGIntentLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail to set otgEnable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
