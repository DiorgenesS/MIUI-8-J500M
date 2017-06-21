.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13229
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 13217
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13218
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 13219
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13220
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13221
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13222
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 13224
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 13225
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 13226
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13227
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 13230
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 13231
    return-void
.end method

.method static synthetic access$4400(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 13215
    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 13215
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p1
.end method

.method static synthetic access$4500(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 13215
    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return v0
.end method

.method static synthetic access$4502(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 13215
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p1
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 13238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 13240
    .local v2, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEnableMultiSelection:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 13548
    :cond_0
    :goto_0
    return-void

    .line 13244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 13245
    .local v9, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 13247
    .local v10, "rawY":F
    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-nez v14, :cond_3

    :cond_2
    const/16 v14, 0xd3

    if-ne v2, v14, :cond_e

    .line 13250
    :cond_3
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2700()Z

    move-result v14

    if-nez v14, :cond_6

    .line 13251
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 13252
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 13253
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13255
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->canTextMultiSelection()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 13256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3002(J)J

    .line 13257
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_5

    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # getter for: Landroid/widget/TextView;->mLastHoveredTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3200()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x64

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 13258
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v14

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13261
    :cond_5
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13262
    const/4 v14, 0x1

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2702(Z)Z

    .line 13264
    :cond_6
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2700()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 13267
    :cond_7
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-eq v14, v15, :cond_8

    .line 13268
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    goto/16 :goto_0

    .line 13272
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static {v14}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static {v14}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 13275
    :cond_9
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/EditText;

    if-eqz v14, :cond_d

    .line 13276
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 13277
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;III)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->canSelectText()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 13293
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v13

    .line 13294
    .local v13, "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 13296
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 13300
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-nez v14, :cond_0

    .line 13302
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->hideMultiSelectPopupWindow()V
    invoke-static {v14}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)V

    .line 13303
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v14, v14, Landroid/widget/EditText;

    if-eqz v14, :cond_f

    :cond_b
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 13305
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13306
    .local v11, "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v14, v9, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 13307
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 13308
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13310
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13311
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_14

    .line 13312
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_13

    .line 13314
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # getter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3900()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_10

    .line 13315
    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 13316
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13317
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13319
    :cond_c
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13320
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13321
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3902(J)J

    goto/16 :goto_0

    .line 13281
    .end local v11    # "startPos":Landroid/graphics/Point;
    .end local v13    # "text":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    # invokes: Landroid/widget/TextView;->checkPosOnText(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;III)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    .line 13287
    :cond_e
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2702(Z)Z

    .line 13288
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v14, :cond_0

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    .line 13303
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 13325
    .restart local v11    # "startPos":Landroid/graphics/Point;
    :cond_10
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13327
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v5

    .line 13328
    .local v5, "flag":Z
    if-nez v5, :cond_11

    .line 13329
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 13330
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v16

    aput v16, v14, v15

    .line 13332
    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_15

    .line 13333
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13339
    :cond_12
    :goto_2
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3902(J)J

    .line 13340
    const-string v14, "TextView"

    const-string v15, "Pen down with side button! : start text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13342
    .end local v5    # "flag":Z
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13343
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13344
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13347
    :cond_14
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_0

    .line 13335
    .restart local v5    # "flag":Z
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_12

    .line 13336
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_2

    .line 13353
    .end local v5    # "flag":Z
    .end local v11    # "startPos":Landroid/graphics/Point;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_1e

    .line 13354
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 13355
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13356
    .restart local v11    # "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    .line 13357
    .local v3, "endX":F
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    .line 13359
    .local v4, "endY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;III)Z

    move-result v14

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13361
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_16

    .line 13362
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13365
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13366
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_17

    .line 13367
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_18

    .line 13368
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13375
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v14, v15, :cond_19

    .line 13376
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_0

    .line 13377
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .line 13370
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_18
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_17

    .line 13371
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_3

    .line 13382
    :cond_19
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v14, :cond_0

    .line 13383
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13384
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mHighlightPathBogus:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4202(Landroid/widget/TextView;Z)Z

    .line 13385
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_1c

    .line 13386
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_1a

    .line 13387
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13389
    :cond_1a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_1b

    .line 13390
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13392
    :cond_1b
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13393
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 13395
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->isFocused()Z

    move-result v14

    if-nez v14, :cond_1d

    .line 13396
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->requestFocus()Z

    .line 13398
    :cond_1d
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 13411
    .end local v3    # "endX":F
    .end local v4    # "endY":F
    .end local v11    # "startPos":Landroid/graphics/Point;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_1e
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13412
    .restart local v11    # "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    .line 13413
    .restart local v3    # "endX":F
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    .line 13415
    .restart local v4    # "endY":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1f

    .line 13416
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13418
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13419
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_20

    .line 13420
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_23

    .line 13421
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13428
    :cond_20
    :goto_4
    const/4 v8, 0x0

    .line 13429
    .local v8, "isSameLine":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v14}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v14

    if-eqz v14, :cond_21

    .line 13430
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    if-ne v14, v15, :cond_24

    const/4 v8, 0x1

    .line 13433
    :cond_21
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_25

    if-eqz v8, :cond_25

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static {v15}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_25

    .line 13434
    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_22

    .line 13435
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13436
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13438
    :cond_22
    new-instance v14, Landroid/widget/TextView$StylusEventListener$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13468
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13470
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13471
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 13423
    .end local v8    # "isSameLine":Z
    :cond_23
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_20

    .line 13424
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto/16 :goto_4

    .line 13430
    .restart local v8    # "isSameLine":Z
    :cond_24
    const/4 v8, 0x0

    goto :goto_5

    .line 13475
    :cond_25
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13476
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v14, v15, :cond_28

    .line 13477
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13478
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_27

    .line 13479
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    .line 13480
    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13481
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_26

    const/4 v14, 0x1

    :goto_6
    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v15, v14}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_26
    const/4 v14, 0x0

    goto :goto_6

    .line 13483
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    .line 13488
    :cond_28
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-le v14, v15, :cond_29

    .line 13489
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13490
    .local v12, "temp":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13491
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13493
    .end local v12    # "temp":I
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_2b

    move-object v14, v13

    .line 13494
    check-cast v14, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13495
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static {v14}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    .line 13499
    :try_start_0
    new-instance v6, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 13500
    .local v6, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v13, v14, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13504
    .end local v6    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_7
    const-string v14, "TextView"

    const-string v15, "Pen up with side button! : end text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13507
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 13509
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    .line 13510
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13526
    .end local v13    # "text":Ljava/lang/CharSequence;
    :cond_2a
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13527
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 13501
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    .line 13502
    .local v7, "ie":Ljava/lang/IllegalStateException;
    const-string v14, "TextView"

    const-string v15, "** skip HERMES Service by IllegalStateException **"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 13511
    .end local v7    # "ie":Ljava/lang/IllegalStateException;
    :cond_2b
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_2a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v14, :cond_2a

    .line 13512
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isTextSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v14

    if-nez v14, :cond_2c

    if-eqz v8, :cond_2a

    .line 13513
    :cond_2c
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13514
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    iget-boolean v14, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v14, :cond_2d

    .line 13515
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 13517
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_2a

    .line 13518
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 13519
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->updateSelectionHandler()V

    .line 13521
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_8

    .line 13533
    .end local v3    # "endX":F
    .end local v4    # "endY":F
    .end local v8    # "isSameLine":Z
    .end local v11    # "startPos":Landroid/graphics/Point;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13534
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13536
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_30

    .line 13537
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    .line 13538
    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13539
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_2f

    const/4 v14, 0x1

    :goto_9
    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v15, v14}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_2f
    const/4 v14, 0x0

    goto :goto_9

    .line 13541
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    .line 13542
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_0

    .line 13543
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-static {v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 13296
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
