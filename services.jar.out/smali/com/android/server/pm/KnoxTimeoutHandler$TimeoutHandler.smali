.class Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown msg type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$200(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->cancelLockTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$300(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->handleHomeShow(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$400(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->hideKeyguardIfNeeded()V
    invoke-static {v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$500(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    goto :goto_0

    .line 150
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$600(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
