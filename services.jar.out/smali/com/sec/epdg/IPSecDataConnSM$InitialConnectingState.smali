.class Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private setDetachRcvdFromRil(Z)V
    .locals 0
    .param p1, "isDetachRcvdFromRil"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->mIsDetachRcvdFromRil:Z

    .line 429
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 433
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Entered InitialConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 435
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 437
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Exiting InitialConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 443
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 444
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 448
    const/16 v23, 0x0

    .line 449
    .local v23, "status":Z
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 618
    :pswitch_0
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    :goto_0
    return v23

    .line 453
    :pswitch_1
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ISSUE -- No response from IPSec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->isDetachRcvdFromRil()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Disconnect received during Connecting phase"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto :goto_0

    .line 469
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 470
    .local v18, "cid":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .line 471
    .local v6, "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Update conn status for cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHandOver is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v2, 0x1

    move/from16 v0, v18

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V
    invoke-static {v1, v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V

    .line 479
    :cond_2
    new-instance v1, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v5

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 482
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Connection successful. Resetting throttle timer."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 484
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 491
    .end local v6    # "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .end local v18    # "cid":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v20

    .line 493
    .local v20, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 496
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v21

    .line 498
    .local v21, "result":Z
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_5

    .line 499
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next epdg server ip address is available apn name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv4 address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv6 addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v7, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    .local v7, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v17

    .line 510
    .local v17, "apnAttachReq":Landroid/os/Message;
    const/4 v1, 0x2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    move-object/from16 v0, v17

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 513
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 514
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRJIL()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 515
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Setting arg2 as 1 to avoid DNS query"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 518
    :cond_4
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v7, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v17

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, v17

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2900(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 524
    .end local v7    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v17    # "apnAttachReq":Landroid/os/Message;
    :cond_5
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 531
    .end local v21    # "result":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 535
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 536
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/sec/epdg/IWlanConnectResult;

    .line 537
    .local v14, "AttResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual {v14}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v22

    .line 538
    .local v22, "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x2001

    if-ne v1, v2, :cond_8

    .line 539
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, " ATT MAX_CONNECTION_REACHED handling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/sec/epdg/EpdgService;->setIsEpdgConnBlocked()V

    .line 543
    .end local v14    # "AttResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_8
    if-eqz v20, :cond_a

    .line 544
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/sec/epdg/IWlanConnectResult;

    .line 545
    .local v19, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 547
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Throttling is needed., so move to throttle state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVd2()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 551
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/epdg/IWlanConnectResult;

    .line 552
    .local v16, "Vd2Result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v22

    .line 553
    .restart local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_9

    .line 554
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Vd2 req. Handling auth fail."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendEpdgPermanantFailBroadcast()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3000(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 560
    .end local v16    # "Vd2Result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 566
    :goto_1
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 569
    .end local v19    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/sec/epdg/IWlanConnectResult;

    .line 571
    .local v15, "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual {v15}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v22

    .line 572
    .restart local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_d

    .line 573
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Rogers req. Handling auth fail."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-static {v1, v0, v2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 562
    .end local v15    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    .restart local v19    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_b
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_1

    .line 579
    .end local v19    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v15    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v8, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    invoke-static {v1, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$3102(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v2, 0x1

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto/16 :goto_0

    .line 587
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto/16 :goto_0

    .line 596
    .end local v15    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v20    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v22    # "resultError":Lcom/sec/epdg/IWlanError;
    :pswitch_4
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unexpected event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :pswitch_5
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM Current State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unexpected event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 607
    :pswitch_6
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Received Disconnect Req: Marked for disconnect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->setDetachRcvdFromRil(Z)V

    goto/16 :goto_0

    .line 611
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 614
    :pswitch_8
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Ignoring the Interface UP event as SM is in Connecting state. "

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
