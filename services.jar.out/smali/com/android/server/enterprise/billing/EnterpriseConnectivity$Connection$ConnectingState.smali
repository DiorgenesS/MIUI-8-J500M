.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 1526
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectingState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1534
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1537
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectingState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1539
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1641
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectingState  ignore msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v7, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1642
    const/4 v3, 0x0

    .line 1645
    .local v3, "retVal":Z
    :goto_0
    return v3

    .line 1541
    .end local v3    # "retVal":Z
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState onConnect"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1542
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1543
    .local v2, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;I)V
    invoke-static {v4, v2, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V

    .line 1544
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1545
    const/4 v3, 0x1

    .line 1546
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 1548
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "retVal":Z
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1549
    const/4 v3, 0x1

    .line 1550
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 1552
    .end local v3    # "retVal":Z
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v5, 0x3f2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1553
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1555
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1556
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v6, "ConnectingState: turn off connection"

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1557
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1558
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1559
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 1565
    const/4 v3, 0x1

    .line 1566
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 1561
    .end local v3    # "retVal":Z
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error in connecting state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1

    .line 1564
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1568
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1569
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1570
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectingState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v7, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1571
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1572
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1574
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1579
    :cond_1
    :goto_2
    const/4 v3, 0x1

    .line 1580
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1575
    .end local v3    # "retVal":Z
    :catch_1
    move-exception v0

    .line 1576
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_2

    .line 1582
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v5, 0x3f1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1583
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1584
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1586
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1590
    :goto_3
    const/4 v3, 0x1

    .line 1591
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1587
    .end local v3    # "retVal":Z
    :catch_2
    move-exception v0

    .line 1588
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_3

    .line 1593
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1594
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1595
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1596
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1597
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1599
    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1604
    :cond_2
    :goto_4
    const/4 v3, 0x1

    .line 1605
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1600
    .end local v3    # "retVal":Z
    :catch_3
    move-exception v0

    .line 1601
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in enableBlockRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_4

    .line 1607
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_4

    .line 1608
    .local v1, "enabled":Z
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-eq v4, v1, :cond_3

    .line 1609
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1610
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1611
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1612
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1613
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1616
    :cond_3
    const/4 v3, 0x1

    .line 1617
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .end local v1    # "enabled":Z
    .end local v3    # "retVal":Z
    :cond_4
    move v1, v4

    .line 1607
    goto :goto_5

    .line 1619
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1620
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1621
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1622
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1623
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1625
    :cond_5
    const/4 v3, 0x1

    .line 1626
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1628
    .end local v3    # "retVal":Z
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1629
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1630
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectingState: turn off connection"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1631
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1632
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1634
    :cond_6
    const/4 v3, 0x1

    .line 1635
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1637
    .end local v3    # "retVal":Z
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V

    .line 1638
    const/4 v3, 0x1

    .line 1639
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 1539
    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_9
        0x3eb -> :sswitch_3
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_6
        0x44d -> :sswitch_0
        0x44e -> :sswitch_1
    .end sparse-switch
.end method
