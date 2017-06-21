.class Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEventToSMRunnable"
.end annotation


# instance fields
.field private mEvent:I

.field private mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p2, "networkType"    # I
    .param p3, "event"    # I

    .prologue
    .line 5230
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5231
    iput p2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    .line 5232
    iput p3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    .line 5233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5237
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posting Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to SM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5239
    iget v2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 5240
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 5241
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid cid for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5264
    :goto_0
    return-void

    .line 5244
    :cond_0
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 5246
    .local v1, "msgToSM":Landroid/os/Message;
    iget v2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    packed-switch v2, :pswitch_data_0

    .line 5251
    iget v2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5255
    :goto_1
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 5256
    const-string v2, "[IPSEC->EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 5258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5260
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    iget v3, p0, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;->mEvent:I

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v3}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    goto :goto_0

    .line 5248
    :pswitch_0
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 5262
    :cond_1
    const-string v2, "[IPSEC->EPDGService]"

    const-string v3, "Event received for invalid cid neglect it"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5246
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method
