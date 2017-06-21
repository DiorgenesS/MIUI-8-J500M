.class Lcom/android/server/am/ActivityManagerService$29;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 25606
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25610
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 25611
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 25667
    :cond_0
    :goto_0
    return-void

    .line 25613
    :cond_1
    const-string v12, "PID"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 25614
    .local v9, "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 25617
    const-string/jumbo v12, "kill"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 25619
    .local v7, "killProcess":Z
    const-string v12, "cached"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 25620
    .local v2, "cached":Z
    const-string v12, "abnormal"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25622
    .local v0, "abnormal":Z
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 25623
    const-string v12, "ActivityManager"

    const-string v13, "Value is not set. ACTION_BARTENDER_SLOW_DOWN intent needs at least 1 target group."

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25627
    :cond_2
    const-string/jumbo v12, "stay"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 25629
    .local v11, "stay":Z
    const-string/jumbo v12, "release"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 25630
    .local v10, "release":Z
    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 25631
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_c

    .line 25632
    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 25633
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 25634
    .local v8, "pid":Ljava/lang/Integer;
    iget v12, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v12, v14, :cond_3

    .line 25635
    if-eqz v7, :cond_8

    .line 25636
    const/4 v3, 0x1

    .line 25637
    .local v3, "doKill":Z
    if-eqz v2, :cond_4

    iget-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    if-nez v12, :cond_4

    .line 25638
    const/4 v3, 0x0

    .line 25639
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    if-nez v12, :cond_5

    .line 25640
    const/4 v3, 0x0

    .line 25641
    :cond_5
    if-eqz v3, :cond_6

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v14, 0x5

    if-lt v12, v14, :cond_6

    .line 25642
    const-string/jumbo v12, "excessive cpu kill"

    const/4 v14, 0x1

    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 25660
    .end local v3    # "doKill":Z
    :cond_6
    :goto_2
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25631
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25644
    .restart local v8    # "pid":Ljava/lang/Integer;
    :cond_8
    if-eqz v10, :cond_a

    .line 25645
    if-eqz v2, :cond_9

    .line 25646
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 25647
    :cond_9
    if-eqz v0, :cond_6

    .line 25648
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_2

    .line 25666
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 25650
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "pid":Ljava/lang/Integer;
    :cond_a
    if-eqz v2, :cond_b

    .line 25651
    const/4 v12, 0x1

    :try_start_1
    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 25652
    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    .line 25654
    :cond_b
    if-eqz v0, :cond_6

    .line 25655
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    .line 25656
    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    goto :goto_2

    .line 25665
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_c
    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 25666
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
