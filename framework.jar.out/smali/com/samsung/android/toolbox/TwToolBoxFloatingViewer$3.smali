.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;
.super Landroid/content/BroadcastReceiver;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->registerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const-string v5, "AxT9IME.isVisibleWindow"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 453
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    neg-int v5, v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->hide()V

    .line 457
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 458
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 471
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 457
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 464
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 465
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v7

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V

    goto :goto_1

    .line 469
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
