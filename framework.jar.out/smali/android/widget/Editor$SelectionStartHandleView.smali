.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4650
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4651
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4637
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4643
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4648
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    .line 4652
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHandleType:I

    .line 4653
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4655
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    .line 4656
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 4

    .prologue
    .line 4917
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    .line 4918
    .local v1, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4920
    .local v0, "iconSize":I
    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 4836
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4837
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_1

    .line 4839
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4840
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$5000(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4844
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4846
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4847
    :goto_0
    return-void

    .line 4842
    :cond_2
    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4903
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4905
    if-eqz p2, :cond_1

    .line 4906
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 4908
    .local v2, "rightEdge":I
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 4913
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    move v1, v3

    .line 4908
    goto :goto_0

    .line 4910
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 4911
    .local v0, "leftEdge":I
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    .restart local v1    # "nearEdge":Z
    :goto_1
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4868
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4870
    .local v0, "bSwitchCursor":Z
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4872
    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4873
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4876
    :cond_0
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v6, :cond_2

    .line 4877
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4878
    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4879
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4880
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4882
    .local v1, "compensation":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float/2addr v5, v1

    iget v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 4883
    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 4887
    .end local v1    # "compensation":F
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :goto_1
    return v4

    .line 4880
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    :cond_1
    const/high16 v1, -0x41000000    # -0.5f

    goto :goto_0

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_2
    move v4, v5

    .line 4887
    goto :goto_1
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4674
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4669
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4660
    if-eqz p2, :cond_0

    .line 4661
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4663
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4892
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4893
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4896
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4897
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4899
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4855
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4856
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v0}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4857
    return-void

    .line 4856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4860
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4861
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 4862
    const/4 v0, 0x1

    .line 4864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 25
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4690
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4833
    :goto_0
    return-void

    .line 4697
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4701
    :cond_1
    const/4 v15, 0x0

    .line 4702
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4703
    .local v16, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4704
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4706
    .local v8, "initialOffset":I
    move/from16 v0, v16

    if-lt v8, v0, :cond_2

    .line 4709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4710
    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4718
    :cond_2
    :goto_1
    move v13, v8

    .line 4719
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v7

    .line 4720
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;I)I

    move-result v19

    .line 4722
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v23, v0

    const/high16 v24, -0x40800000    # -1.0f

    cmpl-float v23, v23, v24

    if-nez v23, :cond_3

    .line 4723
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4726
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    .line 4727
    .local v17, "selectionStart":I
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v18

    .line 4728
    .local v18, "selectionStartRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4729
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4735
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    if-eqz v18, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-nez v18, :cond_7

    if-eqz v5, :cond_7

    .line 4738
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4739
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4740
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4713
    .end local v5    # "atRtl":Z
    .end local v7    # "end":I
    .end local v10    # "isLvlBoundary":Z
    .end local v13    # "offset":I
    .end local v17    # "selectionStart":I
    .end local v18    # "selectionStartRtl":Z
    .end local v19    # "start":I
    :cond_6
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    goto :goto_1

    .line 4742
    .restart local v5    # "atRtl":Z
    .restart local v7    # "end":I
    .restart local v10    # "isLvlBoundary":Z
    .restart local v13    # "offset":I
    .restart local v17    # "selectionStart":I
    .restart local v18    # "selectionStartRtl":Z
    .restart local v19    # "start":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    if-nez v10, :cond_8

    .line 4745
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4746
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4747
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    goto/16 :goto_0

    .line 4750
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v23, v0

    sub-float v22, p1, v23

    .line 4751
    .local v22, "xDiff":F
    if-eqz v5, :cond_d

    .line 4752
    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-gtz v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_c

    :cond_9
    const/4 v9, 0x1

    .line 4758
    .local v9, "isExpanding":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 4759
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionStartHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v23

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getScrollX()I

    move-result v23

    if-eqz v23, :cond_11

    if-eqz v9, :cond_a

    move/from16 v0, v17

    if-lt v13, v0, :cond_b

    :cond_a
    if-nez v9, :cond_11

    .line 4765
    :cond_b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4766
    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .line 4768
    .local v12, "nextOffset":I
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4752
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_2

    .line 4754
    :cond_d
    const/16 v23, 0x0

    cmpg-float v23, v22, v23

    if-ltz v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_f

    :cond_e
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    :goto_4
    goto :goto_2

    .end local v9    # "isExpanding":Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_4

    .line 4766
    .restart local v9    # "isExpanding":Z
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    goto :goto_3

    .line 4773
    :cond_11
    if-eqz v9, :cond_1a

    .line 4775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_15

    .line 4779
    :cond_12
    move/from16 v21, v19

    .line 4780
    .local v21, "wordStartOnCurrLine":I
    if-eqz v11, :cond_13

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v23

    move/from16 v0, v23

    if-eq v0, v6, :cond_13

    .line 4781
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v21

    .line 4783
    :cond_13
    sub-int v23, v7, v21

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v7, v23

    .line 4784
    .local v14, "offsetThresholdToSnap":I
    if-le v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_18

    .line 4787
    :cond_14
    move/from16 v13, v19

    .line 4792
    .end local v14    # "offsetThresholdToSnap":I
    .end local v21    # "wordStartOnCurrLine":I
    :cond_15
    :goto_5
    if-eqz v11, :cond_19

    if-ge v13, v8, :cond_19

    .line 4793
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4794
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v23, v23, v4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4799
    .end local v4    # "adjustedX":F
    :goto_6
    const/4 v15, 0x1

    .line 4828
    :cond_16
    :goto_7
    if-eqz v15, :cond_17

    .line 4829
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4830
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4832
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    goto/16 :goto_0

    .line 4789
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v21    # "wordStartOnCurrLine":I
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    goto :goto_5

    .line 4797
    .end local v14    # "offsetThresholdToSnap":I
    .end local v21    # "wordStartOnCurrLine":I
    :cond_19
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_6

    .line 4801
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    move/from16 v24, v0

    sub-float v24, p1, v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4803
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-gt v3, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_1e

    .line 4805
    :cond_1b
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v20

    .line 4806
    .local v20, "startLine":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_1d

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    .line 4808
    move/from16 v13, v19

    .line 4809
    if-eqz v11, :cond_1c

    if-ge v13, v8, :cond_1c

    .line 4810
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4811
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v23, v23, v4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4819
    .end local v4    # "adjustedX":F
    :goto_8
    const/4 v15, 0x1

    .line 4820
    goto/16 :goto_7

    .line 4814
    :cond_1c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_8

    .line 4817
    :cond_1d
    move v13, v3

    goto :goto_8

    .line 4820
    .end local v20    # "startLine":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v3, v0, :cond_16

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto/16 :goto_7
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4679
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4681
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4682
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4683
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4685
    :cond_0
    return-void
.end method
