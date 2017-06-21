.class Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
.super Lcom/android/internal/policy/PhoneWindow$DecorView;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPhoneDecorView"
.end annotation


# instance fields
.field mConsumeHoverEvent:Z

.field mFixedRatio:F

.field mGuideViewBound:Landroid/graphics/Rect;

.field mIsResize:Z

.field mLastCorner:Z

.field mLastHoverEdge:Z

.field mLastMoveX:I

.field mLastMoveY:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mScreenHeight:I

.field mScreenWidth:I

.field mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 333
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 324
    new-instance v0, Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    .line 325
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    .line 326
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    .line 327
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 328
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    .line 329
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .line 330
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 331
    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 335
    return-void
.end method

.method private resizeKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 828
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 829
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-super {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 832
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 834
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v1, v3, v4

    .line 835
    .local v1, "resizedHeight":F
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 837
    .local v2, "resizedWidth":F
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v4

    float-to-double v6, v2

    add-double/2addr v6, v8

    double-to-int v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v5

    float-to-double v6, v1

    add-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 838
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 840
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "resizedHeight":F
    .end local v2    # "resizedWidth":F
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 842
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 843
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_5

    .line 844
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-super {p0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 846
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method


# virtual methods
.method adjustPenWindowSize(Landroid/graphics/Rect;F)V
    .locals 9
    .param p1, "curBound"    # Landroid/graphics/Rect;
    .param p2, "ratio"    # F

    .prologue
    .line 656
    const/4 v3, 0x0

    .line 657
    .local v3, "UNDER_MIN_WIDTH":I
    const/4 v1, 0x1

    .line 658
    .local v1, "EXCEED_MAX_WIDTH":I
    const/4 v2, 0x2

    .line 659
    .local v2, "UNDER_MIN_HEIGHT":I
    const/4 v0, 0x3

    .line 660
    .local v0, "EXCEED_MAX_HEIGHT":I
    const/4 v6, -0x1

    .line 661
    .local v6, "what":I
    const/4 v4, 0x1

    .line 662
    .local v4, "lastStackBoundIsMax":Z
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-ne v7, v8, :cond_1

    .line 664
    :cond_0
    const/4 v4, 0x0

    .line 668
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-ge v7, v8, :cond_8

    .line 669
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 670
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 674
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 684
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v7, v8, :cond_c

    .line 685
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 686
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 690
    :cond_4
    :goto_2
    const/4 v6, 0x2

    .line 700
    :cond_5
    :goto_3
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_6

    .line 701
    packed-switch v6, :pswitch_data_0

    .line 724
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v7, :cond_6

    .line 725
    const/4 v5, 0x0

    .line 726
    .local v5, "margin":I
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    .line 727
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v7, v8, :cond_6

    .line 728
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 729
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 730
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 737
    .end local v5    # "margin":I
    :cond_6
    :goto_5
    return-void

    .line 671
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 672
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 675
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    .line 676
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 677
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 681
    :cond_9
    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 678
    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 679
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 687
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 688
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 691
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    if-nez v4, :cond_5

    .line 692
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 693
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 697
    :cond_d
    :goto_7
    const/4 v6, 0x3

    goto/16 :goto_3

    .line 694
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 695
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 704
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 705
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 707
    :cond_f
    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 713
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 714
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    .line 716
    :cond_10
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 732
    .restart local v5    # "margin":I
    :cond_11
    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 760
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->resizeKnoxBadge(Landroid/graphics/Canvas;)V

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 762
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 855
    .local v7, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .line 857
    .local v5, "isMouse":Z
    :goto_0
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 858
    :cond_0
    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_1

    .line 860
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/16 v9, 0x65

    iput v9, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 861
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 967
    :goto_2
    return v8

    .line 855
    .end local v5    # "isMouse":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 862
    .restart local v5    # "isMouse":Z
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "MultiPhoneWindow"

    const-string v9, "Failed to change Pen Point to MOUSEICON_DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v9, v9, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 870
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_2

    .line 873
    :cond_4
    const/4 v1, -0x1

    .line 874
    .local v1, "hoverIcon":I
    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 876
    .local v4, "isFixedSize":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_1d

    .line 878
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 879
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    .line 880
    .local v6, "stackBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_6

    .line 898
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 900
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v3

    .line 901
    .local v3, "isEdge":Z
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v2

    .line 903
    .local v2, "isCorner":Z
    if-nez v4, :cond_12

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-eq v8, v3, :cond_12

    if-nez v2, :cond_12

    .line 904
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 905
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v8, :cond_c

    .line 906
    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/4 v9, 0x6

    if-lt v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    const/16 v9, 0x9

    if-gt v8, v9, :cond_8

    .line 908
    :cond_7
    if-eqz v5, :cond_b

    const/16 v1, 0x65

    .line 910
    :cond_8
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 919
    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 920
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    .line 952
    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    .end local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    if-lez v1, :cond_a

    .line 953
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput v1, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 954
    if-eqz v5, :cond_21

    .line 955
    const/4 v8, -0x1

    invoke-static {v1, v8}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 964
    :cond_a
    :goto_6
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    if-eqz v8, :cond_22

    .line 965
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 908
    .restart local v2    # "isCorner":Z
    .restart local v3    # "isEdge":Z
    .restart local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 911
    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 912
    if-eqz v5, :cond_d

    const/16 v1, 0x6b

    :goto_7
    goto :goto_4

    :cond_d
    const/4 v1, 0x7

    goto :goto_7

    .line 913
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 914
    if-eqz v5, :cond_f

    const/16 v1, 0x6a

    :goto_8
    goto :goto_4

    :cond_f
    const/4 v1, 0x6

    goto :goto_8

    .line 916
    :cond_10
    if-eqz v5, :cond_11

    const/16 v1, 0x65

    .line 917
    :goto_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_4

    .line 916
    :cond_11
    const/4 v1, 0x1

    goto :goto_9

    .line 921
    :cond_12
    if-nez v4, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    if-eq v8, v2, :cond_9

    .line 922
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 923
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v8

    if-nez v8, :cond_17

    .line 924
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 925
    if-eqz v5, :cond_14

    const/16 v1, 0x6d

    .line 939
    :cond_13
    :goto_a
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    .line 940
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    goto :goto_5

    .line 925
    :cond_14
    const/16 v1, 0x9

    goto :goto_a

    .line 926
    :cond_15
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 927
    if-eqz v5, :cond_16

    const/16 v1, 0x6c

    :goto_b
    goto :goto_a

    :cond_16
    const/16 v1, 0x8

    goto :goto_b

    .line 929
    :cond_17
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 930
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 931
    if-eqz v5, :cond_18

    const/16 v1, 0x6c

    :goto_c
    goto :goto_a

    :cond_18
    const/16 v1, 0x8

    goto :goto_c

    .line 932
    :cond_19
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 933
    if-eqz v5, :cond_1a

    const/16 v1, 0x6d

    :goto_d
    goto :goto_a

    :cond_1a
    const/16 v1, 0x9

    goto :goto_d

    .line 936
    :cond_1b
    if-eqz v5, :cond_1c

    const/16 v1, 0x65

    .line 937
    :goto_e
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    goto :goto_a

    .line 936
    :cond_1c
    const/4 v1, 0x1

    goto :goto_e

    .line 942
    .end local v2    # "isCorner":Z
    .end local v3    # "isEdge":Z
    .end local v6    # "stackBounds":Landroid/graphics/Rect;
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    .line 943
    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    if-nez v8, :cond_1e

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    if-eqz v8, :cond_1f

    .line 944
    :cond_1e
    if-eqz v5, :cond_20

    const/16 v1, 0x65

    .line 946
    :cond_1f
    :goto_f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mConsumeHoverEvent:Z

    .line 947
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastHoverEdge:Z

    .line 948
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastCorner:Z

    goto/16 :goto_5

    .line 944
    :cond_20
    const/4 v1, 0x1

    goto :goto_f

    .line 957
    :cond_21
    const/4 v8, -0x1

    :try_start_2
    invoke-static {v1, v8}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 960
    :catch_1
    move-exception v0

    .line 961
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 967
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_2
.end method

.method protected dispatchMultiWindowStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1095
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchMultiWindowStateChanged(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMultiWindowStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;->onStateChanged(I)V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_3

    .line 1108
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMultiWindowStateChanged::updateMinimizeIconDrawable , title= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMinimizeIconDrawable(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;Z)V

    .line 1112
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 340
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 342
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 514
    :cond_1
    :goto_0
    return v5

    .line 345
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v6, v7

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 348
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 349
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 514
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 354
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 355
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v5, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 357
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 358
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 373
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 374
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 387
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_5

    .line 394
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 397
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 398
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 399
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 400
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 402
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 405
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 406
    .local v4, "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 408
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_1

    .line 411
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 412
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 413
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->animatePenWindowHeaderView(Z)V
    invoke-static {v6, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/MultiPhoneWindow;Z)V

    .line 415
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v6, :cond_1

    .line 416
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    goto/16 :goto_0

    .line 425
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 427
    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_b

    const v6, 0x8000

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    move v0, v5

    .line 430
    .local v0, "fixedRatio":Z
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    if-nez v6, :cond_1

    .line 431
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_0

    .line 434
    .end local v0    # "fixedRatio":Z
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 437
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 438
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 439
    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_10

    .line 440
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 441
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 442
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->animatePenWindowHeaderView(Z)V
    invoke-static {v6, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/MultiPhoneWindow;Z)V

    .line 445
    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 446
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 448
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 449
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 452
    .restart local v4    # "tempStackBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v4, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 454
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 455
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 456
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .line 464
    .end local v4    # "tempStackBound":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v0, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 465
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 466
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 467
    iput v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 469
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    .line 471
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    if-eqz v6, :cond_5

    .line 472
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 473
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 476
    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-le v6, v7, :cond_12

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gtz v6, :cond_14

    :cond_12
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_13

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-gtz v6, :cond_14

    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 479
    :cond_14
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 480
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 482
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    goto/16 :goto_0

    .line 485
    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 486
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 487
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 488
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 489
    sget-boolean v6, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v6, :cond_17

    const-string v6, "MultiPhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change guideview bounds before set, old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 493
    :cond_18
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 494
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_19

    .line 496
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 497
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    .line 498
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 499
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow;->animatePenWindowHeaderView(Z)V
    invoke-static {v6, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/MultiPhoneWindow;Z)V

    .line 503
    :cond_19
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 504
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 505
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_0

    .line 508
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    goto/16 :goto_1

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 771
    :cond_1
    return-void
.end method

.method drawBorder(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 774
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    :goto_0
    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 775
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 776
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 777
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v8, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v8, :cond_3

    .line 780
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 818
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v5

    .line 774
    goto :goto_0

    .line 797
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/internal/policy/multiwindow/Border;->drawFocusBorder(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 798
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 799
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 800
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v7, :cond_5

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v7, :cond_1

    .line 805
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredWidth()I

    move-result v2

    .line 806
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMeasuredHeight()I

    move-result v1

    .line 807
    .local v1, "bottom":I
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v4, v1, :cond_7

    .line 808
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 809
    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    .line 816
    .end local v3    # "stackBound":Landroid/graphics/Rect;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, p1, v2, v1, v5}, Lcom/android/internal/policy/multiwindow/Border;->drawUnfocusBorder(Landroid/graphics/Canvas;III)V

    goto/16 :goto_1
.end method

.method isExceededLimitTop(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "guideViewBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 518
    if-eqz p1, :cond_1

    .line 519
    const/4 v0, -0x1

    .line 520
    .local v0, "limitTop":I
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 523
    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    if-le v0, v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v0, :cond_1

    .line 526
    const/4 v1, 0x1

    .line 529
    .end local v0    # "limitTop":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 972
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 973
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v3, "onAttachedToWindow"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 978
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->register()V

    .line 980
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 981
    .local v0, "dragModeReceiver":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 984
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 990
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 994
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 995
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v3, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 996
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v2, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 1000
    return-void

    .line 984
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v3, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 1022
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow, mActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;->unregister()V

    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1002(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-object v4, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v0, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow(Z)V

    .line 1043
    :cond_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 740
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    .line 741
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 746
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onWindowVisibilityChanged(I)V

    .line 751
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 755
    :cond_0
    return-void
.end method

.method resizePenWindow(ZLandroid/view/MotionEvent;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 12
    .param p1, "isFixedRatio"    # Z
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 533
    const/high16 v6, 0x10000

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 534
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 653
    :goto_0
    return-void

    .line 538
    :cond_0
    const/16 v6, 0x800

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 543
    :cond_1
    const/4 v3, 0x0

    .line 544
    .local v3, "resizable":Z
    if-eqz p1, :cond_f

    .line 545
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-lt v6, v7, :cond_2

    .line 546
    const/4 v3, 0x1

    .line 553
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 554
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 555
    .local v0, "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_4

    .line 556
    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    if-gez v0, :cond_4

    .line 557
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 558
    const/4 v3, 0x1

    .line 574
    .end local v0    # "dx":I
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 576
    .local v1, "dy":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    if-le v6, v7, :cond_7

    .line 577
    if-nez v3, :cond_5

    if-eqz p1, :cond_7

    if-lez v1, :cond_7

    .line 578
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 579
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_6

    .line 580
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 582
    :cond_6
    const/4 v3, 0x1

    .line 586
    .end local v1    # "dy":I
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .line 589
    if-eqz p1, :cond_c

    if-eqz v3, :cond_c

    .line 590
    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 591
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    .line 593
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 594
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 596
    .local v2, "height":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 597
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 598
    int-to-float v6, v5

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 599
    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ge v2, v6, :cond_a

    .line 600
    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .line 602
    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 603
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 618
    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->adjustPenWindowSize(Landroid/graphics/Rect;F)V

    .line 621
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    .line 622
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    .line 623
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mLastMoveY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 625
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 628
    if-eqz p1, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v6, v7, :cond_e

    .line 630
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v6, v7, :cond_16

    .line 631
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 638
    :cond_e
    :goto_4
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 640
    .local v4, "tempGuideBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->isExceededLimitTop(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 641
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    .line 651
    :goto_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    .line 652
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    goto/16 :goto_0

    .line 549
    .end local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 561
    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 562
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v0, v6, v7

    .line 563
    .restart local v0    # "dx":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    if-le v6, v7, :cond_4

    .line 564
    if-nez v3, :cond_11

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    .line 565
    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 566
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_12

    .line 567
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 569
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 605
    .end local v0    # "dx":I
    .restart local v2    # "height":I
    .restart local v5    # "width":I
    :cond_13
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 608
    :cond_14
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 609
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 611
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mFixedRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 612
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_b

    .line 613
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 633
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_16
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 642
    .restart local v4    # "tempGuideBound":Landroid/graphics/Rect;
    :cond_17
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-gt v6, v7, :cond_18

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-gt v6, v7, :cond_18

    .line 643
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 644
    :cond_18
    if-eqz p1, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    if-eq v6, v7, :cond_19

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    if-ne v6, v7, :cond_1a

    .line 645
    :cond_19
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 646
    :cond_1a
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    if-gt v6, v7, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mGuideViewBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    if-le v6, v7, :cond_1c

    .line 647
    :cond_1b
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 649
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_5
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public superDispatchHoverEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1017
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEventMW(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1013
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .locals 9
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 1071
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 1058
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAppVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 1064
    .end local v8    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1065
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1066
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    goto :goto_0
.end method

.method protected updateMultiPhoneWindowLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1085
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mStatusGuard:Landroid/view/View;

    .line 1087
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->removeView(Landroid/view/View;)V

    .line 1089
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mNavigationGuard:Landroid/view/View;

    .line 1091
    :cond_3
    return-void
.end method
