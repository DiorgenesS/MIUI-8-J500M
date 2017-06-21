.class Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgPdnXferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p2, "networkType"    # I

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    .line 1306
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 1307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1311
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->getNetworkType()I

    move-result v0

    .line 1312
    .local v0, "ratType":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger Move for PDN\'s from WIFI networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1315
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1316
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1317
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1319
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    .line 1320
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$400(Lcom/sec/epdg/EpdgService;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1323
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:mPdnXferReceiver:RAT=LTE,EPDG=AVAILABLE so send keep alive packet and start the keep alive timer"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)V

    .line 1326
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/EpdgService;->access$800(Lcom/sec/epdg/EpdgService;J)V

    .line 1361
    :cond_1
    :goto_0
    return-void

    .line 1329
    :cond_2
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1330
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1331
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1332
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1334
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0

    .line 1335
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1336
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1337
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1338
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1340
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0

    .line 1341
    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTelstra()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDT()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    if-eqz v1, :cond_a

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is2gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$1100(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1344
    :cond_8
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1345
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1346
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1348
    :cond_9
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 1349
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-ne v1, v4, :cond_b

    .line 1351
    const-string v1, "[EPDGService]"

    const-string v2, "CS Preferred mode but all cs was not available. So, need to handover to WIFI."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1353
    :cond_b
    if-nez v0, :cond_c

    .line 1354
    const-string v1, "[EPDGService]"

    const-string v2, "IMS on ePDG and no LTE available allowing IMS to continue"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1357
    :cond_c
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher priority RAT handling done. No action taken for current N/w Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
