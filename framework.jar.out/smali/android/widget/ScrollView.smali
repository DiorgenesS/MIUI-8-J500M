.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final GTP_STATE_NONE:I

.field private final GTP_STATE_PRESSED:I

.field private final GTP_STATE_SHOWN:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mAutoscrollDurationGap:F

.field private mCanScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsFirstScrollview:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollBarState:Z

.field private mLastScrollY:I

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mRequestedChildRect:Landroid/graphics/Rect;

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemEnableGoToTop:Z

.field private mSemFollow2016A:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutStart:Z

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemIsGoToTopShown:Z

.field private mSemScrollChnages:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSipDelta:I

.field private mSipResizeAnimationRunning:Z

.field private mSizeChange:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 363
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 368
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 137
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 151
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 169
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 173
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 184
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 186
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 187
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 188
    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    .line 189
    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    .line 190
    iput v5, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    .line 191
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 192
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 193
    iput v2, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 194
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    .line 195
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 196
    iput v2, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 197
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 203
    iput v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 220
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 221
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 253
    iput v2, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 255
    iput v2, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 261
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 263
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 265
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 267
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 269
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 271
    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 276
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 278
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 280
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 292
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 297
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 302
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 312
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 314
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    .line 316
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 320
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    .line 322
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 323
    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 324
    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 327
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    .line 328
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 329
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    .line 330
    iput v2, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 2986
    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3176
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3177
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3181
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    .line 3184
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutStart:Z

    .line 3185
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemIsGoToTopShown:Z

    .line 3186
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 3188
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 3194
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 3200
    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 3208
    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 3214
    new-instance v1, Landroid/widget/ScrollView$6;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 3220
    iput v8, p0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3221
    iput v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3222
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 372
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 374
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 379
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move v1, v3

    .line 194
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/ScrollView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 112
    iput p1, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    return p1
.end method

.method private autoScrollWithDuration(F)V
    .locals 4
    .param p1, "duration"    # F

    .prologue
    .line 1740
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1741
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1742
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1749
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 489
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 491
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 498
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 500
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2873
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2889
    :cond_0
    const/4 p0, 0x0

    .line 2899
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2891
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2897
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 3521
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 3522
    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3523
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 2

    .prologue
    .line 3516
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .line 3517
    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3518
    return-void
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 2071
    if-eqz p1, :cond_0

    .line 2072
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v0, :cond_1

    .line 2073
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2075
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2841
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2842
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2844
    .local v0, "restoreCount":I
    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2845
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isTwShowingScrollbar()Z

    move-result v2

    .line 2847
    .local v2, "scrollbarState":Z
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    if-eq v3, v2, :cond_2

    .line 2848
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    if-eqz v3, :cond_1

    .line 2849
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2852
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 2854
    :cond_2
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 2855
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2856
    iget v3, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 2857
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2858
    iput v5, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2867
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2868
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2870
    return-void

    .line 2862
    :cond_4
    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v3, :cond_3

    .line 2864
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3456
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_5

    .line 3457
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3458
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3459
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3461
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v3, :cond_4

    .line 3462
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 3463
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3464
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3465
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3467
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3472
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3474
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 3475
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3489
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .line 3468
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_2

    .line 3469
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3476
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-ne v2, v3, :cond_3

    .line 3477
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3478
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3479
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3480
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    .line 3481
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3482
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3484
    :cond_6
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3485
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3486
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 2668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2670
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2672
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2673
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2674
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2677
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2678
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2681
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1816
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1817
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1826
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1828
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1829
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1830
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1831
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1832
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1834
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1840
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1843
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1845
    move-object v1, v5

    .line 1846
    move v3, v8

    .line 1829
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1840
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1848
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1853
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1854
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1860
    move-object v1, v5

    goto :goto_2

    .line 1848
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1863
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1865
    move-object v1, v5

    .line 1866
    const/4 v3, 0x1

    goto :goto_2

    .line 1867
    :cond_7
    if-eqz v7, :cond_0

    .line 1872
    move-object v1, v5

    goto :goto_2

    .line 1879
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2657
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2659
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2660
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 2661
    if-eqz v0, :cond_2

    .line 2662
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2665
    :cond_2
    return-void

    .line 2657
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flingWithoutAcc(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2640
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingWithoutAcc() velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2642
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v13, v0, v1

    .line 2643
    .local v13, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 2645
    .local v12, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v13, 0x2

    const/4 v11, 0x1

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2648
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2649
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2652
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2654
    .end local v12    # "bottom":I
    .end local v13    # "height":I
    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1790
    const/4 v1, 0x0

    .line 1791
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1792
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1793
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1796
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3005
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 3148
    :cond_0
    :goto_0
    return-void

    .line 3007
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3008
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 3011
    :pswitch_1
    const/4 v2, 0x0

    .line 3012
    .local v2, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 3014
    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 3015
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 3017
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 3020
    const/4 v7, 0x1

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3023
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 3024
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3031
    :cond_1
    :goto_1
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 3032
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, -0x1

    .line 3041
    :goto_2
    if-gez v2, :cond_5

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v7, :cond_5

    .line 3044
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3045
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3025
    :cond_2
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 3026
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3027
    :cond_3
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 3028
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3034
    :cond_4
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, 0x1

    goto :goto_2

    .line 3046
    :cond_5
    if-lez v2, :cond_6

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v4, :cond_6

    .line 3049
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3050
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3053
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3054
    .local v3, "overscrollMode":I
    if-eqz v3, :cond_7

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c

    if-lez v4, :cond_c

    :cond_7
    const/4 v0, 0x1

    .line 3057
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_b

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_b

    .line 3058
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    .line 3059
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 3060
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3061
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3062
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3063
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3064
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3077
    .end local v6    # "width":I
    :cond_8
    :goto_4
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3078
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3080
    :cond_a
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3083
    :cond_b
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3084
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3054
    .end local v0    # "canOverscroll":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 3066
    .restart local v0    # "canOverscroll":Z
    :cond_d
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 3067
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3068
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3069
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3070
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 3071
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 3072
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3073
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 3090
    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    .end local v6    # "width":I
    :pswitch_2
    const/4 v7, 0x1

    const v8, 0x453b8000    # 3000.0f

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3093
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    neg-int v1, v7

    .line 3094
    .local v1, "distanceToMove":I
    :goto_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 3096
    .local v5, "scrollaleRange":I
    if-gez v1, :cond_e

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v7, :cond_f

    :cond_e
    if-lez v1, :cond_11

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v5, :cond_11

    .line 3099
    :cond_f
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3100
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3093
    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_5

    .line 3103
    .restart local v1    # "distanceToMove":I
    .restart local v5    # "scrollaleRange":I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3104
    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_12

    const/4 v7, 0x1

    if-ne v3, v7, :cond_17

    if-lez v5, :cond_17

    :cond_12
    const/4 v0, 0x1

    .line 3107
    .restart local v0    # "canOverscroll":Z
    :goto_6
    if-eqz v0, :cond_16

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_16

    .line 3108
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_13

    .line 3109
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18

    .line 3110
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3111
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3112
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3113
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 3114
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3125
    .end local v6    # "width":I
    :cond_13
    :goto_7
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 3126
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3128
    :cond_15
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3131
    :cond_16
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3132
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3104
    .end local v0    # "canOverscroll":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    .line 3116
    .restart local v0    # "canOverscroll":Z
    :cond_18
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_13

    .line 3117
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3118
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3119
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3120
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 3121
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 3138
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    .end local v6    # "width":I
    :pswitch_3
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_19

    .line 3139
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 3140
    :cond_19
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3141
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 3005
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 900
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 901
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 902
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 903
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 908
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initGoToTOP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3233
    const-string v0, "ScrollView"

    const-string v1, " init GTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 3235
    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3237
    :cond_0
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3238
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3239
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 3240
    iput v2, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3241
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3242
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3243
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3245
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 913
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 432
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 433
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 434
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 435
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 436
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 437
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 438
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 439
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 441
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 442
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10809aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 443
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 444
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 921
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 923
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2049
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 3225
    sget v0, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-eqz v0, :cond_0

    .line 3226
    const/4 v0, 0x1

    .line 3228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2608
    if-ne p0, p1, :cond_1

    .line 2613
    :cond_0
    :goto_0
    return v1

    .line 2612
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2613
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 2057
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2058
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2060
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1525
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1526
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1530
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1531
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1532
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1533
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1534
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1537
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playQCBtnFadeIn()V
    .locals 2

    .prologue
    .line 3492
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    :goto_0
    return-void

    .line 3493
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3494
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3493
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3510
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3513
    :goto_0
    return-void

    .line 3511
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3512
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 930
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1962
    const/4 v3, 0x1

    .line 1964
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1965
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1966
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1967
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1969
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1970
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1971
    move-object v5, p0

    .line 1974
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1975
    const/4 v3, 0x0

    .line 1981
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1983
    :cond_1
    return v3

    .line 1967
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1977
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1978
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1977
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2312
    if-eqz p1, :cond_0

    .line 2313
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2316
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2318
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2320
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 2321
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2324
    .end local v0    # "scrollDelta":I
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2335
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2336
    .local v0, "delta":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 2339
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2340
    if-nez p2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v3, :cond_3

    .line 2341
    :cond_0
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2347
    :cond_1
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_2
    move v1, v2

    .line 2336
    goto :goto_0

    .line 2343
    .restart local v1    # "scroll":Z
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private semPlayGotoToFadeIn()V
    .locals 2

    .prologue
    .line 3503
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3506
    :goto_0
    return-void

    .line 3504
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3505
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3504
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3498
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3501
    :goto_0
    return-void

    .line 3499
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3500
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private semSetupGoToTop(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 3248
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v14, :cond_0

    .line 3326
    :goto_0
    return-void

    .line 3249
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3250
    const-string v14, "ScrollView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " setup GOTOTOP = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", fade out = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_c

    .line 3254
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_b

    const/16 p1, 0x0

    .line 3261
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    if-nez v14, :cond_2

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3262
    :cond_2
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3264
    :cond_3
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    .line 3266
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 3268
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    .line 3269
    .local v8, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v5, v14, v15

    .line 3270
    .local v5, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v5, 0x2

    add-int v4, v14, v15

    .line 3272
    .local v4, "centerX":I
    const/4 v12, 0x0

    .line 3273
    .local v12, "paddingTop":I
    const/4 v11, 0x0

    .line 3275
    .local v11, "paddingBottom":I
    const/4 v3, 0x0

    .line 3276
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 3277
    .local v2, "btnH":I
    const/4 v7, 0x0

    .line 3279
    .local v7, "gapH":I
    const/4 v14, 0x2

    new-array v9, v14, [I

    fill-array-data v9, :array_0

    .line 3280
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 3281
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 3284
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v9, v14

    if-gez v14, :cond_5

    .line 3285
    const/4 v14, 0x0

    aget v14, v9, v14

    neg-int v10, v14

    .line 3286
    .local v10, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v10, v14, :cond_5

    .line 3287
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v4, v14

    .line 3292
    .end local v10    # "overlappedW":I
    :cond_5
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_6

    .line 3293
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v10, v14, v15

    .line 3294
    .restart local v10    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v10, v14, :cond_6

    .line 3295
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v4, v14

    .line 3299
    .end local v10    # "overlappedW":I
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 3318
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3319
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3321
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3323
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 3325
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto/16 :goto_0

    .line 3255
    .end local v2    # "btnH":I
    .end local v3    # "btnW":I
    .end local v4    # "centerX":I
    .end local v5    # "contentW":I
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "gapH":I
    .end local v8    # "h":I
    .end local v9    # "locOnScr":[I
    .end local v11    # "paddingBottom":I
    .end local v12    # "paddingTop":I
    .end local v13    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    goto/16 :goto_1

    .line 3256
    :cond_c
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3257
    const/16 p1, 0x0

    .line 3258
    const-string v14, "ScrollView"

    const-string v15, " set -1 but cannot scroll"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3301
    .restart local v2    # "btnH":I
    .restart local v3    # "btnW":I
    .restart local v4    # "centerX":I
    .restart local v5    # "contentW":I
    .restart local v6    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "gapH":I
    .restart local v8    # "h":I
    .restart local v9    # "locOnScr":[I
    .restart local v11    # "paddingBottom":I
    .restart local v12    # "paddingTop":I
    .restart local v13    # "w":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 3302
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 3307
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3308
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3309
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3310
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v3, 0x2

    sub-int v15, v4, v15

    sub-int v16, v8, v2

    sub-int v16, v16, v11

    sub-int v16, v16, v7

    div-int/lit8 v17, v3, 0x2

    add-int v17, v17, v4

    sub-int v18, v8, v11

    sub-int v18, v18, v7

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 3279
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupQuickController(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 3328
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 3329
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 3330
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v7, v14, v15

    .line 3331
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .line 3333
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 3334
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 3336
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3337
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3339
    const/4 v6, 0x1

    .line 3340
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3341
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3344
    const/4 v6, 0x0

    .line 3349
    :cond_0
    if-eqz v6, :cond_2

    .line 3350
    const/4 v14, 0x2

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    .line 3351
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 3352
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3355
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_1

    .line 3356
    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .line 3357
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v12, v14, :cond_1

    .line 3358
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .line 3363
    .end local v12    # "overlappedW":I
    :cond_1
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_2

    .line 3364
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .line 3365
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v12, v14, :cond_2

    .line 3366
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 3371
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 3407
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3408
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3410
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3411
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3413
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3424
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3425
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3427
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3438
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$9;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3453
    return-void

    .line 3373
    :pswitch_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3377
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_3

    .line 3378
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108054b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3379
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108054c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3382
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3383
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3384
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    const/16 v16, 0x0

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3388
    :pswitch_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3392
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_4

    .line 3393
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080549

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108054a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3397
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3398
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3399
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3350
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3410
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 3424
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 3152
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3154
    const/4 v1, 0x1

    .line 3157
    :goto_0
    return v1

    .line 3155
    :catch_0
    move-exception v0

    .line 3156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 453
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 462
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 480
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1995
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1996
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1998
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2000
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 2002
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2003
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2004
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2005
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 2006
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2007
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2029
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2036
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 2037
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2038
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 2039
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2041
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 2010
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 2012
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 2013
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 2023
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 2026
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 2014
    :cond_5
    if-ne p1, v10, :cond_4

    .line 2015
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 2016
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2017
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 2018
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 2019
    sub-int v6, v1, v5

    goto :goto_1

    .line 2026
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 2244
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2261
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 2262
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2263
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 2264
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 2266
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 2267
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2268
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 2269
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v14, :cond_4

    if-lez v6, :cond_4

    :cond_1
    move v10, v14

    .line 2273
    .local v10, "canOverscroll":Z
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v0, :cond_5

    .line 2274
    invoke-super {p0, v12, v13}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2279
    :goto_1
    iput v14, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2281
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2283
    if-eqz v10, :cond_2

    .line 2284
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 2285
    if-gez v13, :cond_6

    if-ltz v4, :cond_6

    .line 2286
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2294
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2296
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2304
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    :goto_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v5

    .line 2269
    goto :goto_0

    .line 2276
    .restart local v10    # "canOverscroll":Z
    :cond_5
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_1

    .line 2287
    :cond_6
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 2288
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 2299
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_7
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2300
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_3
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 2359
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    move v7, v8

    .line 2421
    :cond_0
    :goto_0
    return v7

    .line 2361
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2362
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 2363
    .local v6, "screenTop":I
    add-int v5, v6, v4

    .line 2365
    .local v5, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 2367
    .local v3, "fadingEdge":I
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2371
    .local v1, "childHeight":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-lez v9, :cond_2

    .line 2372
    add-int/2addr v6, v3

    .line 2376
    :cond_2
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 2377
    sub-int/2addr v5, v3

    .line 2380
    :cond_3
    const/4 v7, 0x0

    .line 2382
    .local v7, "scrollYDelta":I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v5, :cond_5

    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-le v9, v6, :cond_5

    .line 2387
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v4, :cond_4

    .line 2389
    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    add-int/2addr v7, v9

    .line 2396
    :goto_1
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2397
    .local v0, "bottom":I
    sub-int v2, v0, v5

    .line 2398
    .local v2, "distanceToBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2400
    goto :goto_0

    .line 2392
    .end local v0    # "bottom":I
    .end local v2    # "distanceToBottom":I
    :cond_4
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    add-int/2addr v7, v9

    goto :goto_1

    .line 2400
    :cond_5
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-ge v8, v6, :cond_7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v5, :cond_7

    .line 2405
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v4, :cond_6

    .line 2407
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v5, v8

    sub-int/2addr v7, v8

    .line 2414
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    .line 2410
    :cond_6
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    sub-int/2addr v7, v8

    goto :goto_2

    .line 2417
    :cond_7
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v8, :cond_0

    if-le v5, v1, :cond_0

    .line 2418
    sub-int v7, v5, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2207
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2187
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 2188
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 2189
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 2202
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 2193
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2194
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2195
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2196
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 2197
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 2202
    goto :goto_0

    .line 2198
    :cond_2
    if-le v4, v2, :cond_1

    .line 2199
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1133
    .local v0, "action":I
    const/16 v10, 0x9

    if-ne v0, v10, :cond_4

    .line 1134
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    .line 1136
    .local v7, "toolType":I
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1139
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v10, :cond_1

    .line 1140
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1144
    :cond_1
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 1146
    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v4, 0x1

    .line 1148
    .local v4, "isHoveringOn":Z
    :goto_0
    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering_list_scroll"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v3, 0x1

    .line 1151
    .local v3, "isHoverListScrollOn":Z
    :goto_1
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 1152
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1157
    .end local v3    # "isHoverListScrollOn":Z
    .end local v4    # "isHoveringOn":Z
    :cond_3
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    .line 1158
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1163
    .end local v7    # "toolType":I
    :cond_4
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v10, :cond_7

    .line 1164
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1344
    :goto_2
    return v10

    .line 1146
    .restart local v7    # "toolType":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 1148
    .restart local v4    # "isHoveringOn":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1168
    .end local v4    # "isHoveringOn":Z
    .end local v7    # "toolType":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 1169
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 1170
    .local v9, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1171
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1172
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1175
    .local v6, "range":I
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v10, :cond_8

    .line 1176
    new-instance v10, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1179
    :cond_8
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v10, :cond_9

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v10, :cond_a

    .line 1180
    :cond_9
    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 1184
    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 1189
    :cond_a
    if-eqz v1, :cond_b

    .line 1190
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1193
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_19

    const/4 v5, 0x1

    .line 1195
    .local v5, "isPossibleTooltype":Z
    :goto_3
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v9, v10, :cond_c

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_10

    :cond_c
    if-lez v8, :cond_10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v10

    if-gt v8, v10, :cond_10

    if-eqz v6, :cond_10

    if-ltz v9, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v10, :cond_d

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    :cond_d
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_e

    if-gt v9, v2, :cond_e

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v10, v6, :cond_e

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_10

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1201
    :cond_10
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1202
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1203
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1206
    :cond_11
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1207
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1210
    :cond_12
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v9, v10, :cond_13

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_14

    :cond_13
    if-lez v8, :cond_14

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v10

    if-le v8, v10, :cond_15

    .line 1211
    :cond_14
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1214
    :cond_15
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_16

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_17

    .line 1215
    :cond_16
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1217
    :cond_17
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1218
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1219
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1222
    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v10, :cond_18

    .line 1223
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 1224
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1227
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

    .line 1193
    .end local v5    # "isPossibleTooltype":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1230
    .restart local v5    # "isPossibleTooltype":Z
    :cond_1a
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_1b

    .line 1231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1233
    :cond_1b
    packed-switch v0, :pswitch_data_0

    .line 1344
    :cond_1c
    :goto_4
    :pswitch_0
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1235
    :pswitch_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1237
    if-ltz v9, :cond_1d

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_1d

    .line 1239
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1242
    const/16 v10, 0xb

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1244
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1245
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1248
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1249
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1250
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    .line 1253
    :cond_1d
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_1c

    if-gt v9, v2, :cond_1c

    .line 1255
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1258
    const/16 v10, 0xf

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1260
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1261
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1264
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1265
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1266
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    .line 1274
    :pswitch_2
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_1e

    .line 1275
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1276
    const/16 v10, 0xa

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

    .line 1280
    :cond_1e
    if-ltz v9, :cond_21

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_21

    .line 1282
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1285
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_1f

    iget v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_20

    .line 1286
    :cond_1f
    const/16 v10, 0xb

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1289
    :cond_20
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1290
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1293
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v10, :cond_1c

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1294
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1295
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1298
    :cond_21
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_1c

    if-gt v9, v2, :cond_1c

    .line 1300
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1303
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_22

    iget v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_23

    .line 1304
    :cond_22
    const/16 v10, 0xf

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1307
    :cond_23
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1308
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1311
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v10, :cond_1c

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1312
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1313
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1321
    :pswitch_3
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1322
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1325
    :cond_24
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1327
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1328
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1329
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1330
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1333
    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_25

    .line 1336
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1339
    :cond_25
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 3
    .param p1, "isStart"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3530
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    .line 3531
    iput v1, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 3532
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 3533
    if-eqz p1, :cond_1

    .line 3534
    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3541
    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 3542
    return v2

    .line 3536
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-nez v0, :cond_0

    .line 3537
    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 593
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 594
    .local v7, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 595
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 596
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 597
    .local v5, "range":I
    const/4 v4, 0x0

    .line 598
    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 601
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_0

    .line 602
    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 605
    :cond_0
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v8, :cond_2

    .line 606
    :cond_1
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 610
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 615
    :cond_2
    if-eqz v1, :cond_3

    .line 616
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 619
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 621
    .local v3, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 624
    .local v0, "action":I
    if-nez v0, :cond_d

    .line 625
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 626
    const-string v8, "ScrollView"

    const-string v9, " action down"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 629
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 630
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 632
    const/4 v8, 0x1

    .line 838
    :goto_1
    return v8

    .line 619
    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 634
    .restart local v0    # "action":I
    .restart local v3    # "isPossibleTooltype":Z
    :cond_5
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 635
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 636
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 637
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 639
    :cond_6
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 640
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 643
    :cond_7
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 645
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 646
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 647
    const/4 v8, 0x1

    goto :goto_1

    .line 650
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 718
    :cond_9
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v8, :cond_a

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_b

    :cond_a
    if-lez v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v8

    if-gt v6, v8, :cond_b

    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_17

    .line 721
    :cond_b
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 722
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 725
    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 726
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 727
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 728
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 730
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 653
    :cond_d
    const/4 v8, 0x2

    if-ne v0, v8, :cond_10

    .line 654
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_f

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 656
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_e

    .line 657
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 658
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 660
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 662
    :cond_f
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 664
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 666
    :cond_10
    const/4 v8, 0x1

    if-eq v0, v8, :cond_11

    const/4 v8, 0x3

    if-ne v0, v8, :cond_9

    .line 667
    :cond_11
    const/4 v8, 0x3

    if-ne v0, v8, :cond_15

    .line 668
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_12

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v8, :cond_12

    .line 670
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 699
    :cond_12
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 701
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 702
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 705
    :cond_13
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 706
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 709
    :cond_14
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 712
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 713
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 714
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 676
    :cond_15
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_12

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 679
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 680
    new-instance v8, Landroid/widget/ScrollView$1;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 687
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 688
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 689
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    const/16 v11, 0x1f4

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 691
    :cond_16
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 692
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 693
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 695
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 733
    :cond_17
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_18

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 736
    :cond_18
    packed-switch v0, :pswitch_data_0

    .line 838
    :cond_19
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 738
    :pswitch_0
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_19

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_19

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 739
    const-string v8, "ScrollView"

    const-string v9, " pen down GoToTp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 742
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 743
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 744
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 748
    :pswitch_1
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_1a

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 749
    const-string v8, "ScrollView"

    const-string/jumbo v9, "pen action move GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 752
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 754
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 757
    :cond_1a
    if-eqz v4, :cond_21

    .line 758
    if-ltz v7, :cond_1d

    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_1d

    .line 760
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1b

    .line 761
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 765
    :cond_1b
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 768
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 769
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 802
    :cond_1c
    :goto_3
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto/16 :goto_2

    .line 771
    :cond_1d
    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_1f

    if-gt v7, v2, :cond_1f

    .line 773
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1e

    .line 774
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 778
    :cond_1e
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 781
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 782
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 785
    :cond_1f
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 786
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 787
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 790
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 791
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 794
    :cond_20
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_3

    .line 796
    :cond_21
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v8, :cond_1c

    .line 798
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 799
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_3

    .line 806
    :pswitch_2
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_23

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_23

    .line 807
    const-string v8, "ScrollView"

    const-string/jumbo v9, "pen up false GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 812
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 813
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 814
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    const/16 v11, 0x1f4

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 816
    :cond_22
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 817
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 819
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 823
    :cond_23
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 824
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 827
    :cond_24
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 828
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 829
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 830
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 832
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 630
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data

    .line 736
    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 743
    :array_1
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2778
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2779
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    .line 2780
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2781
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .line 2782
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2783
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2788
    .local v2, "restoreCount":I
    if-eqz v0, :cond_5

    .line 2789
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2790
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2791
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2792
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2799
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2800
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2801
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2802
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2804
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2806
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2807
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2812
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_6

    .line 2813
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2814
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2815
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2816
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2823
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2825
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2826
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2827
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2828
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2830
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2836
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2838
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 2839
    :cond_4
    return-void

    .line 2794
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2795
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2796
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2797
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto/16 :goto_0

    .line 2818
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2819
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2820
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2821
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2932
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2933
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2934
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 850
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 852
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 853
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 854
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 856
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 858
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 896
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 865
    :cond_2
    const/4 v1, 0x0

    .line 866
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 867
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 896
    goto :goto_0

    .line 869
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 870
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 875
    :goto_2
    if-eqz v1, :cond_3

    .line 876
    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 872
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_2

    .line 880
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 881
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 886
    :goto_3
    if-eqz v1, :cond_3

    .line 887
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 883
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_3

    .line 891
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_4

    .line 867
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2624
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2625
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2626
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2628
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2631
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2632
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2635
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2637
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1931
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1932
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1934
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1935
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1937
    if-eqz v1, :cond_0

    .line 1938
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1939
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1940
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1941
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1942
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1946
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1931
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1753
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 419
    :goto_0
    return v3

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 413
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 414
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 415
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 416
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 419
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 427
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 403
    :goto_0
    return v1

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 399
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 400
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 403
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1632
    iget v0, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPixelThresholdY:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v1, :cond_0

    .line 1634
    iput p1, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1635
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 1637
    :cond_0
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 1072
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1073
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 1074
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 1076
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 1077
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 1078
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 1081
    const/4 v0, 0x1

    .line 1087
    :cond_0
    const/4 v1, 0x0

    .line 1088
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1090
    :goto_0
    return v1

    .line 1088
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 2213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2218
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2221
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2224
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2225
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 2230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2232
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2235
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2238
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2239
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2729
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2730
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2732
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2733
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2503
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2505
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2507
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2509
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2510
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2511
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2513
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    .line 2514
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2518
    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_3

    .line 2519
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2521
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1601
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1580
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1581
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1582
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1583
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1584
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1585
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1586
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1587
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 1588
    const/4 v1, 0x0

    .line 1592
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1593
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1594
    const/4 v5, 0x1

    goto :goto_0

    .line 1589
    :cond_2
    if-le v1, v3, :cond_1

    .line 1590
    move v1, v3

    goto :goto_1

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1780
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1781
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1782
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1783
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1784
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1785
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1786
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1787
    return-void

    .line 1781
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1759
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1760
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1761
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1762
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1763
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1764
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1765
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1767
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1769
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1770
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1771
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1775
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 955
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 1062
    :goto_0
    return v0

    .line 962
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 963
    goto :goto_0

    .line 966
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1062
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 977
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 978
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 983
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 984
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 985
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 990
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 991
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 992
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 993
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 994
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 995
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 996
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 997
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 998
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    .line 999
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1001
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1002
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 1003
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 1010
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 1011
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1012
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1013
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 1021
    :cond_5
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1022
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_6

    .line 1023
    iput v11, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1025
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1027
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 1028
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1034
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v0

    :cond_7
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1035
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_8

    .line 1036
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1038
    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .line 1045
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1046
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1047
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1048
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1049
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1051
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 1054
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2537
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2538
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2540
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2541
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2543
    :cond_0
    iput-object v4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2545
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2546
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 2547
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2548
    iput-object v4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2551
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2552
    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2556
    .local v1, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v1, :cond_5

    .line 2557
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2563
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 2564
    const-string v2, "ScrollView"

    const-string v3, " onsize change changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 2566
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2567
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2571
    :cond_3
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2572
    return-void

    :cond_4
    move v0, v2

    .line 2551
    goto :goto_0

    .line 2558
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_5
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_2

    .line 2559
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 546
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 548
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 553
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 558
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 560
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 564
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 565
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_2

    .line 566
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 567
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 573
    .local v5, "heightPadding":I
    :goto_1
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 575
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 577
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 569
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "heightPadding":I
    .end local v8    # "widthPadding":I
    :cond_2
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 570
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 2769
    if-nez p4, :cond_0

    .line 2770
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2771
    const/4 v0, 0x1

    .line 2773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 2757
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2758
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2759
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 2760
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 2761
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2762
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 2742
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2743
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2744
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1608
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1609
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1610
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1611
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1612
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1613
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1614
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1615
    if-eqz p4, :cond_0

    .line 1616
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1623
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1624
    return-void

    .line 1619
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 1620
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2449
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2450
    const/16 p1, 0x82

    .line 2455
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2460
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2468
    :cond_1
    :goto_2
    return v1

    .line 2451
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2452
    const/16 p1, 0x21

    goto :goto_0

    .line 2455
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2464
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2468
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2904
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v1, :cond_1

    .line 2907
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2914
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2910
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2911
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2912
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2913
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2918
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2921
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2926
    :goto_0
    return-object v0

    .line 2923
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2924
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2925
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 2576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2578
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2579
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2602
    :cond_0
    :goto_0
    return-void

    .line 2587
    :cond_1
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v3, :cond_2

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2588
    :cond_2
    iget v3, p0, Landroid/widget/ScrollView;->mSipDelta:I

    if-le p4, p2, :cond_3

    sub-int v2, p4, p2

    :cond_3
    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 2590
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v2, :cond_4

    .line 2591
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2594
    :cond_4
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-eqz v2, :cond_0

    .line 2595
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2596
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2597
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2598
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 2737
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 2751
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2752
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1349
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1351
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1353
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 1355
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 1356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1358
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1360
    packed-switch v21, :pswitch_data_0

    .line 1515
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1518
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 1519
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1362
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1363
    const/4 v2, 0x0

    goto :goto_1

    .line 1365
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1367
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 1368
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1376
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1380
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1385
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1386
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1387
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 1365
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1391
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1392
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1393
    const/16 v22, 0x0

    .line 1394
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1395
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1399
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1400
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 1401
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 1403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1404
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1406
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1408
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 1409
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1411
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1412
    if-lez v4, :cond_d

    .line 1413
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 1418
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1422
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 1423
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 1424
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .line 1425
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v23, 0x1

    .line 1430
    .local v23, "canOverscroll":Z
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1443
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .line 1444
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 1445
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1446
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1447
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1448
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 1415
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .line 1425
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .line 1438
    .restart local v23    # "canOverscroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_c

    .line 1439
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .line 1449
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    .line 1450
    add-int v29, v26, v4

    .line 1451
    .local v29, "pulledToY":I
    if-gez v29, :cond_13

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1466
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1468
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1457
    :cond_13
    move/from16 v0, v29

    if-le v0, v8, :cond_11

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1460
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 1461
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 1474
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1476
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1477
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1479
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_15

    .line 1480
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1486
    :cond_14
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1487
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1481
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1483
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 1491
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1492
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1493
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1495
    :cond_16
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1496
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1500
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1501
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1502
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 1506
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1508
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_18

    .line 1509
    :cond_17
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1512
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2525
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2527
    if-nez p1, :cond_0

    .line 2529
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 2530
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2533
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1895
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1896
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1898
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1899
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1900
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1901
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1902
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1903
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1904
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1913
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1915
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1895
    goto :goto_0

    .line 1908
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1909
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1910
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x4188cccd    # 17.1f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1642
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1736
    :goto_0
    return v4

    .line 1645
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1646
    goto :goto_0

    .line 1649
    :cond_1
    const/4 v0, 0x7

    .line 1650
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2

    .line 1651
    const-string v6, "auto_scroll_speed_level_count"

    const/16 v7, 0xf

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1652
    .local v1, "autoScrollSpeedLevelCount":I
    const/high16 v6, 0x41840000    # 16.5f

    add-int/lit8 v7, v1, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 1654
    const-string v6, "auto_scroll_speed_level"

    const/16 v7, 0x8

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1657
    .end local v1    # "autoScrollSpeedLevelCount":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v4, v5

    .line 1736
    goto :goto_0

    .line 1660
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1661
    .local v3, "viewportHeight":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v6, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1662
    .local v2, "targetScrollY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v6, :cond_3

    .line 1663
    invoke-virtual {p0, v5, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 1666
    goto :goto_0

    .line 1669
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1670
    .restart local v3    # "viewportHeight":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v6, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1671
    .restart local v2    # "targetScrollY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v6, :cond_4

    .line 1672
    invoke-virtual {p0, v5, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 1675
    goto :goto_0

    .line 1678
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_2
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_DOWN: CASE auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1680
    const/16 v5, 0xfa0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fling(I)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1683
    goto/16 :goto_0

    .line 1685
    :sswitch_3
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_UP: CASE auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1687
    const/16 v5, -0xfa0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fling(I)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 1690
    goto/16 :goto_0

    .line 1692
    :sswitch_4
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_ON: auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1694
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float v5, v9, v5

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1695
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 1698
    goto/16 :goto_0

    .line 1700
    :sswitch_5
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_SPEED_UP: speed up, current duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1702
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v6, 0x3f19999a    # 0.6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 1703
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1704
    :cond_8
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 1707
    goto/16 :goto_0

    .line 1709
    :sswitch_6
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_SPEED_DOWN: CASE slow down, current duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1711
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_a

    .line 1712
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1713
    :cond_a
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    .line 1716
    goto/16 :goto_0

    .line 1718
    :sswitch_7
    const-string v6, "ScrollView"

    const-string v7, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1720
    invoke-virtual {p0, v5, v5, v5}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    goto/16 :goto_0

    :cond_c
    move v4, v5

    .line 1723
    goto/16 :goto_0

    .line 1725
    :sswitch_8
    const-string v6, "ScrollView"

    const-string v7, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1727
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1728
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1730
    :cond_d
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1731
    iget-object v5, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_e
    move v4, v5

    .line 1734
    goto/16 :goto_0

    .line 1657
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2426
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2427
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2432
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2433
    return-void

    .line 2430
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2475
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2478
    iget-boolean v4, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v4, :cond_1

    .line 2479
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 2480
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2481
    .local v2, "screenTop":I
    add-int v4, v0, v2

    iget v5, p0, Landroid/widget/ScrollView;->mSipDelta:I

    add-int v1, v4, v5

    .line 2483
    .local v1, "screenBottom":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_0

    .line 2484
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 2485
    iget-object v4, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2492
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :goto_0
    return v3

    .line 2488
    .restart local v0    # "height":I
    .restart local v1    # "screenBottom":I
    .restart local v2    # "screenTop":I
    :cond_0
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 2492
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 934
    if-eqz p1, :cond_0

    .line 935
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 937
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 938
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2497
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2498
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2499
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2691
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2692
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2693
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2694
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2695
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2696
    :cond_0
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2697
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    .line 2699
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2702
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method semAutoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 3626
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    .line 3631
    :goto_0
    return-void

    .line 3628
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3629
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public semEnableGoToTop(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v2, 0x2

    .line 3564
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3565
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 3567
    if-eqz p1, :cond_1

    .line 3568
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3572
    :goto_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3573
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3574
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3576
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$10;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$10;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3587
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3588
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3589
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3591
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$11;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$11;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3602
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$12;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$12;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3624
    :cond_0
    return-void

    .line 3570
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 3572
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 3587
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 523
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 524
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 525
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 527
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 1122
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 1123
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 1114
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 1115
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 287
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2706
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2707
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2708
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2709
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2710
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2716
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2717
    return-void

    .line 2713
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2714
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 542
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 355
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 356
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showEdgeEffectIfNecessary(IF)V
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "multiplicator"    # F

    .prologue
    const/4 v0, 0x1

    .line 1546
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 1547
    .local v3, "overscrollMode":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 1548
    .local v4, "range":I
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_4

    if-lez v4, :cond_4

    .line 1551
    .local v0, "canOverscroll":Z
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1552
    .local v2, "oldScrollY":I
    add-int v1, v2, p1

    .line 1554
    .local v1, "newScrollY":I
    if-eqz v0, :cond_3

    .line 1555
    if-gez v1, :cond_5

    .line 1556
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the TOP!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1558
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1559
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1568
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1570
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1573
    :cond_3
    return-void

    .line 1548
    .end local v0    # "canOverscroll":Z
    .end local v1    # "newScrollY":I
    .end local v2    # "oldScrollY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1561
    .restart local v0    # "canOverscroll":Z
    .restart local v1    # "newScrollY":I
    .restart local v2    # "oldScrollY":I
    :cond_5
    if-le v1, v4, :cond_1

    .line 1562
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the BOTTOM!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1564
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1565
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 2088
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 2113
    :goto_0
    return-void

    .line 2092
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 2093
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 2094
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 2095
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2096
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2097
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2098
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 2100
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2101
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2112
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 2103
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2104
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2105
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 2106
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 2107
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2110
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2128
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2132
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v8, v0, v4

    .line 2133
    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 2134
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v7, v0, v1

    .line 2135
    .local v7, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2136
    .local v6, "bottom":I
    const/4 v0, 0x0

    sub-int v1, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2137
    .local v10, "maxY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2138
    .local v2, "scrollY":I
    const/4 v0, 0x0

    add-int v1, v2, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 2140
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2141
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2142
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2154
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 2140
    .restart local v2    # "scrollY":I
    .restart local v6    # "bottom":I
    .restart local v7    # "height":I
    .restart local v10    # "maxY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2144
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2145
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2146
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2147
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2151
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_2
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2165
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2166
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2178
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 2179
    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3553
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    .line 3554
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 338
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2724
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
