.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 1630
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handler : message = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1665
    :goto_0
    return-void

    .line 1633
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1634
    .local v0, "containerId":I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1635
    .local v8, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1636
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1637
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$300(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .local v5, "syncMgrCn":Landroid/content/ComponentName;
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handler / RESTART_EMAIL_APP : Enabling EAS ExchangeService user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const/4 v9, 0x1

    invoke-virtual {v4, v5, v9, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1643
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # setter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v9, v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    .line 1645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1647
    .local v6, "token":J
    const/4 v2, 0x0

    .line 1648
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1649
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.samsung.android.emailsync.EXCHANGE_INTENT"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object v2, v3

    .line 1654
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "syncMgrCn":Landroid/content/ComponentName;
    .end local v6    # "token":J
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # setter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    invoke-static {v9, v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    goto :goto_0

    .line 1652
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "syncMgrCn":Landroid/content/ComponentName;
    .restart local v6    # "token":J
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.email.EXCHANGE_INTENT"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object v2, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 1655
    :catch_0
    move-exception v1

    .line 1656
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "Handler / RESTART_EMAIL_APP : fail to restart ExchangeService. "

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1658
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
