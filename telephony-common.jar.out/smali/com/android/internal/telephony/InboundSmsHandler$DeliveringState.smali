.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "entering Delivering state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "leaving Delivering state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeliveringState.processMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 576
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 623
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 579
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v1, v2

    .line 581
    goto :goto_0

    .line 585
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    move v1, v2

    .line 587
    goto :goto_0

    .line 591
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 592
    .local v0, "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    :goto_1
    move v1, v2

    .line 603
    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v3, "No broadcast sent on processing EVENT_BROADCAST_SMS in Delivering state. Return to Idle state"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_1

    .line 607
    .end local v0    # "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    move v1, v2

    .line 608
    goto :goto_0

    .line 611
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v3, "mWakeLock released while delivering/broadcasting!"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 616
    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
