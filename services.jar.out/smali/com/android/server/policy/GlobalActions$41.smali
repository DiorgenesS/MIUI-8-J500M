.class Lcom/android/server/policy/GlobalActions$41;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 4423
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4425
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 4657
    :cond_0
    :goto_0
    return-void

    .line 4427
    :pswitch_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v11

    if-eqz v11, :cond_a

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$7800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 4428
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4429
    const/4 v6, 0x0

    .line 4430
    .local v6, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 4431
    .local v3, "ll":Landroid/widget/LinearLayout;
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v11

    if-nez v11, :cond_3

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6600()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4432
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v11

    const v12, 0x10203a6

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 4437
    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_5

    .line 4438
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 4439
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 4440
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4447
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 4448
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4437
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4434
    .end local v0    # "i":I
    :cond_3
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const v12, 0x10203a6

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    goto :goto_1

    .line 4443
    .restart local v0    # "i":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 4444
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_3

    .line 4452
    :cond_5
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions;->requestUpdateWindowBlur(F)V

    .line 4454
    if-eqz v3, :cond_8

    .line 4455
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4456
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4457
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 4460
    :cond_6
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v11

    if-nez v11, :cond_7

    .line 4461
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4462
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 4463
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 4468
    :cond_7
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/GlobalActions$41$1;

    invoke-direct {v12, p0}, Lcom/android/server/policy/GlobalActions$41$1;-><init>(Lcom/android/server/policy/GlobalActions$41;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4495
    :cond_8
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9200(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9200(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_9

    .line 4496
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9200(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4498
    :cond_9
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_0

    .line 4499
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 4503
    .end local v0    # "i":I
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v6    # "view":Landroid/view/View;
    :cond_a
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4504
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_b

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 4505
    :cond_b
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 4508
    :cond_c
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v11

    if-nez v11, :cond_e

    .line 4509
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4510
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_d

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 4511
    :cond_d
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 4512
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$000()Z

    move-result v11

    if-nez v11, :cond_11

    .line 4513
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 4514
    const/4 v11, 0x0

    :try_start_0
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 4515
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4523
    :cond_e
    :goto_4
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 4524
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 4526
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$4602(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 4527
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    .line 4528
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    .line 4529
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$7802(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 4530
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-nez v11, :cond_f

    .line 4531
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    .line 4535
    :cond_f
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4700()Z

    move-result v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4536
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    .line 4538
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$302(Z)Z

    .line 4539
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 4540
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4542
    :cond_10
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    .line 4515
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 4517
    :cond_11
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$002(Z)Z

    goto :goto_4

    .line 4552
    :pswitch_1
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4553
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4559
    :pswitch_2
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 4560
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4562
    :cond_12
    sget-object v11, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v11, :cond_0

    .line 4563
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    .line 4569
    :pswitch_3
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4571
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    .line 4575
    :pswitch_4
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9400(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 4577
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9400(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v12}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4579
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 4580
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v12, v12, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v13, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v13}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v13

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v11, v12, v13}, Lcom/android/server/policy/GlobalActions;->access$8300(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4583
    :cond_13
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4584
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4589
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4590
    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4591
    const-string/jumbo v11, "suppressCoverUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4592
    const-string/jumbo v11, "miniModeUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4593
    const-string/jumbo v12, "sender"

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4594
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4600
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4603
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_15

    .line 4604
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4605
    .local v7, "viewLand1":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 4606
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4607
    .local v9, "viewPort1":Landroid/view/View;
    const v11, 0x10203b7

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4608
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4609
    .local v4, "messageView":Landroid/widget/TextView;
    const v11, 0x10203b5

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4610
    .local v5, "statusView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 4611
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v9, v12}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 4603
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v9    # "viewPort1":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4614
    .end local v7    # "viewLand1":Landroid/view/View;
    :cond_15
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4615
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmLandscape"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 4616
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4617
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9500(Lcom/android/server/policy/GlobalActions;)V

    .line 4618
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    goto/16 :goto_0

    .line 4623
    .end local v0    # "i":I
    :pswitch_7
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4626
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_17

    .line 4627
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4628
    .local v10, "viewPort2":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 4629
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4630
    .local v8, "viewLand2":Landroid/view/View;
    const v11, 0x10203b7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4631
    .restart local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4632
    .restart local v4    # "messageView":Landroid/widget/TextView;
    const v11, 0x10203b5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4633
    .restart local v5    # "statusView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 4634
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v8, v12}, Lcom/android/server/policy/GlobalActions;->access$6400(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 4626
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v8    # "viewLand2":Landroid/view/View;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4637
    .end local v10    # "viewPort2":Landroid/view/View;
    :cond_17
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4400()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4638
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmPortrait"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 4639
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4640
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9600(Lcom/android/server/policy/GlobalActions;)V

    .line 4641
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    goto/16 :goto_0

    .line 4646
    .end local v0    # "i":I
    :pswitch_8
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4647
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$5800(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    .line 4651
    :pswitch_9
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4652
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$7100(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    .line 4425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
