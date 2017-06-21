.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 524
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 529
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 536
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 537
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v1, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 540
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    invoke-static {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 543
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v9, v11, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z
    invoke-static {v8, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z

    .line 588
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :goto_1
    return-void

    .line 530
    :catch_0
    move-exception v3

    .line 531
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "updateUsbMode failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 548
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 549
    :catch_1
    move-exception v3

    .line 550
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "updateUsbMode failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 552
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v8, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 554
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 555
    :catch_2
    move-exception v3

    .line 556
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "RestrictionPolicy"

    const-string v8, "Network Policy update failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 559
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 560
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 562
    .local v2, "callingUid":I
    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string/jumbo v8, "screenCaptureEnabled"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z
    invoke-static {v10, v6, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/data/system/enterprise.conf"

    invoke-static {v8, v7, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 565
    .end local v2    # "callingUid":I
    .end local v6    # "userId":I
    :cond_6
    const-string v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 566
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 567
    .restart local v6    # "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V
    invoke-static {v7, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_1

    .line 568
    .end local v6    # "userId":I
    :cond_7
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 569
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 570
    .restart local v6    # "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V
    invoke-static {v7, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_1

    .line 571
    .end local v6    # "userId":I
    :cond_8
    const-string/jumbo v8, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 572
    const/4 v5, 0x0

    .line 573
    .local v5, "result":I
    const-string/jumbo v8, "result"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 578
    .local v4, "extra":I
    if-eqz v4, :cond_9

    .line 579
    const/4 v5, 0x1

    .line 580
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    .line 586
    :goto_2
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V
    invoke-static {v7, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_1

    .line 584
    :cond_9
    const-string v7, "RestrictionPolicy"

    const-string v8, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
