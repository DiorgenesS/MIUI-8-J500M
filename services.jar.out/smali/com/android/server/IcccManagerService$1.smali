.class Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/IcccManagerService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receive intent action is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string/jumbo v6, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    :try_start_0
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SysScope scanning finished"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 72
    const-string v6, "Result"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {v6}, Lcom/android/server/IcccManagerService;->access$002(I)I

    .line 73
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSysScopeResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {}, Lcom/android/server/IcccManagerService;->access$000()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->enforcePermission()Z
    invoke-static {v6}, Lcom/android/server/IcccManagerService;->access$100(Lcom/android/server/IcccManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->setSysScopeField()V
    invoke-static {v6}, Lcom/android/server/IcccManagerService;->access$200(Lcom/android/server/IcccManagerService;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v7, "Not System UID. Only system UID caller can change status"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onReceive:ACTION_SYSSCOPESTATUS-exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string v6, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .local v2, "data":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 90
    :try_start_1
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "data is null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onReceive:ACTION_BCS_REQUEST-exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    const-string/jumbo v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "command":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    iget-object v6, v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v6, "AT+ICCCINFO=1,0,0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "iccc_res_intent":Landroid/content/Intent;
    const-string v5, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    .line 98
    .local v5, "iccc_response":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/server/IcccManagerService;->access$300(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    const-string/jumbo v6, "response"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v6, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    # getter for: Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/IcccManagerService;->access$400(Lcom/android/server/IcccManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
