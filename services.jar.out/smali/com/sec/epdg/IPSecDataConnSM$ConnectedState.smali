.class Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field interfaceUpRecvd:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v8, 0x10

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 928
    const-string v4, "[IPSECDATACONNSM]"

    const-string v5, "SM in ConnectedState state : Entered ConnectedState "

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 930
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementNumOfApnsOnEpdg()V

    .line 932
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 933
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v3

    .line 934
    .local v3, "nattTimer":I
    if-lez v3, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 935
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SM start KEEPALIVE timer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v4

    mul-int/lit16 v5, v3, 0x3e8

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForNattKeepAlive(I)V

    .line 938
    :cond_0
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v4

    int-to-long v0, v4

    .line 939
    .local v0, "dpdTimer":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 940
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SM start periodic DPD timer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-long v6, v0, v12

    invoke-virtual {v4, v8, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 942
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-long v8, v0, v12

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v4

    if-nez v4, :cond_1

    .line 944
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 945
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected mode dpd not allowed, apnType is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSM;->access$5200()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 951
    .end local v0    # "dpdTimer":J
    .end local v3    # "nattTimer":I
    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v4, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 952
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    if-nez v4, :cond_3

    .line 957
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v5, 0xb

    const-wide/16 v6, 0x4e20

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 958
    iput-boolean v10, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 963
    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 966
    const-string v4, "[IPSECDATACONNSM]"

    const-string v5, "IMS APN exited from Throttle state"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/epdg/EpdgRilSharedData;->setImsApnThrottled(Z)V

    .line 968
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 969
    .local v2, "msgNetRegi":Landroid/os/Message;
    const/16 v4, 0x50

    iput v4, v2, Landroid/os/Message;->what:I

    .line 970
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 972
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrantDelay(Z)V
    invoke-static {v4, v10}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 973
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrantDelay(Z)V
    invoke-static {v4, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5600(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 975
    .end local v2    # "msgNetRegi":Landroid/os/Message;
    :cond_2
    return-void

    .line 960
    :cond_3
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4, v10}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 979
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in ConnectedState state : Exiting ConnectedState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 981
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$5800(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 984
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 987
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementNumOfApnsOnEpdg()V

    .line 988
    invoke-static {}, Lcom/sec/epdg/EpdgService;->resetIsEpdgConnBlocked()V

    .line 989
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 993
    const/4 v6, 0x0

    .line 994
    .local v6, "status":Z
    const/4 v2, 0x0

    .line 995
    .local v2, "errorEnableEpdg":Z
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Message:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1138
    :pswitch_0
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_0
    :goto_0
    return v6

    .line 999
    :pswitch_1
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1000
    const-string v7, "[IPSECDATACONNSM]"

    const-string v8, "Ignoring the time out  message as this is a handover request. Mobile Interface is already up."

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    if-ne v7, v8, :cond_2

    .line 1002
    const-string v7, "[IPSECDATACONNSM]"

    const-string v8, "Initial attach scenario. Mobile Interface is already up. Ignoring the timeout message. NO action needed"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_2
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "RIL ISSUE -- Interface up event not recevied for Initial attach to ePDG. Attempting to tear down control path."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v9}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 1008
    .local v4, "msgForDisconnect":Landroid/os/Message;
    const/16 v7, 0x29

    iput v7, v4, Landroid/os/Message;->what:I

    .line 1009
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 1010
    new-instance v7, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    new-instance v9, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget-object v10, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v10}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1012
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1016
    .end local v4    # "msgForDisconnect":Landroid/os/Message;
    :pswitch_2
    const-string v7, "[IPSECDATACONNSM]"

    const-string/jumbo v8, "send DPD message"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v8, 0x10

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6100(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1018
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6200(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 1021
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1022
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v7

    int-to-long v0, v7

    .line 1023
    .local v0, "dpdTimer":J
    const-wide/16 v8, 0x0

    cmp-long v7, v8, v0

    if-gez v7, :cond_0

    .line 1024
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM start periodic DPD timer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v8, 0x10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 1026
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v0

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1032
    .end local v0    # "dpdTimer":J
    :pswitch_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1033
    const-string v7, "[IPSECDATACONNSM]"

    const-string/jumbo v8, "send NATT KEEPALIVE message"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendKeepAlive()V
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6300(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 1035
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 1036
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1037
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v5

    .line 1038
    .local v5, "nattTimer":I
    if-lez v5, :cond_0

    .line 1039
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM start periodic NATT KEEPALIVE timer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    mul-int/lit16 v8, v5, 0x3e8

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForNattKeepAlive(I)V

    goto/16 :goto_0

    .line 1048
    .end local v5    # "nattTimer":I
    :pswitch_4
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Disconnection Happened, this is critical failure."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v7, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1051
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 1052
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1057
    :pswitch_5
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 1058
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1061
    :pswitch_6
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$6600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "chek l2w handover condition after 1.5 sec from L2W HO"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4200(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1064
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1069
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 1070
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1074
    :pswitch_7
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$6700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Unexpected event"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1081
    :pswitch_8
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$6800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Disconnection Request Received"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 1093
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v8, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1094
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v7}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1095
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 1096
    :cond_3
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v8, 0x10

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$7000(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1097
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_4
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v7, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1101
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 1106
    :pswitch_9
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 1107
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v8, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$7100(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 1108
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x1

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v7, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v2

    .line 1109
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V
    invoke-static {v7, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V

    .line 1110
    const/4 v7, 0x1

    if-ne v7, v2, :cond_0

    .line 1111
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "as Data path route addition failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1116
    .local v3, "msg1":Landroid/os/Message;
    const/16 v7, 0x29

    iput v7, v3, Landroid/os/Message;->what:I

    .line 1117
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 1118
    new-instance v7, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    new-instance v9, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v10}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1120
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1121
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v7, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    goto/16 :goto_0

    .line 1129
    .end local v3    # "msg1":Landroid/os/Message;
    :pswitch_a
    const-string v7, "[IPSECDATACONNSM]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SM Current State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Unexpected event"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1134
    :pswitch_b
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
