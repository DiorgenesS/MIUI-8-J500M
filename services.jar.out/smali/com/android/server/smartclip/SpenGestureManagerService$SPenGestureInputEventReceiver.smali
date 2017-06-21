.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 803
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 804
    return-void
.end method

.method private disableSPenGestureView(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 807
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isShowingGestureEffect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableSPenGestureView, mSmartClipView.addSPenEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 812
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 813
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->setPhoneWindowMangerFlag(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 824
    const/4 v3, 0x0

    .line 826
    .local v3, "handled":Z
    :try_start_0
    instance-of v9, p1, Landroid/view/MotionEvent;

    if-eqz v9, :cond_14

    .line 827
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    .line 828
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 829
    .local v2, "action":I
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2800()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    const/4 v4, 0x1

    .line 831
    .local v4, "isSideButtonPressed":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    .line 833
    :cond_1
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2900(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 835
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 836
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->checkHoverStay(Landroid/view/MotionEvent;IZ)V
    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 839
    :cond_2
    if-nez v4, :cond_3

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v9, 0x7

    if-eq v2, v9, :cond_4

    const/4 v9, 0x2

    if-eq v2, v9, :cond_4

    .line 842
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInputEvent 4 : Action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sideButtonPressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", coverOpened="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_4
    const/4 v8, 0x0

    .line 848
    .local v8, "needsToProcessEvent":Z
    if-eqz v4, :cond_5

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 849
    const/4 v8, 0x1

    .line 854
    :cond_5
    const/16 v9, 0x9

    if-ne v2, v9, :cond_a

    .line 855
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(IZ)V
    invoke-static {v9, v2, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;IZ)V

    .line 901
    :cond_6
    :goto_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 904
    packed-switch v2, :pswitch_data_0

    .line 945
    :pswitch_0
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onInputEvent : default"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .end local v8    # "needsToProcessEvent":Z
    :cond_7
    :goto_2
    const/4 v3, 0x1

    .line 964
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_8
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 966
    return-void

    .line 829
    .restart local v2    # "action":I
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 856
    .restart local v4    # "isSideButtonPressed":Z
    .restart local v8    # "needsToProcessEvent":Z
    :cond_a
    const/4 v9, 0x7

    if-ne v2, v9, :cond_b

    .line 857
    :try_start_1
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 858
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 964
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v8    # "needsToProcessEvent":Z
    :catchall_0
    move-exception v9

    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    .line 860
    .restart local v2    # "action":I
    .restart local v4    # "isSideButtonPressed":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v8    # "needsToProcessEvent":Z
    :cond_b
    const/16 v9, 0xa

    if-ne v2, v9, :cond_f

    .line 861
    :try_start_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 862
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 863
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3402(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 864
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3502(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 866
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 867
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v10

    const/4 v11, 0x0

    sub-float/2addr v10, v11

    float-to-double v10, v10

    iget-object v12, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v12}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v12

    const/4 v13, 0x0

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3602(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 870
    const-string v9, "HOVER_TEST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Velocity X = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , Y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , Angle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x28

    if-lt v9, v10, :cond_c

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5f

    if-le v9, v10, :cond_d

    .line 873
    :cond_c
    const-string v9, "HOVER_TEST"

    const-string v10, "[HOVER] Angle is not heading to Backkey, try to send Hover exit broadcast..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 875
    .local v7, "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 876
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 877
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 879
    .end local v7    # "msg":Landroid/os/Message;
    :cond_d
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5dc

    if-ge v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5dc

    if-ge v9, v10, :cond_e

    .line 880
    const-string v9, "HOVER_TEST"

    const-string v10, "[HOVER] Velocity is low, try to send Hover exit broadcast..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 882
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 883
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 884
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 886
    .end local v7    # "msg":Landroid/os/Message;
    :cond_e
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 887
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 888
    const/4 v9, 0x1

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 889
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 893
    .end local v7    # "msg":Landroid/os/Message;
    :cond_f
    if-nez v2, :cond_6

    .line 894
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 895
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "[HOVER] sending hover br is canceled by touch event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 908
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 909
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 910
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 911
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 915
    :cond_10
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 916
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 919
    :cond_11
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    .line 920
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 927
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 928
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 929
    invoke-direct {p0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 936
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 937
    invoke-direct {p0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    .line 939
    :cond_12
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    .line 940
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 949
    :cond_13
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 950
    invoke-direct {p0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 955
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v8    # "needsToProcessEvent":Z
    :cond_14
    instance-of v9, p1, Landroid/view/KeyEvent;

    if-eqz v9, :cond_8

    .line 956
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v5, v0

    .line 957
    .local v5, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 958
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastBackPressedEvent()V
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 959
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
