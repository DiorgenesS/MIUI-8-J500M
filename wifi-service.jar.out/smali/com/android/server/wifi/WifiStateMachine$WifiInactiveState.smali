.class Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9720
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 9723
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "inside wifi inactive state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9724
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v6, 0x20135

    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9728
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 9840
    :goto_0
    return v2

    .line 9730
    :sswitch_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 9735
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 9736
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9737
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9738
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApstateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncIsWifiApStateInitial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9739
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x24001

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 9740
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, " send connection event if mobileap is already enabled else wait in supplicnat starting state"

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v2, v3

    .line 9840
    goto :goto_0

    .line 9743
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$11500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9744
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CMD_START_SUPPLICANT with arg2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " so deferring it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 9752
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    const v5, 0x2400c

    if-ne v4, v5, :cond_2

    .line 9753
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 9754
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9756
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9757
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12000(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 9758
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_1

    .line 9769
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 9770
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9773
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCountforMHS:I
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9774
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.WIFI_MHS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9775
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "WifiInactiveState - Supplicant connection established"

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9776
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApstateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 9779
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCountforMHS:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12204(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_3

    .line 9780
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiInactiveState Failed to setup control channel, restart supplicant : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCountforMHS:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9782
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$10000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 9783
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9784
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v6, 0x2000b

    invoke-virtual {v5, v6, v2, v8}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 9787
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiInactiveState Failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCountforMHS:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times to start supplicant, unload driver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9789
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCountforMHS:I
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9790
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9791
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9792
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.softap_interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9793
    .local v1, "intentap":Landroid/content/Intent;
    const-string v2, "interface_state"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9794
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 9795
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendErrorBroadcast(I)V
    invoke-static {v2, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 9799
    .end local v1    # "intentap":Landroid/content/Intent;
    :sswitch_5
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_DELETE_SOFTAP_INTERFACE  current state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9800
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSoftApInterface(Z)Z
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9801
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Failed to set the SOFTAP_INTERFACE "

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9802
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9806
    :sswitch_6
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_CREATE_SOFTAP_INTERFACE  current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$12800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9807
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSoftApInterface(Z)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9808
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Failed to set the SOFTAP_INTERFACE "

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9809
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9813
    :sswitch_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_4

    .line 9814
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$13002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9815
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$13100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$13200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9817
    :cond_4
    const-string v2, "WifiStateMachine"

    const-string v4, "Deferring CMD_SET_OPERATIONAL_MODE"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9818
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$13300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9822
    :sswitch_8
    const-string v2, "WifiStateMachine"

    const-string v4, "Deferring CMD_START_DRIVER"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9823
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$13400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9826
    :sswitch_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "Recevied CMD_START_WIFI_FROM_MHS in WifiInactiveState Defer it and handle in Initial State"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9827
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9830
    :sswitch_a
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_DISABLE_P2P_RSP getCurrentState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9831
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApstateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncIsWifiApStateInitial()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApstateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    .line 9834
    const-string v2, "WifiStateMachine"

    const-string v4, "sending msg to softapstatemachine to make the bcm interface up "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9835
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiInactiveState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApstateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 9728
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_1
        0x2000d -> :sswitch_8
        0x20048 -> :sswitch_7
        0x20085 -> :sswitch_a
        0x2025a -> :sswitch_9
        0x2025c -> :sswitch_2
        0x2025d -> :sswitch_6
        0x2025e -> :sswitch_5
        0x24001 -> :sswitch_3
        0x24002 -> :sswitch_4
    .end sparse-switch
.end method
