.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "DisconnectingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "DisconnectingState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1791
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1817
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectingState ignore msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1818
    const/4 v0, 0x0

    .line 1821
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1793
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "DisconnectingState onDisconnect"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1794
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1795
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1796
    const/4 v0, 0x1

    .line 1797
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1805
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V

    .line 1806
    const/4 v0, 0x1

    .line 1807
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1809
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1810
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1811
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 1812
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1814
    :cond_0
    const/4 v0, 0x1

    .line 1815
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1791
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_1
        0x3f2 -> :sswitch_1
        0x3f3 -> :sswitch_1
        0x44e -> :sswitch_0
    .end sparse-switch
.end method
