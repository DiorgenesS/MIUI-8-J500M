.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v3, :cond_0

    .line 138
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v5, "InCallService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InCallService - handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v5, Landroid/telecom/Phone;

    new-instance v6, Landroid/telecom/InCallAdapter;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v6, v3}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v5, v6}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    # setter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4, v5}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 101
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 102
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 113
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .line 122
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallAudioState;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto/16 :goto_0

    .line 125
    :pswitch_5
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 128
    :pswitch_6
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 132
    :pswitch_7
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalChangeInContent(I)V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
