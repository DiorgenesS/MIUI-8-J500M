.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$CursorColor;,
        Landroid/view/ViewRootImpl$CocktailGripDetector;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$HCTRelayoutHandler;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field public static final DEBUG_DBQ:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DYNAMIC_BUFFER_QUEUE_ENABLED:Z = true

.field private static final DYNAMIC_COLOR_SCALING_ENABLED:Z = true

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_ATTACHED_DISPLAY_CHANGED:I = 0x3e8

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1d

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_MULTI_WINDOW_STATE_CHANGED:I = 0x1f

.field private static final MSG_DISPATCH_SURFACE_DESTROY_DEFERRED:I = 0x1e

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STARTED:I = 0x1b

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STOPPED:I = 0x1a

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MULTI_WINDOW_DRAG_AND_DROP_IMAGE:Ljava/lang/String; = "Multiwindow drag and drop image"

.field private static final MULTI_WINDOW_DRAG_AND_DROP_TEXT:Ljava/lang/String; = "Multiwindow drag and drop text"

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final bDTSEnabled:Z = true

.field static final bFactoryBinary:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static mUseGestureDetectorTouchEventEx:Z

.field private static final sAODEnabled:Z

.field static sBufferCount:I

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sDTSFactor:D

.field static sDcsFormat:I

.field static sDssFactor:D

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sIsDcsEnabledApp:Z

.field public static sIsHighContrastTextEnabled:Z

.field public static final sIsNovelModel:Z

.field static sRendererDemoted:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sSVBufferCount:I


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field mBlockResizeBuffer:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mCocktailBar:Landroid/graphics/Rect;

.field private mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field private mContentResizeAnimator:Landroid/animation/ValueAnimator;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCurrentWritingBuddyView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawDuringWindowsAnimating:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mFocusDragStartWin:Z

.field private mForceDraw:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHideInterpolator:Landroid/view/animation/Interpolator;

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsThisWindowDontNeedSurfaceBuffer:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastOverscanRequested:Z

.field mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field mMultiWindowBoarderRect:Landroid/graphics/Rect;

.field mNewScaleFactorNeeded:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrientationChanged:Z

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field private mPreContentInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemainingFrameCount:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mReportedViewVisibility:I

.field mResizeAlpha:I

.field private mResizeAnimating:Z

.field private mResizeBooster:Landroid/os/DVFSHelper;

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScaleFactor:Landroid/graphics/PointF;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mSkipPanScrollEnterAnimation:Z

.field private mSkipPanScrollExitAnimation:Z

.field mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field mTmpMotionEventMatrix:Landroid/graphics/Matrix;

.field final mTmpValue:Landroid/util/TypedValue;

.field private mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field mTranslatedPoint:Landroid/graphics/PointF;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mTwDrawDuringWindowsAnimating:Z

.field private mTwToolBoxTracking:Z

.field mUnbufferedInputDispatch:Z

.field public mUseFloatingToolBox:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowSession:Landroid/view/IWindowSession;

.field mWindowsAnimating:Z

.field mWindowsExitAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    .line 239
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    .line 266
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 269
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 308
    sput-boolean v1, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    .line 313
    sput v3, Landroid/view/ViewRootImpl;->sBufferCount:I

    .line 314
    sput v3, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    .line 410
    sput v3, Landroid/view/ViewRootImpl;->sDcsFormat:I

    .line 411
    sput-boolean v1, Landroid/view/ViewRootImpl;->sIsDcsEnabledApp:Z

    .line 413
    sput-wide v4, Landroid/view/ViewRootImpl;->sDssFactor:D

    .line 415
    sput-wide v4, Landroid/view/ViewRootImpl;->sDTSFactor:D

    .line 486
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 526
    sput-boolean v1, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    .line 544
    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    .line 550
    sput-boolean v2, Landroid/view/ViewRootImpl;->mUseGestureDetectorTouchEventEx:Z

    .line 587
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sIsNovelModel:Z

    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v0, v1

    .line 239
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 282
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 290
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 321
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 325
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 328
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 330
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 376
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mTwDrawDuringWindowsAnimating:Z

    .line 390
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    .line 391
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMultiWindowBoarderRect:Landroid/graphics/Rect;

    .line 393
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    .line 394
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpMotionEventMatrix:Landroid/graphics/Matrix;

    .line 396
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 397
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 399
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFocusDragStartWin:Z

    .line 405
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    .line 419
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 436
    const-string/jumbo v0, "pq"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 442
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 443
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 447
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 461
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 462
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 470
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 471
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 495
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 496
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 506
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    .line 507
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 511
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 512
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 535
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 537
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 554
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    .line 563
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    .line 564
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    .line 565
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    .line 574
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 677
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1249
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2931
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 3680
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollEnterAnimation:Z

    .line 3681
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollExitAnimation:Z

    .line 4439
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 4474
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7533
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 7579
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7589
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 7675
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 591
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 592
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 593
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 598
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 601
    new-instance v0, Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    .line 602
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 603
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 604
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 605
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 606
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 609
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 610
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 612
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 614
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mReportedViewVisibility:I

    .line 616
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 617
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 619
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 620
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 621
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 622
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 624
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 626
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 627
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 629
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 630
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 632
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 633
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 634
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->getRootContext(Landroid/content/Context;)V

    .line 635
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 636
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 637
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 640
    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 645
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 646
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 647
    .local v8, "spenUspLevel":I
    const/4 v0, 0x3

    if-lt v8, v0, :cond_0

    .line 648
    new-instance v0, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    .line 653
    .end local v8    # "spenUspLevel":I
    :cond_0
    sget-boolean v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 658
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    .line 660
    return-void

    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move-object v0, v1

    .line 574
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Lcom/samsung/android/toolbox/TwToolBoxManager;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendUserActionEvent()V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleDispatchSurfaceDestroyDeferred()V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/ViewRootImpl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchMultiWindowStateChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3400(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->dispatchSurfaceDestroyDeferred()V

    return-void
.end method

.method static synthetic access$3600(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->doRelayoutForHCT(Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->initContentResizeAnimator()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->acquireContentResizeAnimationBooster()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->startContentResizeAnimation()V

    return-void
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method private acquireContentResizeAnimationBooster()V
    .locals 3

    .prologue
    .line 9423
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 9424
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 9425
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9427
    :cond_0
    return-void
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 671
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 672
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 663
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 664
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    monitor-exit v1

    .line 668
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;

    .prologue
    .line 7460
    iget v4, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 7461
    check-cast v3, Landroid/view/MotionEvent;

    .line 7462
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    .line 7464
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 7465
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    shr-int/lit8 v1, v4, 0x4

    .line 7466
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    .line 7467
    or-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 7470
    .end local v0    # "buttonState":I
    .end local v1    # "compatButtonState":I
    .end local v2    # "mask":I
    .end local v3    # "motion":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1541
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1542
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1547
    :goto_0
    return-void

    .line 1544
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private cancelContentResizeAnimation()V
    .locals 1

    .prologue
    .line 9417
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    if-eqz v0, :cond_0

    .line 9418
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9420
    :cond_0
    return-void
.end method

.method private checkDcs(Landroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 711
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isDcsEnabledApp:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->sIsDcsEnabledApp:Z

    .line 712
    iget v0, p1, Landroid/content/pm/PackageInfo;->dcsFormat:I

    sput v0, Landroid/view/ViewRootImpl;->sDcsFormat:I

    .line 714
    return-void
.end method

.method private checkDss()V
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Landroid/view/ViewRootImpl;->sDssFactor:D

    .line 723
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 6449
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 6481
    :cond_0
    :goto_0
    return v1

    .line 6454
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6455
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 6460
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 6469
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6470
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 6476
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6477
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4600
    const/4 v1, 0x0

    .line 4601
    .local v1, "SsumMajor":I
    const/4 v2, 0x0

    .line 4603
    .local v2, "bPalm":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4604
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4605
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 4606
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    float-to-int v1, v6

    .line 4604
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4610
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v6

    const/high16 v7, -0x40000000    # -2.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 4615
    :cond_3
    :goto_1
    return v4

    .line 4612
    :cond_4
    const/16 v6, 0x64

    if-ge v1, v6, :cond_5

    if-ne v2, v5, :cond_3

    :cond_5
    move v4, v5

    .line 4613
    goto :goto_1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1550
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v3, :cond_1

    .line 1552
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1553
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1554
    .local v0, "oldScreenOn":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1555
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1556
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1557
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1558
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1559
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1560
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1561
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    .line 1564
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1565
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1566
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1567
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1568
    const/4 v2, 0x1

    .line 1571
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 7319
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 7427
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 7428
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 7432
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7433
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 7438
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v0, :cond_3

    .line 7439
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7443
    :goto_1
    return-void

    .line 7435
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_2
    goto :goto_0

    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_2

    .line 7441
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7068
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 7070
    .local v0, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_1

    .line 7071
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7072
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 7074
    :cond_0
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 7075
    invoke-virtual {v0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 7077
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 7078
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 7080
    :cond_1
    return-void
.end method

.method private dispatchCoverStateChanged(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 7956
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7957
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7958
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7959
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7961
    return-void

    .line 7958
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchMultiWindowStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 7985
    return-void
.end method

.method private dispatchSurfaceDestroyDeferred()V
    .locals 2

    .prologue
    .line 7969
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7970
    return-void
.end method

.method private doRelayoutForHCT(Z)V
    .locals 2
    .param p1, "fromHandler"    # Z

    .prologue
    .line 8781
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 8784
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 8785
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    .line 8786
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    sget-boolean v1, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->setHCTLetterSpacing(Landroid/view/View;Z)V

    .line 8789
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8791
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 8792
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8793
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 8802
    :cond_0
    :goto_0
    return-void

    .line 8796
    :cond_1
    if-nez p1, :cond_2

    .line 8797
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 8799
    :cond_2
    const-string v0, "ViewRootImpl"

    const-string v1, "Recursion detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 34
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 3084
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3085
    .local v9, "surface":Landroid/view/Surface;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3086
    :cond_0
    if-nez v9, :cond_2

    .line 3087
    const-string v2, "ViewSystem"

    const-string v3, "ViewRootImpl #1 Surface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    :cond_1
    :goto_0
    return-void

    .line 3089
    :cond_2
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3090
    const-string v2, "ViewSystem"

    const-string v3, "ViewRootImpl #2 Surface is not valid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3099
    :cond_3
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v2, :cond_5

    .line 3100
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3101
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 3102
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3103
    .local v20, "count":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 3104
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 3103
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 3106
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    .end local v20    # "count":I
    .end local v27    # "i":I
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 3111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v2, :cond_6

    .line 3112
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 3113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 3116
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v17, 0x1

    .line 3118
    .local v17, "animating":Z
    :goto_2
    if-eqz v17, :cond_b

    .line 3119
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v21

    .line 3123
    .local v21, "curScrollY":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_7

    .line 3124
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 3125
    const/16 p1, 0x1

    .line 3126
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_7

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 3131
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    .line 3132
    .local v18, "appScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 3134
    .local v13, "scalingRequired":Z
    const/16 v30, 0x0

    .line 3135
    .local v30, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_8

    .line 3136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    sub-long v22, v2, v4

    .line 3137
    .local v22, "deltaTime":J
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-long v2, v2

    cmp-long v2, v22, v2

    if-gez v2, :cond_c

    .line 3138
    move-wide/from16 v0, v22

    long-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 3139
    .local v16, "amt":F
    sget-object v2, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    .line 3140
    const/16 v17, 0x1

    .line 3141
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    rsub-int v0, v2, 0xff

    move/from16 v30, v0

    .line 3147
    .end local v16    # "amt":F
    .end local v22    # "deltaTime":J
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 3148
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_d

    .line 3150
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3151
    if-eqz v17, :cond_1

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_9

    .line 3153
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3155
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 3106
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "animating":Z
    .end local v18    # "appScale":F
    .end local v21    # "curScrollY":I
    .end local v30    # "resizeAlpha":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3116
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 3121
    .restart local v17    # "animating":Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v21, v0

    .restart local v21    # "curScrollY":I
    goto/16 :goto_3

    .line 3143
    .restart local v13    # "scalingRequired":Z
    .restart local v18    # "appScale":F
    .restart local v22    # "deltaTime":J
    .restart local v30    # "resizeAlpha":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 3160
    .end local v22    # "deltaTime":J
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    :cond_d
    if-eqz p1, :cond_e

    .line 3161
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3162
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v18

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3174
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 3176
    const/4 v11, 0x0

    .line 3177
    .local v11, "xOffset":I
    move/from16 v12, v21

    .line 3178
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    .line 3179
    .local v29, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v29, :cond_17

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3180
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_5
    if-eqz v7, :cond_f

    .line 3181
    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    .line 3182
    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 3186
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_18

    .line 3187
    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 3188
    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 3189
    iget v2, v14, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 3190
    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 3196
    :cond_f
    :goto_6
    const/4 v15, 0x0

    .line 3197
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    .line 3198
    .local v24, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_11

    .line 3199
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3200
    .local v19, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v26

    .line 3201
    .local v26, "hasFocus":Z
    if-nez v26, :cond_10

    .line 3202
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 3204
    :cond_10
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3205
    const/4 v15, 0x1

    .line 3209
    .end local v19    # "bounds":Landroid/graphics/Rect;
    .end local v26    # "hasFocus":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    const-wide/32 v32, 0xf4240

    div-long v4, v4, v32

    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 3212
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v2, :cond_12

    if-eqz v15, :cond_16

    .line 3213
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3215
    move/from16 v28, v15

    .line 3218
    .local v28, "invalidateRoot":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3220
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v2, v12, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v2, v11, :cond_14

    .line 3221
    :cond_13
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 3222
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 3223
    const/16 v28, 0x1

    .line 3225
    :cond_14
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 3227
    if-eqz v28, :cond_15

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3231
    :cond_15
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 3234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 3267
    .end local v28    # "invalidateRoot":Z
    :cond_16
    if-eqz v17, :cond_1

    .line 3268
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3269
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 3179
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3192
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_18
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_6

    .line 3244
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3249
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3256
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3257
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 3251
    :catch_0
    move-exception v25

    .line 3252
    .local v25, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 3261
    .end local v25    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 3397
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3398
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3399
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3400
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3401
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3402
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3407
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 3404
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 3405
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 3280
    sget-boolean v6, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-eqz v6, :cond_0

    .line 3281
    const/4 v6, 0x0

    .line 3383
    :goto_0
    return v6

    .line 3288
    :cond_0
    :try_start_0
    iget v3, p6, Landroid/graphics/Rect;->left:I

    .line 3289
    .local v3, "left":I
    iget v5, p6, Landroid/graphics/Rect;->top:I

    .line 3290
    .local v5, "top":I
    iget v4, p6, Landroid/graphics/Rect;->right:I

    .line 3291
    .local v4, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 3293
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 3295
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-boolean v6, p2, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setHighContrastText(Z)V

    .line 3299
    sget v6, Landroid/view/ViewRootImpl;->sDcsFormat:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDCSFormat(I)V

    .line 3304
    iget v6, p6, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_1

    iget v6, p6, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_1

    iget v6, p6, Landroid/graphics/Rect;->right:I

    if-ne v4, v6, :cond_1

    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v6, :cond_2

    .line 3306
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3310
    :cond_2
    iget v6, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3338
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez p4, :cond_3

    if-eqz p3, :cond_4

    .line 3339
    :cond_3
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3342
    :cond_4
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3343
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3344
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3353
    neg-int v6, p3

    int-to-float v6, v6

    neg-int v7, p4

    int-to-float v7, v7

    :try_start_2
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3354
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_5

    .line 3355
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 3357
    :cond_5
    if-eqz p5, :cond_7

    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    :goto_1
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 3358
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 3360
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3362
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3364
    :try_start_3
    iget-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v6, :cond_6

    .line 3366
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3371
    :cond_6
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3383
    const/4 v6, 0x1

    goto :goto_0

    .line 3311
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :catch_0
    move-exception v2

    .line 3312
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3313
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3314
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v2

    .line 3315
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not lock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3319
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3320
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3357
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 3364
    :catchall_0
    move-exception v6

    :try_start_5
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_8

    .line 3366
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_8
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3370
    :catchall_1
    move-exception v6

    .line 3371
    :try_start_6
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3376
    throw v6

    .line 3372
    :catch_2
    move-exception v2

    .line 3373
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3374
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3376
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3372
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 3373
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3374
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3376
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 6920
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6921
    if-nez p3, :cond_1

    .line 6922
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6938
    :cond_0
    return-void

    .line 6925
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6926
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 6929
    check-cast v1, Landroid/view/ViewGroup;

    .line 6930
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6931
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 6934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6935
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6936
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1092
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1093
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1101
    sget-boolean v8, Landroid/view/ViewRootImpl;->sIsDcsEnabledApp:Z

    if-eqz v8, :cond_2

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v6, :cond_0

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v8, :cond_2

    :cond_0
    sget v8, Landroid/view/ViewRootImpl;->sDcsFormat:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 1157
    :cond_1
    :goto_0
    return-void

    .line 1109
    :cond_2
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v8, :cond_1

    .line 1112
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move v2, v6

    .line 1115
    .local v2, "hardwareAccelerated":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1116
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1129
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    move v0, v6

    .line 1131
    .local v0, "fakeHwAccelerated":Z
    :goto_2
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    move v1, v6

    .line 1134
    .local v1, "forceHwAccelerated":Z
    :goto_3
    if-eqz v0, :cond_6

    .line 1138
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_0

    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    .end local v2    # "hardwareAccelerated":Z
    :cond_3
    move v2, v7

    .line 1112
    goto :goto_1

    .restart local v2    # "hardwareAccelerated":Z
    :cond_4
    move v0, v7

    .line 1129
    goto :goto_2

    .restart local v0    # "fakeHwAccelerated":Z
    :cond_5
    move v1, v7

    .line 1131
    goto :goto_3

    .line 1139
    .restart local v1    # "forceHwAccelerated":Z
    :cond_6
    sget-boolean v8, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v8, :cond_7

    sget-boolean v8, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v8, :cond_1

    if-eqz v1, :cond_1

    .line 1141
    :cond_7
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_8

    .line 1142
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->destroy()V

    .line 1145
    :cond_8
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1146
    .local v4, "insets":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_9

    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-nez v8, :cond_9

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_9

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v8, :cond_b

    :cond_9
    move v3, v6

    .line 1148
    .local v3, "hasSurfaceInsets":Z
    :goto_4
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    if-eqz v3, :cond_c

    :cond_a
    move v5, v6

    .line 1149
    .local v5, "translucent":Z
    :goto_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-boolean v9, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    invoke-static {v8, v5, v9}, Landroid/view/HardwareRenderer;->create(Landroid/content/Context;ZZ)Landroid/view/HardwareRenderer;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 1150
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v7, :cond_1

    .line 1151
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 1152
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto/16 :goto_0

    .end local v3    # "hasSurfaceInsets":Z
    .end local v5    # "translucent":Z
    :cond_b
    move v3, v7

    .line 1146
    goto :goto_4

    .restart local v3    # "hasSurfaceInsets":Z
    :cond_c
    move v5, v7

    .line 1148
    goto :goto_5
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 5
    .param p1, "inTouchMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4513
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-eq v2, p1, :cond_0

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    if-eqz v2, :cond_1

    .line 4524
    :cond_0
    :goto_0
    return v1

    .line 4515
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4516
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 4519
    if-eqz p1, :cond_2

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4520
    :catch_0
    move-exception v0

    .line 4521
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureTouchModeLocally() error occurred. inTouchMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4528
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4532
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4533
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4534
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 4535
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 4539
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 4548
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :goto_0
    return v2

    .line 4543
    .restart local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    goto :goto_0

    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :cond_1
    move v2, v3

    .line 4548
    goto :goto_0
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4558
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4559
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 4560
    check-cast v1, Landroid/view/ViewGroup;

    .line 4561
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4571
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 4565
    .restart local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 4566
    goto :goto_1

    .line 4568
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4570
    goto :goto_0

    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 4571
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 7446
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 7449
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_1

    .line 7450
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 7451
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 7456
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7457
    return-void

    .line 7450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7453
    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3942
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 3943
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 3944
    check-cast v1, Landroid/view/ViewGroup;

    .line 3945
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3946
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3947
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 3946
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3950
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 13

    .prologue
    .line 3449
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    .line 3450
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 3451
    .local v8, "value":Landroid/util/TypedValue;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v9, v9, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1160031

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 3453
    .local v4, "resolved":Z
    if-eqz v4, :cond_0

    .line 3454
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v10, v10, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3460
    .end local v4    # "resolved":Z
    .end local v8    # "value":Landroid/util/TypedValue;
    :cond_0
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "enabled_accessibility_s_talkback"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    .line 3462
    .local v2, "galaxyTalkBackEnabled":Z
    :goto_0
    const/4 v9, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v3, v9

    .line 3465
    .local v3, "px":I
    if-eqz v2, :cond_5

    .line 3466
    const/4 v9, 0x1

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "accessibility_large_cursor"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v6, v9

    .line 3469
    .local v6, "strokeWidth":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "accessibility_cursor_color"

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060168

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3472
    .local v5, "strokeColor":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3473
    .local v1, "draw2":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3474
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3483
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :goto_1
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "universal_switch_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v7, 0x1

    .line 3485
    .local v7, "universalSwitchEnabled":Z
    :goto_2
    sget-boolean v9, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v9, :cond_1

    .line 3486
    const-string v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch enabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :cond_1
    if-eqz v7, :cond_3

    .line 3490
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060171

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3492
    .restart local v5    # "strokeColor":I
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "accessibility_universal_switch_cursor_color"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3494
    .local v0, "color":I
    sget-boolean v9, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    .line 3495
    const-string v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch current color:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :cond_2
    const/4 v9, 0x1

    if-ne v0, v9, :cond_7

    .line 3497
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060171

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3518
    :goto_3
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3521
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10502b7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 3523
    .restart local v6    # "strokeWidth":I
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3524
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3525
    const-string v9, "ViewRootImpl"

    const-string v10, "Changing accessibility focused drawable according to Universal Switch settings"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    .end local v0    # "color":I
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :cond_3
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v9

    .line 3460
    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "galaxyTalkBackEnabled":Z
    .end local v3    # "px":I
    .end local v7    # "universalSwitchEnabled":Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3476
    .restart local v2    # "galaxyTalkBackEnabled":Z
    .restart local v3    # "px":I
    :cond_5
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3477
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060168

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3478
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 3483
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 3499
    .restart local v0    # "color":I
    .restart local v5    # "strokeColor":I
    .restart local v7    # "universalSwitchEnabled":Z
    :cond_7
    const/4 v9, 0x2

    if-ne v0, v9, :cond_8

    .line 3500
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060172

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_3

    .line 3502
    :cond_8
    const/4 v9, 0x5

    if-ne v0, v9, :cond_9

    .line 3503
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060175

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_3

    .line 3505
    :cond_9
    const/4 v9, 0x6

    if-ne v0, v9, :cond_a

    .line 3506
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060176

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_3

    .line 3508
    :cond_a
    const/4 v9, 0x4

    if-ne v0, v9, :cond_b

    .line 3509
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060174

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_3

    .line 3511
    :cond_b
    const/4 v9, 0x3

    if-ne v0, v9, :cond_c

    .line 3512
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060173

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_3

    .line 3515
    :cond_c
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060171

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_3
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3410
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 3411
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3444
    :cond_0
    :goto_0
    return v6

    .line 3413
    :cond_1
    const/4 v4, 0x0

    .line 3414
    .local v4, "universalSwitchEnabled":Z
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "universal_switch_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v4, v5

    .line 3418
    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3421
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3422
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_0

    .line 3426
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 3427
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_5

    .line 3428
    invoke-virtual {v1, p1, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 3436
    :goto_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3437
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3438
    iget v7, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v7, v7

    iget v8, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 3439
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v8, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v8, v8, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3442
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3444
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v1    # "host":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    move v4, v6

    .line 3414
    goto :goto_1

    .line 3429
    .restart local v1    # "host":Landroid/view/View;
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v7, :cond_0

    .line 3430
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_2

    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_6
    move v5, v6

    .line 3444
    goto :goto_3
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 6749
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6750
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6752
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 6753
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 6755
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    .line 8227
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 8228
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8230
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8231
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8232
    move-object v0, p1

    .line 8233
    .local v0, "firstCurrent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 8234
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8235
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8236
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 8237
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 8239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8242
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    .line 8243
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 8244
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8245
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8256
    .end local v2    # "secondCurrent":Landroid/view/View;
    :goto_2
    return-object v2

    .line 8248
    .restart local v2    # "secondCurrent":Landroid/view/View;
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8249
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 8250
    check-cast v2, Landroid/view/View;

    goto :goto_1

    .line 8252
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 8255
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8256
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .prologue
    .line 6948
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 6949
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 6950
    if-eqz v3, :cond_0

    .line 6951
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 6954
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 6955
    check-cast v1, Landroid/view/ViewGroup;

    .line 6957
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6958
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6959
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6958
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6962
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1575
    const/4 v0, 0x0

    .line 1577
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1578
    or-int/lit16 v0, v0, 0x500

    .line 1580
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1581
    or-int/lit16 v0, v0, 0x300

    .line 1583
    :cond_1
    return v0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4620
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v13, v0, [I

    .line 4621
    .local v13, "Sxd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 4622
    .local v14, "Syd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v2, v0, [I

    .line 4623
    .local v2, "Major":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v3, v0, [I

    .line 4625
    .local v3, "Minor":[I
    const/4 v12, 0x0

    .line 4627
    .local v12, "SvarX":F
    const/4 v10, 0x0

    .line 4628
    .local v10, "SsumX":F
    const/4 v11, 0x0

    .line 4629
    .local v11, "SsumY":F
    const/4 v7, 0x0

    .line 4630
    .local v7, "SsumEccen":F
    const/4 v8, 0x0

    .line 4631
    .local v8, "SsumMajor":F
    const/4 v9, 0x0

    .line 4632
    .local v9, "SsumMinor":F
    const/4 v5, 0x0

    .line 4633
    .local v5, "SmeanX":F
    const/4 v6, 0x0

    .line 4634
    .local v6, "SmeanY":F
    const/16 v16, 0x0

    .line 4636
    .local v16, "bPalm":Z
    const/high16 v15, 0x43480000    # 200.0f

    .line 4638
    .local v15, "TILT_TO_ZOOM_XVAR":F
    const/16 v21, 0x0

    .line 4639
    .local v21, "mScreenWidth":I
    const/16 v20, 0x0

    .line 4640
    .local v20, "mScreenHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 4643
    .local v4, "N":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 4645
    .local v23, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 4646
    .local v17, "disp":Landroid/view/Display;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4647
    .local v22, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4649
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 4650
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4652
    .end local v17    # "disp":Landroid/view/Display;
    .end local v22    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 4653
    move/from16 v0, v21

    int-to-float v15, v0

    .line 4661
    :goto_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 4662
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v13, v19

    .line 4663
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v14, v19

    .line 4664
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v2, v19

    .line 4665
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v3, v19

    .line 4661
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 4655
    .end local v19    # "i":I
    :cond_1
    move/from16 v0, v20

    int-to-float v15, v0

    goto :goto_0

    .line 4657
    :catch_0
    move-exception v18

    .line 4658
    .local v18, "e":Ljava/lang/Exception;
    const-string v24, "ViewRootImpl"

    const-string v25, "[Surface touch] Default Rotate = false"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4668
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "i":I
    :cond_2
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 4669
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v10, v10, v24

    .line 4670
    aget v24, v14, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v11, v11, v24

    .line 4671
    aget v24, v2, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v8, v8, v24

    .line 4672
    aget v24, v3, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v9, v9, v24

    .line 4668
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 4675
    :cond_3
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v5, v10, v24

    .line 4676
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v6, v11, v24

    .line 4677
    div-float v7, v8, v9

    .line 4679
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 4680
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    aget v25, v13, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v5

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v12, v12, v24

    .line 4681
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_5

    :cond_4
    const/16 v16, 0x1

    .line 4679
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 4683
    :cond_6
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v12, v12, v24

    .line 4685
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 4686
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    const/16 v24, 0x1

    .line 4695
    :goto_4
    return v24

    .line 4689
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v24, v8, v24

    if-ltz v24, :cond_8

    const/high16 v24, 0x40000000    # 2.0f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_8

    add-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v15, v24

    cmpg-float v24, v12, v24

    if-gez v24, :cond_8

    .line 4691
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " varX:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    const/16 v24, 0x1

    goto :goto_4

    .line 4695
    :cond_8
    const/16 v24, 0x0

    goto :goto_4
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2910
    packed-switch p1, :pswitch_data_0

    .line 2922
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2925
    .local v0, "measureSpec":I
    :goto_0
    return v0

    .line 2914
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2915
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2918
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2919
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2910
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 8623
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 8624
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 8629
    :goto_0
    return-object v0

    .line 8627
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 8628
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getStackPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9172
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 9179
    :cond_0
    :goto_0
    return-object v1

    .line 9175
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 9176
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 9177
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2833
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2834
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    .line 2835
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2836
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2837
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3

    .line 2840
    :cond_0
    const/4 v0, 0x0

    .line 2841
    .local v0, "gone":Z
    move-object v3, v5

    .line 2843
    .local v3, "parent":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_1

    .line 2844
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 2845
    const/4 v0, 0x1

    .line 2854
    :cond_1
    if-nez v0, :cond_3

    .line 2855
    if-nez v4, :cond_2

    .line 2856
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2858
    .restart local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2848
    .restart local v0    # "gone":Z
    .restart local v3    # "parent":Landroid/view/View;
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    .line 2849
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v3    # "parent":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "parent":Landroid/view/View;
    goto :goto_1

    .line 2851
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2862
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    .line 2864
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    .line 2865
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2866
    .restart local v5    # "view":Landroid/view/View;
    :goto_3
    if-eqz v5, :cond_8

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_8

    .line 2868
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 2869
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 2870
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v5    # "view":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    .line 2872
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 2864
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2877
    .end local v5    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2878
    return-object v4
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 6685
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 6693
    :cond_0
    :goto_0
    return-void

    .line 6686
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    if-eq v0, p1, :cond_0

    .line 6689
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    .line 6690
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    goto :goto_0
.end method

.method private handleDispatchMultiWindowStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 6734
    return-void
.end method

.method private handleDispatchSurfaceDestroyDeferred()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 6701
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    .line 6702
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/ViewRootImpl;->mReportedViewVisibility:I

    if-ne v2, v4, :cond_4

    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    .line 6705
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v1

    .line 6706
    .local v1, "viewVisibility":I
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v2, v1, :cond_3

    .line 6707
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 6708
    .local v0, "host":Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6709
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 6710
    if-eqz v1, :cond_1

    .line 6711
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 6713
    :cond_1
    if-ne v1, v4, :cond_2

    .line 6714
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 6716
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6720
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 6722
    .end local v0    # "host":Landroid/view/View;
    :cond_3
    iput v1, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 6724
    .end local v1    # "viewVisibility":I
    :cond_4
    return-void

    .line 6717
    .restart local v0    # "host":Landroid/view/View;
    .restart local v1    # "viewVisibility":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 6493
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 6494
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 6503
    .local v3, "what":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 6508
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 6622
    .end local v3    # "what":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 6623
    return-void

    .line 6512
    .restart local v3    # "what":I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 6513
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6514
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6528
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 6529
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 6530
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 6531
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6534
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 6535
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 6538
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 6539
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 6543
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6546
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 6549
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 6551
    if-eqz v1, :cond_6

    .line 6552
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 6554
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 6555
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6563
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 6564
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6566
    :try_start_1
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6567
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6616
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 6617
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFocusDragStartWin:Z

    .line 6618
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6524
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 6557
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 6558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6568
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6569
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .prologue
    .line 2633
    const-string v0, "ViewRootImpl"

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2635
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2637
    const-string v0, "ViewRootImpl"

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    const-string v0, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 2641
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2645
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2646
    return-void

    .line 2643
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 8098
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8099
    .local v7, "focusedHost":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 8174
    :cond_0
    :goto_0
    return-void

    .line 8104
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    .line 8105
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    .line 8107
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8108
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8109
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    goto :goto_0

    .line 8115
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    .line 8116
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    if-nez v16, :cond_3

    if-nez v3, :cond_0

    .line 8121
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 8122
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 8125
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    .line 8126
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8127
    .local v15, "root":Landroid/view/View;
    :goto_1
    if-eqz v15, :cond_6

    if-nez v10, :cond_6

    .line 8128
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    .line 8129
    const/4 v10, 0x1

    goto :goto_1

    .line 8131
    :cond_4
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 8132
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v15, v13

    .line 8133
    check-cast v15, Landroid/view/View;

    goto :goto_1

    .line 8135
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 8141
    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_6
    if-eqz v10, :cond_0

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    .line 8146
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 8147
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v6, v0, :cond_7

    .line 8149
    const/4 v6, -0x1

    .line 8153
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 8154
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 8155
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 8158
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8159
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 8163
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 8165
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 8168
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v11

    .line 8169
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 8170
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8171
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private initContentResizeAnimator()V
    .locals 6

    .prologue
    .line 9340
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    .line 9341
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9343
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$5;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9370
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$6;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9380
    new-instance v0, Landroid/view/animation/interpolator/CircEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/CircEaseInOut;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 9381
    new-instance v0, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 9383
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 9384
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    .line 9386
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 9387
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 9388
    :cond_1
    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1378
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1379
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1380
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1381
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1385
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1388
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1389
    .local v0, "appScale":F
    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 1391
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    .line 1392
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1394
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    .line 1395
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1397
    :cond_3
    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInTouchMode()Z
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 697
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_0

    .line 699
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 703
    :goto_0
    return v1

    .line 700
    :catch_0
    move-exception v1

    .line 703
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6414
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6429
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6427
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 6414
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7473
    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    move-object v1, p0

    .line 7474
    check-cast v1, Landroid/view/KeyEvent;

    .line 7475
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 7479
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v3

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    move v3, v4

    .line 7475
    goto :goto_0

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v2, p0

    .line 7477
    check-cast v2, Landroid/view/MotionEvent;

    .line 7478
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7479
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6438
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3933
    if-ne p0, p1, :cond_1

    .line 3938
    :cond_0
    :goto_0
    return v1

    .line 3937
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3938
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 6

    .prologue
    const/16 v5, 0x82

    const/4 v2, 0x0

    .line 4575
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4576
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4577
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4578
    .local v1, "focusedView":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 4596
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 4581
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    .line 4591
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4592
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4593
    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    goto :goto_0
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    const/high16 v9, 0x1000000

    .line 1590
    const/4 v5, 0x0

    .line 1596
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    .line 1597
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1602
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1603
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    const v6, 0x105000e

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1604
    const/4 v0, 0x0

    .line 1605
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1606
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1609
    :cond_0
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x834

    if-eq v6, v7, :cond_1

    .line 1613
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1614
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1615
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_4

    .line 1619
    const/4 v3, 0x1

    .line 1637
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 1638
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1639
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1640
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1641
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1642
    :cond_2
    const/4 v5, 0x1

    .line 1652
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    .line 1622
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1625
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1626
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    .line 1631
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 7215
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7216
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    .line 7217
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7218
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7219
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7224
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7225
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7226
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7227
    return-object v0

    .line 7221
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const-wide/16 v12, 0x8

    const/4 v11, 0x0

    .line 3012
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-ne v8, v10, :cond_1

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v8, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3016
    :cond_1
    sget-boolean v8, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_show_state"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    .line 3023
    :cond_2
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 3025
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3026
    .local v4, "fullRedrawNeeded":Z
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3028
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3029
    const-string v8, "draw"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3032
    :try_start_0
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    if-nez v8, :cond_4

    .line 3033
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    :cond_3
    :goto_1
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3040
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3045
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 3046
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 3047
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_5

    .line 3048
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RenderNode;

    invoke-virtual {v8}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 3047
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3034
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_4
    :try_start_1
    sget-boolean v8, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v8, :cond_3

    .line 3035
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "window="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".    So, skip drawing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3039
    :catchall_0
    move-exception v8

    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3040
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v8

    .line 3050
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    :cond_5
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 3053
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_6
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v8, :cond_0

    .line 3054
    iput-boolean v11, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3055
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_7

    .line 3056
    const-string v8, "fence"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3057
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->fence()V

    .line 3058
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3064
    :cond_7
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3065
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 3066
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 3067
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_9

    .line 3068
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_9

    aget-object v1, v0, v6

    .line 3069
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v1, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_8

    .line 3070
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 3068
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3077
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_9
    :try_start_2
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3078
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    .prologue
    .line 2747
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2749
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2751
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2757
    .local v1, "host":Landroid/view/View;
    const-wide/16 v2, 0x8

    const-string v0, "layout"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2759
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2761
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2762
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2763
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    .line 2768
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2770
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    .line 2774
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2777
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2778
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 2779
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2780
    .local v11, "view":Landroid/view/View;
    const-string v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during layout: running second layout pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 2778
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2784
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 2786
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2787
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2789
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2793
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2794
    if-eqz v10, :cond_1

    .line 2795
    move-object v6, v10

    .line 2797
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$2;

    invoke-direct {v2, p0, v6}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2816
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2817
    return-void

    .line 2814
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 4
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .prologue
    const-wide/16 v2, 0x8

    .line 2649
    const-string/jumbo v0, "measure"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2687
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2689
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2691
    return-void

    .line 2689
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 77

    .prologue
    .line 1708
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1716
    .local v7, "host":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v6, :cond_1

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1720
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1721
    const/16 v76, 0x0

    .line 1722
    .local v76, "windowSizeMayChange":Z
    const/16 v54, 0x0

    .line 1723
    .local v54, "newSurface":Z
    const/16 v67, 0x0

    .line 1724
    .local v67, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1730
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v70

    .line 1731
    .local v70, "viewVisibility":I
    move/from16 v60, v70

    .line 1735
    .local v60, "reportViewVisibility":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_2

    .line 1736
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v6, :cond_2

    .line 1737
    const/16 v70, 0x0

    .line 1740
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mReportedViewVisibility:I

    move/from16 v0, v60

    if-ne v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v6, :cond_18

    :cond_3
    const/16 v61, 0x1

    .line 1743
    .local v61, "reportVisibilityChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v70

    if-ne v6, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v6, :cond_19

    :cond_4
    const/16 v71, 0x1

    .line 1746
    .local v71, "viewVisibilityChanged":Z
    :goto_2
    const/16 v58, 0x0

    .line 1747
    .local v58, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v6, :cond_5

    .line 1748
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1749
    const/16 v67, 0x1

    .line 1750
    move-object/from16 v58, v8

    .line 1752
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v31

    .line 1753
    .local v31, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v31 .. v31}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v6, v12, :cond_6

    .line 1754
    move-object/from16 v58, v8

    .line 1755
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1756
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v6, :cond_1a

    .line 1758
    move-object/from16 v0, v58

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, -0x81

    move-object/from16 v0, v58

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1759
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1766
    :cond_6
    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    .line 1769
    .local v38, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v6, :cond_1c

    .line 1770
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1771
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1773
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7de

    if-eq v6, v12, :cond_7

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7db

    if-ne v6, v12, :cond_1b

    .line 1776
    :cond_7
    new-instance v63, Landroid/graphics/Point;

    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    .line 1777
    .local v63, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1778
    move-object/from16 v0, v63

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 1779
    .local v10, "desiredWindowWidth":I
    move-object/from16 v0, v63

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1808
    .end local v63    # "size":Landroid/graphics/Point;
    .local v11, "desiredWindowHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1809
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1810
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v70

    iput v0, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1811
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1813
    const/16 v61, 0x0

    .line 1815
    const/16 v71, 0x0

    .line 1817
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1819
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_8

    .line 1820
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1822
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v12}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1824
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1839
    :cond_9
    :goto_5
    if-eqz v71, :cond_c

    .line 1840
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v70

    iput v0, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1841
    move/from16 v0, v70

    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1842
    if-nez v70, :cond_a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v6, :cond_b

    .line 1843
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1845
    :cond_b
    const/16 v6, 0x8

    move/from16 v0, v70

    if-ne v0, v6, :cond_c

    .line 1848
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1853
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v6, :cond_d

    .line 1854
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1858
    :cond_d
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1860
    const/16 v48, 0x0

    .line 1862
    .local v48, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_1e

    :cond_e
    const/16 v50, 0x1

    .line 1863
    .local v50, "layoutRequested":Z
    :goto_6
    const/16 v37, 0x0

    .line 1866
    .local v37, "forceRelayout":Z
    if-eqz v76, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_1f

    const/16 v64, 0x1

    .line 1867
    .local v64, "sizeChangedInStopped":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-eqz v6, :cond_20

    const/16 v46, 0x1

    .line 1868
    .local v46, "imeStateChangedInStopped":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    if-nez v6, :cond_f

    if-eqz v64, :cond_21

    :cond_f
    if-nez v60, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x2

    if-eq v6, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_21

    :cond_10
    const/16 v37, 0x1

    .line 1872
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_11

    if-eqz v37, :cond_22

    :cond_11
    const/16 v50, 0x1

    .line 1873
    :goto_a
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mOrientationChanged:Z

    .line 1876
    if-eqz v50, :cond_13

    .line 1878
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1880
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v6, :cond_24

    .line 1883
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v6, :cond_23

    const/4 v6, 0x1

    :goto_b
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1884
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_12
    :goto_c
    move-object/from16 v6, p0

    .line 1932
    invoke-direct/range {v6 .. v11}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v6

    or-int v76, v76, v6

    .line 1936
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1937
    move-object/from16 v58, v8

    .line 1939
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v6, :cond_15

    .line 1940
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1941
    move-object/from16 v58, v8

    .line 1944
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_30

    .line 1945
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1946
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v6, 0xf0

    move/from16 v62, v0

    .line 1950
    .local v62, "resizeMode":I
    if-nez v62, :cond_30

    .line 1951
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1952
    .local v24, "N":I
    const/16 v43, 0x0

    .local v43, "i":I
    :goto_d
    move/from16 v0, v43

    move/from16 v1, v24

    if-ge v0, v1, :cond_2e

    .line 1953
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1954
    const/16 v62, 0x10

    .line 1952
    :cond_17
    add-int/lit8 v43, v43, 0x1

    goto :goto_d

    .line 1740
    .end local v10    # "desiredWindowWidth":I
    .end local v11    # "desiredWindowHeight":I
    .end local v24    # "N":I
    .end local v31    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v37    # "forceRelayout":Z
    .end local v38    # "frame":Landroid/graphics/Rect;
    .end local v43    # "i":I
    .end local v46    # "imeStateChangedInStopped":Z
    .end local v48    # "insetsChanged":Z
    .end local v50    # "layoutRequested":Z
    .end local v58    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v61    # "reportVisibilityChanged":Z
    .end local v62    # "resizeMode":I
    .end local v64    # "sizeChangedInStopped":Z
    .end local v71    # "viewVisibilityChanged":Z
    :cond_18
    const/16 v61, 0x0

    goto/16 :goto_1

    .line 1743
    .restart local v61    # "reportVisibilityChanged":Z
    :cond_19
    const/16 v71, 0x0

    goto/16 :goto_2

    .line 1761
    .restart local v31    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v58    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v71    # "viewVisibilityChanged":Z
    :cond_1a
    move-object/from16 v0, v58

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v6, v6, 0x80

    move-object/from16 v0, v58

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1762
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_3

    .line 1781
    .restart local v38    # "frame":Landroid/graphics/Rect;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v57

    .line 1783
    .local v57, "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v57

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1784
    .restart local v10    # "desiredWindowWidth":I
    move-object/from16 v0, v57

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v11    # "desiredWindowHeight":I
    goto/16 :goto_4

    .line 1828
    .end local v10    # "desiredWindowWidth":I
    .end local v11    # "desiredWindowHeight":I
    .end local v57    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1c
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1829
    .restart local v10    # "desiredWindowWidth":I
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 1830
    .restart local v11    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v10, v6, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v11, v6, :cond_9

    .line 1833
    :cond_1d
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1834
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1835
    const/16 v76, 0x1

    goto/16 :goto_5

    .line 1862
    .restart local v48    # "insetsChanged":Z
    :cond_1e
    const/16 v50, 0x0

    goto/16 :goto_6

    .line 1866
    .restart local v37    # "forceRelayout":Z
    .restart local v50    # "layoutRequested":Z
    :cond_1f
    const/16 v64, 0x0

    goto/16 :goto_7

    .line 1867
    .restart local v64    # "sizeChangedInStopped":Z
    :cond_20
    const/16 v46, 0x0

    goto/16 :goto_8

    .line 1868
    .restart local v46    # "imeStateChangedInStopped":Z
    :cond_21
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 1872
    :cond_22
    const/16 v50, 0x0

    goto/16 :goto_a

    .line 1883
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 1886
    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 1887
    const/16 v48, 0x1

    .line 1889
    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1890
    const/16 v48, 0x1

    .line 1892
    :cond_26
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 1893
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    move-result v6

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_2c

    .line 1898
    const-string v6, "ViewRootImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignore stableInsets changed, SI="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PSI="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 1905
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1909
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1910
    const/16 v48, 0x1

    .line 1912
    :cond_29
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v12, -0x2

    if-eq v6, v12, :cond_2a

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_12

    .line 1914
    :cond_2a
    const/16 v76, 0x1

    .line 1916
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7de

    if-eq v6, v12, :cond_2b

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7db

    if-ne v6, v12, :cond_2d

    .line 1919
    :cond_2b
    new-instance v63, Landroid/graphics/Point;

    invoke-direct/range {v63 .. v63}, Landroid/graphics/Point;-><init>()V

    .line 1920
    .restart local v63    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1921
    move-object/from16 v0, v63

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 1922
    move-object/from16 v0, v63

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1923
    goto/16 :goto_c

    .line 1901
    .end local v63    # "size":Landroid/graphics/Point;
    :cond_2c
    const/16 v48, 0x1

    goto :goto_e

    .line 1924
    :cond_2d
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v57

    .line 1925
    .restart local v57    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v57

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1926
    move-object/from16 v0, v57

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_c

    .line 1957
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v57    # "packageMetrics":Landroid/util/DisplayMetrics;
    .restart local v24    # "N":I
    .restart local v43    # "i":I
    .restart local v62    # "resizeMode":I
    :cond_2e
    if-nez v62, :cond_2f

    .line 1958
    const/16 v62, 0x20

    .line 1960
    :cond_2f
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, 0xf0

    move/from16 v0, v62

    if-eq v6, v0, :cond_30

    .line 1962
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v62

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1965
    move-object/from16 v58, v8

    .line 1970
    .end local v24    # "N":I
    .end local v43    # "i":I
    .end local v62    # "resizeMode":I
    :cond_30
    if-eqz v58, :cond_32

    .line 1971
    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_31

    .line 1972
    move-object/from16 v0, v58

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_31

    .line 1973
    const/4 v6, -0x3

    move-object/from16 v0, v58

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1976
    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v58

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x2000000

    and-int/2addr v6, v13

    if-eqz v6, :cond_4c

    const/4 v6, 0x1

    :goto_f
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1980
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v6, :cond_33

    .line 1981
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1982
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1983
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1984
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v6, :cond_33

    .line 1988
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v6

    or-int v76, v76, v6

    .line 1994
    :cond_33
    if-eqz v50, :cond_34

    .line 1998
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2001
    :cond_34
    if-eqz v50, :cond_4d

    if-eqz v76, :cond_4d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-ne v6, v12, :cond_36

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-ne v6, v12, :cond_36

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_35

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v6, v10, :cond_35

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v6, v12, :cond_36

    :cond_35
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_4d

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v11, :cond_4d

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v6, v12, :cond_4d

    :cond_36
    const/16 v75, 0x1

    .line 2009
    .local v75, "windowShouldResize":Z
    :goto_10
    const/16 v52, 0x0

    .line 2030
    .local v52, "maximizing":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v6

    if-nez v6, :cond_37

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v6, :cond_4e

    :cond_37
    const/16 v32, 0x1

    .line 2034
    .local v32, "computesInternalInsets":Z
    :goto_11
    const/16 v49, 0x0

    .line 2035
    .local v49, "insetsPending":Z
    const/16 v59, 0x0

    .line 2037
    .local v59, "relayoutResult":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v6, :cond_38

    if-nez v75, :cond_38

    if-nez v48, :cond_38

    if-nez v61, :cond_38

    if-nez v58, :cond_38

    if-nez v37, :cond_38

    if-nez v46, :cond_38

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mNewScaleFactorNeeded:Z

    if-eqz v6, :cond_78

    .line 2043
    :cond_38
    if-nez v60, :cond_3a

    .line 2053
    if-eqz v32, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v6, :cond_39

    if-eqz v61, :cond_4f

    :cond_39
    const/16 v49, 0x1

    .line 2057
    :cond_3a
    :goto_12
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_3b

    .line 2058
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2059
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 2062
    :cond_3b
    const/16 v42, 0x0

    .line 2063
    .local v42, "hwInitialized":Z
    const/16 v33, 0x0

    .line 2064
    .local v33, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 2067
    .local v39, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    if-nez v6, :cond_3e

    .line 2073
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_3d

    .line 2077
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2080
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v12, v13, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2082
    :cond_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v12, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/view/FrameInfo;->addFlags(J)V

    .line 2085
    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v2, v70

    move/from16 v3, v49

    move/from16 v4, v60

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I

    move-result v59

    .line 2096
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->seq:I

    if-eqz v6, :cond_3e

    .line 2099
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v6, :cond_50

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v12, 0x0

    iput v12, v6, Landroid/content/res/Configuration;->seq:I

    .line 2104
    :cond_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    move-result v68

    .line 2105
    .local v68, "surfaceGenerationId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    const/16 v56, 0x1

    .line 2107
    .local v56, "overscanInsetsChanged":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const/16 v33, 0x1

    .line 2109
    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    const/16 v72, 0x1

    .line 2111
    .local v72, "visibleInsetsChanged":Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    const/16 v66, 0x1

    .line 2113
    .local v66, "stableInsetsChanged":Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    const/16 v55, 0x1

    .line 2114
    .local v55, "outsetsChanged":Z
    :goto_18
    if-eqz v33, :cond_40

    .line 2115
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v6, :cond_3f

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v6, :cond_3f

    if-eqz v8, :cond_3f

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v12

    and-int/lit16 v6, v6, 0x600

    if-nez v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3f

    if-eqz v8, :cond_3f

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    if-nez v6, :cond_3f

    .line 2125
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 2177
    :cond_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2181
    :cond_40
    if-eqz v56, :cond_41

    .line 2182
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2186
    const/16 v33, 0x1

    .line 2188
    :cond_41
    if-eqz v66, :cond_42

    .line 2189
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2193
    const/16 v33, 0x1

    .line 2195
    :cond_42
    if-nez v33, :cond_43

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v12, v12, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v6, v12, :cond_43

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v6, :cond_43

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v12, v12, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-ne v6, v12, :cond_43

    if-eqz v55, :cond_44

    .line 2199
    :cond_43
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2200
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2202
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2203
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 2205
    :cond_44
    if-eqz v72, :cond_45

    .line 2206
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2211
    :cond_45
    if-nez v39, :cond_56

    .line 2212
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2220
    const/16 v54, 0x1

    .line 2221
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2222
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->setEmpty()V

    .line 2225
    sget v6, Landroid/view/ViewRootImpl;->sBufferCount:I

    const/4 v12, -0x1

    if-eq v6, v12, :cond_46

    .line 2228
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    sget v12, Landroid/view/ViewRootImpl;->sBufferCount:I

    invoke-virtual {v6, v12}, Landroid/view/Surface;->setBufferCount(I)V

    .line 2232
    :cond_46
    sget-wide v12, Landroid/view/ViewRootImpl;->sDTSFactor:D

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v12, v20

    if-eqz v6, :cond_47

    .line 2233
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    sget-wide v12, Landroid/view/ViewRootImpl;->sDTSFactor:D

    invoke-virtual {v6, v12, v13}, Landroid/view/Surface;->setDTSFactor(D)V

    .line 2240
    :cond_47
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_48

    .line 2242
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    sget-boolean v14, Landroid/view/ViewRootImpl;->sIsDcsEnabledApp:Z

    sget v15, Landroid/view/ViewRootImpl;->sDcsFormat:I

    sget-wide v16, Landroid/view/ViewRootImpl;->sDssFactor:D

    invoke-virtual/range {v12 .. v17}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;ZID)Z

    move-result v42

    .line 2247
    if-eqz v42, :cond_48

    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_48

    sget-boolean v6, Landroid/view/ViewRootImpl;->sRendererDemoted:Z

    if-nez v6, :cond_48

    .line 2252
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2296
    .end local v55    # "outsetsChanged":Z
    .end local v56    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v68    # "surfaceGenerationId":I
    .end local v72    # "visibleInsetsChanged":Z
    :cond_48
    :goto_19
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2297
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2302
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v6, v12, :cond_49

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eq v6, v12, :cond_4a

    .line 2303
    :cond_49
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2304
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2307
    :cond_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_5e

    .line 2309
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2312
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v12, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 2314
    :cond_4b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v6, v12, v13}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2316
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 2317
    if-nez v39, :cond_5c

    .line 2318
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2320
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2321
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2322
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceCreated"

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2324
    .local v27, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v27, :cond_5b

    .line 2325
    move-object/from16 v25, v27

    .local v25, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .local v51, "len$":I
    const/16 v44, 0x0

    .local v44, "i$":I
    :goto_1a
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_5b

    aget-object v26, v25, v44

    .line 2326
    .local v26, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2325
    add-int/lit8 v44, v44, 0x1

    goto :goto_1a

    .line 1976
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v32    # "computesInternalInsets":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v39    # "hadSurface":Z
    .end local v42    # "hwInitialized":Z
    .end local v44    # "i$":I
    .end local v49    # "insetsPending":Z
    .end local v51    # "len$":I
    .end local v52    # "maximizing":Z
    .end local v59    # "relayoutResult":I
    .end local v75    # "windowShouldResize":Z
    :cond_4c
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 2001
    :cond_4d
    const/16 v75, 0x0

    goto/16 :goto_10

    .line 2030
    .restart local v52    # "maximizing":Z
    .restart local v75    # "windowShouldResize":Z
    :cond_4e
    const/16 v32, 0x0

    goto/16 :goto_11

    .line 2053
    .restart local v32    # "computesInternalInsets":Z
    .restart local v49    # "insetsPending":Z
    .restart local v59    # "relayoutResult":I
    :cond_4f
    const/16 v49, 0x0

    goto/16 :goto_12

    .line 2099
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    :cond_50
    const/4 v6, 0x0

    goto/16 :goto_13

    .line 2105
    .restart local v68    # "surfaceGenerationId":I
    :cond_51
    const/16 v56, 0x0

    goto/16 :goto_14

    .line 2107
    .restart local v56    # "overscanInsetsChanged":Z
    :cond_52
    const/16 v33, 0x0

    goto/16 :goto_15

    .line 2109
    :cond_53
    const/16 v72, 0x0

    goto/16 :goto_16

    .line 2111
    .restart local v72    # "visibleInsetsChanged":Z
    :cond_54
    const/16 v66, 0x0

    goto/16 :goto_17

    .line 2113
    .restart local v66    # "stableInsetsChanged":Z
    :cond_55
    const/16 v55, 0x0

    goto/16 :goto_18

    .line 2255
    .restart local v55    # "outsetsChanged":Z
    :catch_0
    move-exception v35

    .line 2256
    .local v35, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 2290
    .end local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v55    # "outsetsChanged":Z
    .end local v56    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v68    # "surfaceGenerationId":I
    .end local v72    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v6

    goto/16 :goto_19

    .line 2261
    .restart local v55    # "outsetsChanged":Z
    .restart local v56    # "overscanInsetsChanged":Z
    .restart local v66    # "stableInsetsChanged":Z
    .restart local v68    # "surfaceGenerationId":I
    .restart local v72    # "visibleInsetsChanged":Z
    :cond_56
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 2264
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_57

    .line 2265
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2267
    :cond_57
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2268
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v6, :cond_58

    .line 2269
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v6, v12}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2271
    :cond_58
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_59

    .line 2272
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2274
    :cond_59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 2276
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_48

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2278
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->destroy()V

    goto/16 :goto_19

    .line 2280
    :cond_5a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    move-result v6

    move/from16 v0, v68

    if-eq v0, v6, :cond_48

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v6, :cond_48

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_48

    .line 2282
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2284
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_19

    .line 2285
    :catch_2
    move-exception v35

    .line 2286
    .restart local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2329
    .end local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v55    # "outsetsChanged":Z
    .end local v56    # "overscanInsetsChanged":Z
    .end local v66    # "stableInsetsChanged":Z
    .end local v68    # "surfaceGenerationId":I
    .end local v72    # "visibleInsetsChanged":Z
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_5b
    const/16 v67, 0x1

    .line 2331
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_5c
    if-eqz v67, :cond_5d

    .line 2332
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v6, v12, v13, v14, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2334
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2336
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v27, :cond_5d

    .line 2337
    move-object/from16 v25, v27

    .restart local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v44, 0x0

    .restart local v44    # "i$":I
    :goto_1b
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_5d

    aget-object v26, v25, v44

    .line 2338
    .restart local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v12, v13, v14}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2337
    add-int/lit8 v44, v44, 0x1

    goto :goto_1b

    .line 2343
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v44    # "i$":I
    .end local v51    # "len$":I
    :cond_5d
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2363
    :cond_5e
    :goto_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v40, v0

    .line 2364
    .local v40, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v40, :cond_60

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2365
    if-nez v52, :cond_5f

    if-nez v42, :cond_5f

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v12

    if-ne v6, v12, :cond_5f

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v12

    if-eq v6, v12, :cond_60

    .line 2368
    :cond_5f
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v12, v13, v14}, Landroid/view/HardwareRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 2370
    if-nez v42, :cond_60

    .line 2371
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    .line 2372
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2377
    :cond_60
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_61

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v6, :cond_61

    if-eqz v37, :cond_62

    .line 2378
    :cond_61
    and-int/lit8 v6, v59, 0x1

    if-eqz v6, :cond_73

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v36

    .line 2380
    .local v36, "focusChangedDueToTouchMode":Z
    if-nez v36, :cond_74

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-ne v6, v12, :cond_74

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-ne v6, v12, :cond_74

    if-nez v33, :cond_74

    .line 2456
    .end local v33    # "contentInsetsChanged":Z
    .end local v36    # "focusChangedDueToTouchMode":Z
    .end local v39    # "hadSurface":Z
    .end local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v42    # "hwInitialized":Z
    :cond_62
    :goto_1e
    if-eqz v50, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_63

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v6, :cond_63

    if-eqz v37, :cond_7c

    :cond_63
    const/16 v34, 0x1

    .line 2457
    .local v34, "didLayout":Z
    :goto_1f
    if-nez v34, :cond_64

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_7d

    :cond_64
    const/16 v69, 0x1

    .line 2459
    .local v69, "triggerGlobalLayoutListener":Z
    :goto_20
    if-eqz v34, :cond_68

    .line 2460
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2465
    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_68

    .line 2468
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v19, 0x0

    aget v14, v14, v19

    iget v0, v7, Landroid/view/View;->mRight:I

    move/from16 v19, v0

    add-int v14, v14, v19

    iget v0, v7, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    sub-int v14, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    iget v0, v7, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v7, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v6, v12, v13, v14, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 2473
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v6}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2476
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_65

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lez v6, :cond_66

    .line 2477
    :cond_65
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Region;->translate(II)V

    .line 2479
    :cond_66
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_67

    .line 2480
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2483
    :cond_67
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 2484
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2485
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2488
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v6, v12, v13}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2501
    :cond_68
    :goto_21
    if-eqz v69, :cond_69

    .line 2502
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2503
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2506
    :cond_69
    if-eqz v32, :cond_6b

    .line 2508
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v47, v0

    .line 2509
    .local v47, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2512
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2513
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7e

    const/4 v6, 0x1

    :goto_22
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2516
    if-nez v49, :cond_6a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 2517
    :cond_6a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_7f

    .line 2524
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    .line 2525
    .local v15, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v16

    .line 2526
    .local v16, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v17

    .line 2533
    .local v17, "touchableRegion":Landroid/graphics/Region;
    :goto_23
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    if-nez v6, :cond_6b

    .line 2535
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v47

    iget v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v12 .. v17}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2543
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_6b
    :goto_24
    const/16 v65, 0x0

    .line 2545
    .local v65, "skipDraw":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v6, :cond_80

    .line 2549
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_6c

    .line 2550
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 2551
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/view/View;->requestFocus(I)Z

    .line 2570
    :cond_6c
    :goto_25
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2571
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2572
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2573
    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2575
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mReportedViewVisibility:I

    .line 2583
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_6d

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 2584
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v45

    .line 2586
    .local v45, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v45

    if-eq v0, v6, :cond_6d

    .line 2587
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2588
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 2589
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_6d

    if-eqz v45, :cond_6d

    .line 2590
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v12, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v12}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v6, :cond_83

    const/16 v22, 0x1

    :goto_26
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2599
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v45    # "imTarget":Z
    :cond_6d
    and-int/lit8 v6, v59, 0x2

    if-eqz v6, :cond_6e

    .line 2600
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2603
    :cond_6e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v6

    if-nez v6, :cond_6f

    if-eqz v70, :cond_84

    :cond_6f
    const/16 v28, 0x1

    .line 2606
    .local v28, "cancelDraw":Z
    :goto_27
    if-nez v28, :cond_88

    if-nez v54, :cond_88

    .line 2607
    if-eqz v65, :cond_70

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v6, :cond_87

    .line 2608
    :cond_70
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v6, :cond_86

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_86

    .line 2609
    const/16 v43, 0x0

    .restart local v43    # "i":I
    :goto_28
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v43

    if-ge v0, v6, :cond_85

    .line 2610
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/LayoutTransition;

    invoke-virtual {v6}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2609
    add-int/lit8 v43, v43, 0x1

    goto :goto_28

    .line 2344
    .end local v28    # "cancelDraw":Z
    .end local v34    # "didLayout":Z
    .end local v43    # "i":I
    .end local v65    # "skipDraw":Z
    .end local v69    # "triggerGlobalLayoutListener":Z
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    :cond_71
    if-eqz v39, :cond_5e

    .line 2345
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2346
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2347
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2348
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    if-eqz v27, :cond_72

    .line 2350
    move-object/from16 v25, v27

    .restart local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v44, 0x0

    .restart local v44    # "i$":I
    :goto_29
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_72

    aget-object v26, v25, v44

    .line 2351
    .restart local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2350
    add-int/lit8 v44, v44, 0x1

    goto :goto_29

    .line 2354
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v44    # "i$":I
    .end local v51    # "len$":I
    :cond_72
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2356
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v12, Landroid/view/Surface;

    invoke-direct {v12}, Landroid/view/Surface;-><init>()V

    iput-object v12, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2358
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1c

    :catchall_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v12, v12, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 2378
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    :cond_73
    const/4 v6, 0x0

    goto/16 :goto_1d

    .line 2383
    .restart local v36    # "focusChangedDueToTouchMode":Z
    :cond_74
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v6, v12}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v30

    .line 2384
    .local v30, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v6, v12}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v29

    .line 2393
    .local v29, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2398
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v73

    .line 2399
    .local v73, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v41

    .line 2400
    .local v41, "height":I
    const/16 v53, 0x0

    .line 2402
    .local v53, "measureAgain":Z
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_75

    .line 2403
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v6, v6, v73

    int-to-float v6, v6

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    add-int v73, v73, v6

    .line 2404
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v73

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 2406
    const/16 v53, 0x1

    .line 2408
    :cond_75
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_76

    .line 2409
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v6, v6, v41

    int-to-float v6, v6

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    add-int v41, v41, v6

    .line 2410
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v41

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 2412
    const/16 v53, 0x1

    .line 2415
    :cond_76
    if-eqz v53, :cond_77

    .line 2419
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2422
    :cond_77
    const/16 v50, 0x1

    goto/16 :goto_1e

    .line 2440
    .end local v29    # "childHeightMeasureSpec":I
    .end local v30    # "childWidthMeasureSpec":I
    .end local v33    # "contentInsetsChanged":Z
    .end local v36    # "focusChangedDueToTouchMode":Z
    .end local v39    # "hadSurface":Z
    .end local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v41    # "height":I
    .end local v42    # "hwInitialized":Z
    .end local v53    # "measureAgain":Z
    .end local v73    # "width":I
    :cond_78
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ne v6, v12, :cond_79

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-eq v6, v12, :cond_7b

    :cond_79
    const/16 v74, 0x1

    .line 2442
    .local v74, "windowMoved":Z
    :goto_2a
    if-eqz v74, :cond_62

    .line 2443
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_7a

    .line 2444
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2446
    :cond_7a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2447
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2450
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_62

    .line 2451
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    goto/16 :goto_1e

    .line 2440
    .end local v74    # "windowMoved":Z
    :cond_7b
    const/16 v74, 0x0

    goto :goto_2a

    .line 2456
    :cond_7c
    const/16 v34, 0x0

    goto/16 :goto_1f

    .line 2457
    .restart local v34    # "didLayout":Z
    :cond_7d
    const/16 v69, 0x0

    goto/16 :goto_20

    .line 2513
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v69    # "triggerGlobalLayoutListener":Z
    :cond_7e
    const/4 v6, 0x0

    goto/16 :goto_22

    .line 2528
    :cond_7f
    move-object/from16 v0, v47

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2529
    .restart local v15    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2530
    .restart local v16    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    .restart local v17    # "touchableRegion":Landroid/graphics/Region;
    goto/16 :goto_23

    .line 2559
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v65    # "skipDraw":Z
    :cond_80
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v6, :cond_6c

    .line 2560
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    if-gtz v6, :cond_81

    .line 2561
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mTwDrawDuringWindowsAnimating:Z

    if-nez v6, :cond_81

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    if-eqz v6, :cond_82

    .line 2567
    :cond_81
    :goto_2b
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    goto/16 :goto_25

    .line 2564
    :cond_82
    const/16 v65, 0x1

    goto :goto_2b

    .line 2591
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v45    # "imTarget":Z
    :cond_83
    const/16 v22, 0x0

    goto/16 :goto_26

    .line 2603
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v45    # "imTarget":Z
    :cond_84
    const/16 v28, 0x0

    goto/16 :goto_27

    .line 2612
    .restart local v28    # "cancelDraw":Z
    .restart local v43    # "i":I
    :cond_85
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2615
    .end local v43    # "i":I
    :cond_86
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    .line 2629
    :cond_87
    :goto_2c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    goto/16 :goto_0

    .line 2618
    :cond_88
    if-nez v70, :cond_89

    .line 2620
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_2c

    .line 2621
    :cond_89
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v6, :cond_87

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_87

    .line 2622
    const/16 v43, 0x0

    .restart local v43    # "i":I
    :goto_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v43

    if-ge v0, v6, :cond_8a

    .line 2623
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/LayoutTransition;

    invoke-virtual {v6}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2622
    add-int/lit8 v43, v43, 0x1

    goto :goto_2d

    .line 2625
    :cond_8a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_2c

    .line 2537
    .end local v28    # "cancelDraw":Z
    .end local v43    # "i":I
    .end local v65    # "skipDraw":Z
    .restart local v15    # "contentInsets":Landroid/graphics/Rect;
    .restart local v16    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v17    # "touchableRegion":Landroid/graphics/Region;
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_3
    move-exception v6

    goto/16 :goto_24

    .line 2489
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_4
    move-exception v6

    goto/16 :goto_21
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 7995
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 7996
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 7999
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 8000
    return-void
.end method

.method private profileRendering(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2959
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2

    .line 2960
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 2962
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 2963
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2965
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_3

    .line 2966
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 2967
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 2978
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2983
    :cond_2
    :goto_0
    return-void

    .line 2980
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v0, 0x0

    .line 7231
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7232
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7234
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 7235
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7236
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7237
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7239
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I
    .locals 23
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "internalViewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .param p4, "viewVisibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6776
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v20, v0

    .line 6777
    .local v20, "appScale":F
    const/16 v22, 0x0

    .line 6778
    .local v22, "restore":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 6779
    const/16 v22, 0x1

    .line 6780
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 6781
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 6783
    :cond_0
    if-eqz p1, :cond_1

    .line 6786
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 6788
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 6790
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 6791
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6796
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v20

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v20

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v4, 0x1

    move v7, v4

    :goto_0
    if-nez p2, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    :goto_1
    or-int v8, v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v4, p1

    move/from16 v7, p4

    invoke-interface/range {v1 .. v19}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/PointF;)I

    move-result v21

    .line 6812
    .local v21, "relayoutResult":I
    if-eqz v22, :cond_3

    .line 6813
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 6816
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 6817
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 6818
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6819
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6820
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6821
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6823
    :cond_4
    return v21

    .line 6796
    .end local v21    # "relayoutResult":I
    :cond_5
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .prologue
    .line 8007
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8008
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8010
    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7275
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    .line 7276
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7278
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7279
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7281
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendUserActionEvent()V
    .locals 6

    .prologue
    .line 8764
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 8765
    const-string v2, "ViewRootImpl"

    const-string/jumbo v3, "sendUserActionEvent() mView == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8774
    :cond_0
    :goto_0
    return-void

    .line 8768
    :cond_1
    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x1

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8769
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    .line 8770
    .local v0, "catEventUserActivity":Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8771
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8772
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setHCTLetterSpacing(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Z

    .prologue
    .line 1034
    if-nez p1, :cond_1

    .line 1054
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1037
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1038
    if-eqz p2, :cond_2

    .line 1039
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->setHCTLetterSpacing()V

    goto :goto_0

    .line 1041
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->resetHCTLetterSpacing()V

    goto :goto_0

    .line 1046
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 1047
    check-cast v1, Landroid/view/ViewGroup;

    .line 1049
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1050
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 1051
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/view/ViewRootImpl;->setHCTLetterSpacing(Landroid/view/View;Z)V

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private startContentResizeAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 9391
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->cancelContentResizeAnimation()V

    .line 9393
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 9394
    .local v0, "from":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 9396
    .local v1, "to":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9397
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9398
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9399
    iput-boolean v5, p0, Landroid/view/ViewRootImpl;->mResizeAnimating:Z

    .line 9401
    if-ge v0, v1, :cond_2

    .line 9402
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9407
    :goto_0
    sget-boolean v2, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 9408
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" called content resize anim, from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9411
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 9412
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 9413
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->dispatchSipResizeAnimationState(Z)Z

    .line 9414
    :cond_1
    return-void

    .line 9404
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2992
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2993
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2994
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 3009
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2997
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2998
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v2, v4, v8

    .line 2999
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v4, v8

    .line 3000
    .local v6, "totalTime":J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 3002
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 3003
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 3004
    .local v0, "fps":F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 3006
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1445
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .prologue
    .line 8183
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .prologue
    .line 8213
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .prologue
    .line 8198
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7701
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7702
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 7703
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .prologue
    .line 8343
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8344
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 8345
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setOpaque(Z)V

    .line 8347
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 8260
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8261
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8264
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8034
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 8290
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3766
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3767
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3768
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 8030
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 6889
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1007
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 1009
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .prologue
    .line 1059
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 1060
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->stopDrawing()V

    .line 1065
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 6971
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    .line 6972
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 6973
    const/4 v0, 0x0

    .line 6983
    :goto_0
    return v0

    .line 6976
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 6977
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6982
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6983
    const/4 v0, 0x1

    goto :goto_0

    .line 6979
    :cond_1
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 7744
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7745
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7746
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7747
    return-void

    .line 7745
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 1703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1704
    return-void
.end method

.method public dispatchAttachedDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 8644
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 7814
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7816
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7818
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7776
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7777
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7778
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7779
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7780
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3809
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3811
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3814
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 3819
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 3820
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3822
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 3824
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 3826
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3828
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3830
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3831
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3832
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3833
    const-string v0, "ViewRootImpl"

    const-string v1, "#3 mView = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 3837
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3839
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_2

    .line 3840
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 3841
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->dispose()V

    .line 3842
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 3843
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 3845
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_3

    .line 3846
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 3847
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 3850
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_4

    .line 3851
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3858
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_5

    .line 3859
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3860
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 3863
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 3865
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 3866
    return-void

    .line 3853
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 7784
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 7785
    const/16 v1, 0x10

    .line 7786
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7790
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7791
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7792
    return-void

    .line 7788
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 7083
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7084
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7085
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .prologue
    .line 7750
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7751
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7752
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 7707
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    .line 7710
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7711
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7712
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7713
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7714
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7715
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7716
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7679
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7680
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7681
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7690
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 7691
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7685
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7686
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7687
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 7694
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 7695
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7725
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7726
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7727
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7728
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 7129
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 7130
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7131
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 7132
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 7133
    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 7135
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7136
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7137
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .param p9, "cocktailBarFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 7097
    if-eqz p7, :cond_0

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v3, :cond_0

    .line 7098
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7099
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 7100
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchResized mReportNextDraw cancel... mWinFrame : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frame : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7106
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_b

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7107
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_1

    .line 7108
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7109
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7110
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7111
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7113
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7114
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 7115
    .local v2, "sameProcessCall":Z
    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v3

    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_3
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7116
    if-eqz v2, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v3

    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_4
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7117
    if-eqz v2, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v3

    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 7118
    if-eqz v2, :cond_6

    if-eqz p8, :cond_6

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p8, v3

    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_6
    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 7119
    if-eqz v2, :cond_7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v3

    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 7120
    if-eqz v2, :cond_8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v3

    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_8
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 7121
    if-eqz v2, :cond_9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p6, v3

    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_9
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 7122
    if-eqz v2, :cond_a

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p9, v3

    .end local p9    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_a
    iput-object p9, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 7123
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7124
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7125
    return-void

    .line 7106
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sameProcessCall":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    .restart local p9    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_b
    const/4 v3, 0x4

    goto/16 :goto_0
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 7942
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    if-eqz v0, :cond_0

    .line 7943
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    .line 7947
    :goto_0
    return-void

    .line 7945
    :cond_0
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 7796
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 7797
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 7798
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 7799
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 7800
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 7801
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7802
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7737
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7738
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 7740
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 7741
    return-void
.end method

.method public dispatchWindowAnimationStarted(I)V
    .locals 3
    .param p1, "remainingFrameCount"    # I

    .prologue
    .line 7805
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7807
    return-void
.end method

.method public dispatchWindowAnimationStopped()V
    .locals 2

    .prologue
    .line 7810
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7811
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    .prologue
    .line 7772
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7773
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 1459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1461
    :cond_0
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 7510
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 7511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7512
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 7513
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7520
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 7523
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7525
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 6987
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6989
    monitor-enter p0

    .line 6990
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 6991
    monitor-exit p0

    .line 7033
    :goto_0
    return-void

    .line 6995
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleDispatchSurfaceDestroyDeferred()V

    .line 6998
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 6999
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 7001
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_3

    .line 7002
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 7004
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 7005
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 7009
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mReportedViewVisibility:I

    if-eq v3, v1, :cond_4

    .line 7010
    .local v0, "reportViewVisibilityChanged":Z
    :goto_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 7016
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v1}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 7019
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7025
    :cond_2
    :goto_2
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 7029
    .end local v0    # "reportViewVisibilityChanged":Z
    .end local v1    # "viewVisibility":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 7030
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7031
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->removeRootContext()V

    .line 7032
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    goto :goto_0

    .restart local v1    # "viewVisibility":I
    :cond_4
    move v0, v2

    .line 7009
    goto :goto_1

    .line 7030
    .end local v1    # "viewVisibility":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 7021
    .restart local v0    # "reportViewVisibilityChanged":Z
    .restart local v1    # "viewVisibility":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 7285
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v6, :cond_2

    .line 7286
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7287
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7288
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v6, :cond_0

    .line 7289
    iput-object v11, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7291
    :cond_0
    iput-object v11, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7293
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7294
    const-wide/16 v6, 0x4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v9, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v6, v7, v8, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7297
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    .line 7298
    .local v0, "eventTime":J
    move-wide v4, v0

    .line 7299
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 7300
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 7301
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-lez v6, :cond_1

    .line 7302
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    .line 7305
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 7307
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 7312
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v6, :cond_3

    .line 7313
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7314
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7316
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1520
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1521
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1522
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1524
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    .line 1525
    const-string v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1528
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 1530
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    .line 1531
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1532
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1535
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6893
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6894
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6895
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6896
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6897
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6898
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6899
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6900
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6901
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6902
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6903
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6904
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6905
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6906
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 6907
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6911
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6913
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6915
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6916
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6917
    return-void

    .line 6909
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 6941
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 6942
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6943
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 6945
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 7242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 7243
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .prologue
    .line 7247
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 7248
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 7255
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7256
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    .line 7257
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7258
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7263
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7264
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7267
    if-eqz p4, :cond_1

    .line 7268
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7272
    :goto_1
    return-void

    .line 7260
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7261
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7270
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 4488
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 4500
    :goto_0
    return v1

    .line 4492
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4493
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4500
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 4495
    :catch_0
    move-exception v0

    .line 4496
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6880
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 6882
    const/4 v0, 0x0

    .line 6884
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3777
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3778
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3779
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3780
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3795
    :cond_0
    :goto_0
    return-void

    .line 3785
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3786
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 3787
    check-cast v1, Landroid/view/ViewGroup;

    .line 3788
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3790
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 3695
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 6759
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6763
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 6764
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6766
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getAppVisibility()Z
    .locals 1

    .prologue
    .line 1424
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 1435
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 1436
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getCocktailBarRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 9251
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCocktailBar:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentWritingBuddyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 9151
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentWritingBuddyView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1449
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1452
    :cond_0
    :goto_0
    return v1

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 6738
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6739
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 6740
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 8193
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    .prologue
    .line 9144
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getMultiWindowScale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 9187
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 9162
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 9163
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 9168
    :goto_0
    return-object v0

    .line 9165
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 9166
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0

    .line 9168
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 3772
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopped()Z
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 8223
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .prologue
    .line 8208
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 9
    .param p1, "forceConstruct"    # Z

    .prologue
    .line 1676
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_5

    .line 1677
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1678
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1679
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1680
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1683
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1686
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1687
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1689
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1690
    .local v2, "outsets":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v4, :cond_4

    .line 1691
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v1, "contentInsets":Landroid/graphics/Rect;
    move-object v0, v1

    .line 1695
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    :cond_4
    new-instance v4, Landroid/view/WindowInsets;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    invoke-direct {v4, v0, v5, v3, v6}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1699
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v2    # "outsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v4
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1224
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_1

    .line 1225
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1227
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 1229
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_2

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    .line 1236
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1237
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    .line 1238
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 1241
    :cond_1
    return-void

    .line 1231
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-nez v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    goto :goto_0
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    .line 6626
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    .line 6630
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 6631
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6632
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6634
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 6644
    :cond_1
    :goto_0
    return-void

    .line 6635
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_3

    .line 6636
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 6639
    :cond_3
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 6640
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_1

    .line 6641
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 6642
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method public handleDispatchWindowAnimationStarted(I)V
    .locals 2
    .param p1, "remainingFrameCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 6647
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 6649
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 6651
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    .line 6654
    :cond_0
    iput p1, p0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    .line 6655
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 6657
    :cond_1
    return-void
.end method

.method public handleDispatchWindowAnimationStopped()V
    .locals 2

    .prologue
    .line 6660
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v0, :cond_2

    .line 6661
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 6663
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsExitAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 6665
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleDispatchSurfaceDestroyDeferred()V

    .line 6669
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6670
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6673
    :cond_2
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    .prologue
    .line 6676
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 6677
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1244
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1245
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1246
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1247
    return-void
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1325
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1326
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1329
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1343
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1344
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1348
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1351
    if-nez p2, :cond_1

    .line 1352
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1374
    :cond_0
    :goto_0
    return-object v2

    .line 1354
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 1358
    :cond_2
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_6

    .line 1359
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1360
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1361
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_4

    .line 1362
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1364
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 1365
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1367
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_6

    .line 1368
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 1372
    :cond_6
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1333
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1334
    check-cast v1, Landroid/view/ViewGroup;

    .line 1335
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1336
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public invokeFunctor(JZ)V
    .locals 1
    .param p1, "functor"    # J
    .param p3, "waitForCompletion"    # Z

    .prologue
    .line 1077
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 1078
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 2700
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .prologue
    .line 8188
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .prologue
    .line 8218
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .prologue
    .line 8203
    const/4 v0, 0x1

    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .prologue
    .line 7041
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7065
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->notifyFramePending()V

    .line 1494
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 8178
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 8179
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2940
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2942
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2945
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 2946
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2935
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2936
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 8316
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 8321
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 8326
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 8312
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 8308
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 8303
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 8294
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 8299
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2952
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 2953
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 6869
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6871
    :goto_0
    return v1

    .line 6870
    :catch_0
    move-exception v0

    .line 6871
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 6831
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6834
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 6836
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 6853
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6856
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 6858
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6859
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6861
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 6838
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6841
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6844
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6847
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 6850
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 3

    .prologue
    .line 1289
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1290
    .local v0, "displayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1294
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_1
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 685
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3799
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3800
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3801
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3802
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 3803
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3806
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 1081
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 1089
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 1087
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 3757
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3758
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3759
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 8273
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 8274
    .local v0, "scrolled":Z
    if-eqz p2, :cond_0

    .line 8275
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8276
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8277
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8279
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8284
    :cond_0
    :goto_0
    return v0

    .line 8280
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 8269
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1305
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1306
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1310
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 1311
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1313
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1317
    :goto_0
    return-void

    .line 1315
    :cond_0
    const-string v0, "ViewRootImpl"

    const-string/jumbo v1, "requestLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 2726
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 2741
    :cond_0
    :goto_0
    return v0

    .line 2730
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2731
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    :cond_2
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-eqz v1, :cond_0

    .line 2740
    const-string v0, "ViewRootImpl"

    const-string/jumbo v1, "requestLayoutDuringLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9235
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;I)V

    .line 9236
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v9, 0x0

    .line 8038
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v8, :cond_1

    .line 8039
    :cond_0
    const/4 v8, 0x0

    .line 8085
    :goto_0
    return v8

    .line 8043
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 8044
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    .line 8084
    :cond_2
    :goto_1
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8085
    const/4 v8, 0x1

    goto :goto_0

    .line 8046
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 8047
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 8049
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8050
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 8051
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 8052
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 8053
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 8056
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_3

    .line 8057
    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 8062
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 8060
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 8067
    .end local v0    # "accessibilityViewId":I
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "virtualNodeId":I
    .end local v6    # "sourceNodeId":J
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 8068
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 8070
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8071
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 8072
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 8073
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 8074
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 8081
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 8044
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1477
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1481
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2884
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2885
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2886
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 2890
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 2891
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2893
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 7036
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7037
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7038
    return-void
.end method

.method resetSoftwareCaches(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1015
    if-nez p1, :cond_1

    .line 1028
    :cond_0
    return-void

    .line 1018
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1020
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 1021
    check-cast v1, Landroid/view/ViewGroup;

    .line 1023
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1024
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1025
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    .line 7486
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 7487
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7488
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7491
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .prologue
    .line 7502
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 7503
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 7504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 7505
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7507
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .prologue
    .line 1497
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1499
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1500
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1502
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1505
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1506
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1508
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 11
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3543
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3544
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 3545
    .local v6, "vi":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 3546
    .local v5, "scrollY":I
    const/4 v3, 0x0

    .line 3548
    .local v3, "handled":Z
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-gt v7, v10, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-gt v7, v10, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-gt v7, v10, :cond_0

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-le v7, v10, :cond_3

    .line 3554
    :cond_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3561
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3573
    .local v2, "focus":Landroid/view/View;
    if-nez v2, :cond_1

    move v7, v8

    .line 3677
    .end local v2    # "focus":Landroid/view/View;
    :goto_0
    return v7

    .line 3576
    .restart local v2    # "focus":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 3577
    .local v4, "lastScrolledFocus":Landroid/view/View;
    :goto_1
    if-eq v2, v4, :cond_2

    .line 3581
    const/4 p1, 0x0

    .line 3586
    :cond_2
    if-ne v2, v4, :cond_a

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v7, :cond_a

    if-nez p1, :cond_a

    .line 3659
    .end local v2    # "focus":Landroid/view/View;
    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_3
    :goto_2
    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v5, v7, :cond_8

    .line 3662
    if-nez p2, :cond_10

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v7, :cond_10

    .line 3663
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v7, :cond_4

    .line 3664
    new-instance v7, Landroid/widget/Scroller;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 3666
    :cond_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v10, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v10, v5, v10

    invoke-virtual {v7, v8, v9, v8, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 3667
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollEnterAnimation:Z

    if-eqz v7, :cond_5

    if-nez v5, :cond_6

    :cond_5
    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollExitAnimation:Z

    if-eqz v7, :cond_7

    if-nez v5, :cond_7

    .line 3669
    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3674
    :cond_7
    :goto_3
    iput v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_8
    move v7, v3

    .line 3677
    goto :goto_0

    .restart local v2    # "focus":Landroid/view/View;
    :cond_9
    move-object v4, v9

    .line 3576
    goto :goto_1

    .line 3596
    .restart local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_a
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3597
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3600
    const/4 v5, 0x0

    .line 3603
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3608
    if-nez p1, :cond_d

    .line 3609
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3612
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_b

    .line 3614
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3632
    :cond_b
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3636
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v7, v9, :cond_e

    .line 3653
    :cond_c
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 3616
    :catch_0
    move-exception v1

    .line 3617
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "offsetDescendantRectToMyCoords() error occurred. focus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mTempRect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 3626
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_d
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 3642
    :cond_e
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-ge v7, v9, :cond_f

    .line 3643
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v5

    sub-int/2addr v7, v9

    sub-int/2addr v5, v7

    goto :goto_5

    .line 3646
    :cond_f
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v7, v9, :cond_c

    .line 3648
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    sub-int/2addr v7, v9

    add-int/2addr v5, v7

    goto :goto_5

    .line 3671
    .end local v2    # "focus":Landroid/view/View;
    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_10
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v7, :cond_7

    .line 3672
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x0

    .line 3708
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    .line 3710
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3711
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3718
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3719
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3723
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3725
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 3726
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 3728
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3729
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3731
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 3733
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3736
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3738
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3740
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3744
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3745
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3747
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3

    .line 3748
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3750
    :cond_3
    return-void
.end method

.method public setCurrentWritingBuddyView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9155
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentWritingBuddyView:Landroid/view/View;

    .line 9156
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 6743
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 6744
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6746
    :cond_0
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 3536
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    .line 3537
    if-eqz p1, :cond_0

    .line 3538
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    .line 3540
    :cond_0
    return-void
.end method

.method public setForcePerformDraw(Z)V
    .locals 3
    .param p1, "forceDraw"    # Z

    .prologue
    .line 9323
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcePerformDraw():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9324
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    .line 9325
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 1168
    monitor-enter p0

    .line 1169
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 1170
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 1171
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 1172
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 1173
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1174
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1177
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 1180
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v7, 0x80

    .line 1184
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1185
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1187
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1188
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 1191
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1193
    :cond_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1194
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1196
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1199
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1201
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1203
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1205
    if-eqz p2, :cond_2

    .line 1206
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 1207
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1211
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_3

    .line 1213
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0xf1

    and-int/lit16 v9, v6, 0xf0

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1218
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1219
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1220
    monitor-exit p0

    .line 1221
    return-void

    .line 1220
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 6486
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 6487
    return-void
.end method

.method public setMultiWindowScale(FF)V
    .locals 0
    .param p1, "hScale"    # F
    .param p2, "vScale"    # F

    .prologue
    .line 9218
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 1415
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 1416
    return-void
.end method

.method public setReportNextDraw()V
    .locals 1

    .prologue
    .line 8338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 8339
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8340
    return-void
.end method

.method public setSkipPanScrollAnimation(ZZ)V
    .locals 0
    .param p1, "bSkipEnter"    # Z
    .param p2, "bSkipExit"    # Z

    .prologue
    .line 3687
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollEnterAnimation:Z

    .line 3688
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mSkipPanScrollExitAnimation:Z

    .line 3689
    return-void
.end method

.method public setTransparentRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 9226
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9229
    :goto_0
    return-void

    .line 9227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUseGestureDetectorEx(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 9246
    sput-boolean p1, Landroid/view/ViewRootImpl;->mUseGestureDetectorTouchEventEx:Z

    .line 9247
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_1a

    .line 731
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 732
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1 mView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 738
    .local v21, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-boolean v4, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforSv:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfo;->bufferCountInfo:I

    :goto_0
    sput v4, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    .line 739
    sget v4, Landroid/view/ViewRootImpl;->sBufferCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 740
    move-object/from16 v0, v21

    iget-boolean v4, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforAct:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfo;->bufferCountInfo:I

    :goto_1
    sput v4, Landroid/view/ViewRootImpl;->sBufferCount:I

    .line 747
    :cond_0
    move-object/from16 v0, v21

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->dtsFactor:D

    sput-wide v4, Landroid/view/ViewRootImpl;->sDTSFactor:D

    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->checkDcs(Landroid/content/pm/PackageInfo;)V

    .line 753
    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    .line 754
    const-string v4, "SRIB_DCSViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sIsDcsEnabledApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Landroid/view/ViewRootImpl;->sIsDcsEnabledApp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sDcsFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/view/ViewRootImpl;->sDcsFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->checkDss()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_2
    :try_start_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_10

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    .line 772
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3

    .line 773
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "window="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    iput v5, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 786
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    .line 788
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 790
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 792
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_5

    .line 793
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_5

    .line 796
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 803
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v4, :cond_6

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getZ()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v24, v0

    .line 805
    .local v24, "surfaceInset":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move/from16 v0, v24

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 808
    .end local v24    # "surfaceInset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    .line 809
    .local v14, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_7

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 816
    :cond_7
    const/16 v23, 0x0

    .line 817
    .local v23, "restore":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_8

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 819
    const/16 v23, 0x1

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 825
    :cond_8
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 826
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 827
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 830
    :cond_9
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 831
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 832
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 835
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_5
    iput v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 837
    if-eqz p3, :cond_a

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 841
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_b

    .line 850
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 856
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v22

    .line 872
    .local v22, "res":I
    if-eqz v23, :cond_c

    .line 873
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 877
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_d

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 880
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 885
    if-gez v22, :cond_14

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 887
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 888
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 890
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 891
    sparse-switch v22, :sswitch_data_0

    .line 932
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 984
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 738
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_e
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 740
    :cond_f
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 762
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v16

    .line 763
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    sget-boolean v4, Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    .line 764
    const-string v4, "SRIB_DBQ_DTS_DCS_DSS_ViewRootImpl"

    const-string/jumbo v5, "setView: Name not found exception caught"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 768
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 834
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "restore":Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 835
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 861
    :catch_1
    move-exception v16

    .line 862
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 863
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 864
    const-string v4, "ViewRootImpl"

    const-string v5, "#2 mView = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 866
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 868
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 869
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 870
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 872
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    if-eqz v23, :cond_13

    .line 873
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_13
    throw v4

    .line 894
    .restart local v22    # "res":I
    :sswitch_0
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 898
    :sswitch_1
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    :sswitch_2
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 906
    :sswitch_3
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 912
    :sswitch_4
    monitor-exit p0

    .line 985
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    :goto_6
    return-void

    .line 914
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "res":I
    .restart local v23    # "restore":Z
    :sswitch_5
    monitor-exit p0

    goto :goto_6

    .line 916
    :sswitch_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- another window of this type already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 920
    :sswitch_7
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- permission denied for this window type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 924
    :sswitch_8
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 928
    :sswitch_9
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified window type is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 936
    :cond_14
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_15

    .line 937
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 940
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_17

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_16

    .line 942
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 945
    :cond_16
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 949
    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 950
    and-int/lit8 v4, v22, 0x1

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 951
    and-int/lit8 v4, v22, 0x2

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 957
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_19

    .line 958
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 962
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    .line 963
    .local v15, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 964
    new-instance v25, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 965
    .local v25, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 967
    .local v19, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 968
    .local v17, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 970
    .local v18, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v26, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 971
    .local v26, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-pre-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 974
    .local v20, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 975
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:pending:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 984
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v17    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    .end local v25    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v26    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_1a
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 950
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "res":I
    .restart local v23    # "restore":Z
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 951
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 891
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_5
        -0xa -> :sswitch_9
        -0x9 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_3
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method setWindowStopped(Z)V
    .locals 1
    .param p1, "stopped"    # Z

    .prologue
    .line 1400
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 1401
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1402
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_0

    .line 1403
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1406
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 8014
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 8019
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 8025
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7719
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7720
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7721
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7722
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1662
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1663
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1673
    return-void
.end method

.method public twProcessTwToolBox(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x0

    .line 4445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move v0, v3

    .line 4461
    :goto_0
    return v0

    .line 4449
    :cond_0
    if-nez p2, :cond_3

    .line 4450
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 4451
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 4452
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 4453
    .local v2, "y":I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;->isContain(II)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 4461
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    goto :goto_0

    .line 4455
    :cond_3
    const/4 v4, 0x1

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    .line 4456
    :cond_4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    .line 4457
    .local v0, "tracking":Z
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mTwToolBoxTracking:Z

    goto :goto_0
.end method

.method public twUpdateToolBox()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4468
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "toolbox_onoff"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    .line 4471
    return-void

    :cond_0
    move v0, v1

    .line 4468
    goto :goto_0
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7494
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 7495
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7496
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7499
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .prologue
    .line 1511
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1513
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1514
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1517
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    .line 3874
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v5}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 3875
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v5}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3876
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3877
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 3880
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3881
    :try_start_0
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 3882
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3881
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3884
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3885
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 3889
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3901
    if-nez p2, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 3902
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    .line 3903
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 3904
    .local v2, "currentLayoutDirection":I
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3905
    if-eq v4, v2, :cond_3

    iget v5, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 3907
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3909
    :cond_3
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3927
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    :cond_4
    return-void

    .line 3884
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public windowFocusChanged(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 7756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZZ)V

    .line 7757
    return-void
.end method

.method public windowFocusChanged(ZZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z
    .param p3, "focusedAppChanged"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7761
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7762
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7763
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7764
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 7766
    if-eqz p3, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7768
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7769
    return-void

    :cond_0
    move v1, v3

    .line 7763
    goto :goto_0

    :cond_1
    move v2, v3

    .line 7764
    goto :goto_1

    .line 7766
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method
