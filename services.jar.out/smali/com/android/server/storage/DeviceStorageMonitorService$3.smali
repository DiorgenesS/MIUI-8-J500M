.class Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 442
    .local v1, "reason":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 461
    .end local v1    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v1    # "reason":I
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0
.end method
