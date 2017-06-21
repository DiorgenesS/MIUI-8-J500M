.class public Lcom/android/internal/policy/MultiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    }
.end annotation


# static fields
.field private static final ACTION_FLOATING_MINIMIZED:Ljava/lang/String; = "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

.field private static final ANIMATION_DURATION_FAST:I = 0xfa

.field private static final CIRCLE_ANIM_OFFSET:J = 0x5L

.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field static final LOGGING_REASON_DOCKING:I = 0x1

.field static final STATE_FLOATING:I = 0x2

.field static final STATE_MINIMIZED_FLOATING:I = 0x4

.field static final STATE_NONE:I = -0x1

.field static final STATE_NORMAL:I = 0x1

.field static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field mContentLayoutGenerated:Z

.field mContentRootContainer:Landroid/view/ViewGroup;

.field mContext:Landroid/content/Context;

.field private mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mCustomMinimizedView:Landroid/view/View;

.field mDismissGuideByDockingCanceled:Z

.field mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDrawableController:Landroid/graphics/drawable/Drawable;

.field mDssScale:F

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field protected mHScale:F

.field mHandler:Landroid/os/Handler;

.field mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field mIsFinishing:Z

.field private mIsForceHideBorder:Z

.field mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsMinimizing:Z

.field mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field final mIsSupportDiagonalResizable:Z

.field private final mIsSupportGuideRectView:Z

.field private final mIsSupportMinimizeAnimation:Z

.field final mIsSupportSimplificationUI:Z

.field mLastHoverIcon:I

.field mLastOrientation:I

.field mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field mMaxSizeRatio:F

.field private mMinSizeRatio:F

.field mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

.field mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field private mPenWindowHeaderVisibilityDeferred:Z

.field final mPowerManager:Landroid/os/PowerManager;

.field mResizablePadding:Landroid/graphics/Rect;

.field private mRotation:I

.field private mSelectiveSizeRatio:F

.field private mSoundPool:Landroid/media/SoundPool;

.field mStackBound:Landroid/graphics/Rect;

.field mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field mTitleBarHeight:I

.field mTmpBound:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field protected mVScale:F

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    .line 125
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    .line 126
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    .line 127
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    .line 128
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_TAB:Z

    .line 129
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    .line 131
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    .line 132
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 134
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 145
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    .line 147
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 152
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 153
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 163
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->NOT_SET:I

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    .line 166
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    .line 172
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 173
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 184
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 185
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 186
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 192
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 193
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 202
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 203
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 204
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 223
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    .line 227
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    .line 232
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 236
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 237
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastHoverIcon:I

    .line 241
    iput v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 249
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 250
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    .line 255
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 256
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 258
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 1115
    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    .line 2506
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2507
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2508
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2670
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 2714
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->userId:I

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportGuideRectViewUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 279
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    .line 281
    new-instance v0, Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initResource()V

    .line 302
    return-void
.end method

.method private StopSmartClipService()V
    .locals 2

    .prologue
    .line 1839
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1840
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_FLOATING_MINIMIZED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1841
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1842
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getResizalbePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsForceHideBorder:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportGuideRectView:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getRestorePenWindowHeaderTimingListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiPhoneWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->animatePenWindowHeaderView(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method private animatePenWindowHeaderView(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1139
    if-eqz p1, :cond_1

    move v1, v2

    .local v1, "fromAlpha":F
    :goto_0
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1140
    .local v2, "toAlpha":F
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1141
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1142
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1143
    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$4;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1149
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1150
    return-void

    .line 1139
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "fromAlpha":F
    .end local v2    # "toAlpha":F
    :cond_1
    const v1, 0x3dcccccd    # 0.1f

    goto :goto_0
.end method

.method private checkRotationNeeded(I)Z
    .locals 7
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    .line 1780
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .line 1781
    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    .line 1782
    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    .line 1783
    .local v3, "rotated":Z
    const/4 v4, 0x0

    .line 1784
    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_2

    .line 1785
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 1787
    :cond_1
    const/4 v4, 0x1

    .line 1790
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    .line 1791
    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    .line 1794
    const/4 v4, 0x0

    .line 1796
    .end local v4    # "rotationNeeded":Z
    :cond_3
    return v4
.end method

.method private dismissWritingBuddy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2473
    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_1

    .line 2485
    :cond_0
    :goto_0
    return-void

    .line 2476
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2477
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2478
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2479
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 2480
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2481
    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method private getExplicitOrientation(I)I
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1800
    packed-switch p1, :pswitch_data_0

    .line 1814
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1805
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1811
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getResizalbePaddingRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1213
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private getRestorePenWindowHeaderTimingListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1117
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    .line 1134
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    return-object v0
.end method

.method private initFocusedView()V
    .locals 1

    .prologue
    .line 1294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1295
    return-void
.end method

.method private initResource()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 1191
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    .line 1192
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1194
    .local v0, "resizePadding":I
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    .line 1196
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 1198
    .end local v0    # "resizePadding":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    .line 1199
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mThickness:I

    .line 1200
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 1202
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v3, 0x1100029

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 1207
    :goto_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    .line 1210
    :cond_1
    return-void

    .line 1204
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method private restoreFocusedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1277
    iget v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1282
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1284
    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private saveFocusedView()V
    .locals 2

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1288
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFocusedViewId:I

    .line 1291
    :cond_0
    return-void
.end method

.method private setStackBoundInScreen(IIZ)V
    .locals 7
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1570
    const/4 v0, 0x0

    .line 1572
    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1573
    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1574
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1576
    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, p1, :cond_0

    .line 1577
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1578
    const/4 v0, 0x1

    .line 1580
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_1

    .line 1581
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1582
    const/4 v0, 0x1

    .line 1585
    :cond_1
    if-nez p3, :cond_4

    .line 1586
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_2

    .line 1587
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1588
    const/4 v0, 0x1

    .line 1590
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_3

    .line 1591
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1592
    const/4 v0, 0x1

    .line 1595
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1596
    .local v3, "tempStackBound":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1597
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1598
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1599
    const/4 v0, 0x1

    .line 1603
    .end local v3    # "tempStackBound":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_5

    .line 1604
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1606
    :cond_5
    return-void
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_0

    .line 2103
    :goto_0
    return-void

    .line 2098
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    .line 2099
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    .line 2102
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2371
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2372
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 2373
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2374
    .local v2, "guideOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2375
    .local v0, "activityOr":I
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v3

    .line 2376
    .local v3, "guideState":I
    if-ne v2, v6, :cond_0

    if-eq v0, v7, :cond_1

    :cond_0
    if-ne v2, v7, :cond_2

    if-ne v0, v6, :cond_2

    .line 2378
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2379
    new-instance v5, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x8d4

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 2380
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2381
    sget-boolean v5, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "re-created mGuideView, guideOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityOr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    .end local v0    # "activityOr":I
    .end local v2    # "guideOr":I
    .end local v3    # "guideState":I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 2386
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2388
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 2391
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2393
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2394
    .local v4, "scaledRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2422
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 2425
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "scaledRect":Landroid/graphics/Rect;
    :cond_3
    return-void
.end method


# virtual methods
.method adjustScaleFactor()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1638
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1639
    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1640
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1641
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1642
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1643
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1644
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1647
    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1648
    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1649
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1653
    .end local v2    # "temp":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    .line 1655
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_4
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1663
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1664
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1666
    :cond_6
    return-void
.end method

.method adjustStackBound(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1669
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v0, v4, 0x3

    .line 1670
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 1671
    .local v1, "boundaryY":I
    const/4 v2, 0x0

    .line 1672
    .local v2, "headerWindowMargin":I
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_0

    .line 1673
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 1674
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050301

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1675
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 1677
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1678
    .local v3, "maxSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1680
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_3

    .line 1681
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1686
    :cond_1
    :goto_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_4

    .line 1687
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1691
    :cond_2
    :goto_1
    return-void

    .line 1682
    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_1

    .line 1683
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1688
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 1689
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method public arrangeScaleStackBound()V
    .locals 9

    .prologue
    .line 1727
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "bChangedStack":Z
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1738
    .local v4, "stackBound":Landroid/graphics/Rect;
    if-eqz v4, :cond_0

    .line 1739
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1740
    .local v3, "requestedOrientation":I
    packed-switch v3, :pswitch_data_0

    .line 1759
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    .line 1761
    .local v2, "oldRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1762
    .local v1, "newRect":Landroid/graphics/Rect;
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_3

    .line 1765
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1767
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1769
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 1771
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1772
    iget-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v5, :cond_0

    .line 1773
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto :goto_0

    .line 1745
    .end local v1    # "newRect":Landroid/graphics/Rect;
    .end local v2    # "oldRect":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1752
    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 1740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method checkMaxStackSize(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v5, v0

    .line 1450
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v4, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    .local v4, "minWidth":I
    move-object v5, v0

    .line 1451
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v3, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    .local v3, "minHeight":I
    move-object v5, v0

    .line 1452
    check-cast v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget v2, v5, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1453
    .local v2, "maxWidth":I
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1456
    .local v1, "maxHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 1457
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1458
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1462
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 1463
    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1464
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1466
    :cond_3
    return-void
.end method

.method public disableMultiWindowFloatingWindow(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2614
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2615
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2616
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2620
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2621
    return-void

    .line 2618
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public disableMultiWindowTrayBar(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2601
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 2602
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2606
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2607
    return-void

    .line 2604
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method public dismissGuide()V
    .locals 1

    .prologue
    .line 2345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    .line 2346
    return-void
.end method

.method public dismissGuide(Z)V
    .locals 1
    .param p1, "doAnim"    # Z

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2350
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    .line 2351
    if-eqz p1, :cond_1

    .line 2352
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismissAfterAnim()V

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2354
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 2355
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1370
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    .line 1372
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1376
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1377
    return-void
.end method

.method public exitByCloseBtn()V
    .locals 4

    .prologue
    .line 2488
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2489
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2491
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2495
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method forceHideInputMethod()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1298
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1300
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .line 1301
    .local v4, "res":Z
    if-eqz v3, :cond_0

    .line 1302
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v4

    .line 1304
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1305
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v1, :cond_1

    move v2, v1

    .line 1307
    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1311
    .local v1, "hardKeyShown":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1312
    const/4 v4, 0x0

    .line 1315
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    :cond_0
    return v4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    move v2, v5

    .line 1305
    goto :goto_0

    .restart local v2    # "haveHardKeyboard":Z
    :cond_2
    move v1, v5

    .line 1307
    goto :goto_1
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 1154
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 1159
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1161
    .local v1, "ret":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1163
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1165
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), local setBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    .line 1173
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 1174
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 1175
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1177
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v2, :cond_1

    .line 1178
    new-instance v2, Lcom/android/internal/policy/multiwindow/Border;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->generatePenWindowLayout()V

    .line 1182
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v2, :cond_2

    .line 1183
    new-instance v2, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x8d4

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 1187
    :cond_2
    return-object v1

    .line 1167
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), bounds is null, mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generatePenWindowLayout()V
    .locals 7

    .prologue
    .line 1217
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_0

    .line 1218
    new-instance v4, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .line 1221
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1243
    :goto_0
    return-void

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1226
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090098

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 1228
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-nez v4, :cond_2

    .line 1229
    new-instance v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .line 1231
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->generateLayout()V

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v4, v1

    .line 1234
    check-cast v4, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 1235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1236
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 1238
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1240
    .end local v0    # "content":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 1242
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto :goto_0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getDisplaySize(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 1380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1384
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1385
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1387
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 1388
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1393
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_0

    .line 1394
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1395
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1396
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 1397
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1398
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1404
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1405
    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1409
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1470
    return-object p0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 1474
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1476
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1478
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1488
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 1489
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1490
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 1492
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1493
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1496
    :cond_0
    const/16 v3, 0x51

    .line 1499
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getProperContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRotationOfStackBound()I
    .locals 1

    .prologue
    .line 2337
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    return v0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2575
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2576
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2577
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    .line 2579
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method getState()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 2106
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2107
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2118
    :goto_0
    :pswitch_0
    return v1

    .line 2111
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2112
    goto :goto_0

    .line 2113
    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2114
    const/4 v1, 0x3

    goto :goto_0

    .line 2116
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 2107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handlePause()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1251
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1254
    const/4 v1, 0x1

    .line 1255
    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1257
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1262
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 1263
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$5;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1274
    .end local v1    # "isScreenOn":Z
    :cond_1
    return-void

    .line 1258
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStackFocus()Z
    .locals 1

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method initStackBound()V
    .locals 3

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1523
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 1525
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1527
    :cond_0
    return-void
.end method

.method protected isFloatingWindow()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1327
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    .line 1329
    const/4 v0, 0x1

    .line 1331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInputMethodShown()Z
    .locals 2

    .prologue
    .line 1319
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1320
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 1323
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRotated(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1335
    packed-switch p1, :pswitch_data_0

    .line 1343
    :goto_0
    :pswitch_0
    return v0

    .line 1338
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTouchBlocked()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 1504
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return v1

    .line 1508
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1509
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1511
    goto :goto_0

    .line 1514
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 1515
    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 4
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 2552
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    .line 2553
    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2560
    :cond_0
    :goto_0
    return-void

    .line 2557
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2558
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public moveStackBound(IIZ)Z
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1696
    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1698
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1700
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1701
    return v0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2535
    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 2543
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2544
    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 2466
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 2567
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2568
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 22
    .param p1, "configDiff"    # I

    .prologue
    .line 1943
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMinMaxSize()V

    .line 1945
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1953
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v7

    .line 1954
    .local v7, "mwState":I
    sget-boolean v18, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v18, :cond_2

    .line 1955
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .line 1957
    .local v10, "preferredOrientation":I
    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFixedOrientation(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1958
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_0

    .line 1966
    .end local v10    # "preferredOrientation":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 1967
    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1968
    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mLastOrientation:I

    .line 1970
    sget-boolean v18, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_3

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->isRotated(I)Z

    move-result v15

    .line 1974
    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 1977
    :cond_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastRotated:Z

    .line 1979
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 1980
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    .line 1986
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    goto/16 :goto_0

    .line 1970
    .end local v15    # "rotated":Z
    :cond_7
    const-string v18, ""

    goto/16 :goto_1

    .line 1990
    .restart local v15    # "rotated":Z
    :cond_8
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 1992
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1997
    :pswitch_1
    const/4 v11, 0x0

    .line 1998
    .local v11, "relativeL":F
    const/4 v13, 0x0

    .line 1999
    .local v13, "relativeT":F
    const/4 v12, 0x0

    .line 2000
    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 2001
    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 2003
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .line 2006
    .local v14, "requestOrientation":I
    if-eqz v14, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    .line 2010
    .local v17, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 2021
    :cond_b
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 2022
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 2023
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_c

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_c

    .line 2024
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    .line 2026
    :cond_c
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 2027
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717    # 5.0E-5f

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2028
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 2029
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2034
    .end local v17    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2038
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2041
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;)V

    .line 2042
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 2043
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2044
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_0

    .line 2031
    :cond_e
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 2050
    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initStackBound()V

    .line 2051
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2053
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 2054
    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 2055
    const/4 v4, 0x0

    .line 2056
    .local v4, "dx":I
    const/4 v5, 0x0

    .line 2057
    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2059
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_13

    .line 2060
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    .line 2064
    :cond_f
    :goto_3
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 2065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 2069
    :cond_10
    :goto_4
    if-nez v4, :cond_11

    if-eqz v5, :cond_12

    .line 2070
    :cond_11
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2072
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2061
    :cond_13
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 2062
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_3

    .line 2066
    :cond_14
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 2067
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_4

    .line 1990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .locals 3
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 2078
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

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

    .line 2080
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2083
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackFocus(Z)V

    .line 2086
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 2087
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->closeAllPanels()V

    .line 2088
    if-nez p3, :cond_3

    .line 2089
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 2092
    :cond_3
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 11
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v8, 0x4

    .line 1845
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldStyle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_0
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_2

    .line 1849
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 1850
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1936
    :cond_1
    :goto_0
    return-void

    .line 1855
    :cond_2
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_8

    .line 1856
    const/high16 v3, 0x20000

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1857
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1858
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    .line 1859
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 1860
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1863
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1864
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1865
    .local v1, "state":I
    if-eq v1, v8, :cond_7

    .line 1866
    if-eq v1, v10, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 1867
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1871
    .end local v1    # "state":I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->StopSmartClipService()V

    goto :goto_0

    .line 1876
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_8
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_a

    .line 1877
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1879
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1881
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeDnDHelpPopup()V
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->access$1400(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    .line 1885
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_b

    .line 1886
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eq v3, v6, :cond_f

    .line 1887
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1894
    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 1895
    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1896
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    .line 1897
    .restart local v1    # "state":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1900
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1901
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1903
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_c

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_c

    .line 1905
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1908
    :cond_c
    if-ne v1, v4, :cond_d

    .line 1909
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    .line 1911
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_e
    move v3, v5

    .line 1887
    goto :goto_1

    .line 1888
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-eq v3, v6, :cond_b

    .line 1889
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 1916
    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1919
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide(Z)V

    .line 1922
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1923
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1925
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_11

    .line 1926
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_11

    .line 1927
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1932
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_1

    .line 1933
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 1934
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshUI(I)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1352
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    .line 1358
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method refreshBorder()V
    .locals 3

    .prologue
    .line 2444
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2445
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 2446
    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z

    if-nez v1, :cond_1

    .line 2447
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 2449
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_2

    .line 2450
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 2451
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2452
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2457
    .end local v0    # "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_2
    :goto_0
    return-void

    .line 2454
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2455
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method refreshUI(I)V
    .locals 10
    .param p1, "forceState"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2169
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2172
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2176
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2177
    const/4 v2, -0x1

    .line 2178
    .local v2, "state":I
    if-eq p1, v9, :cond_5

    .line 2179
    move v2, p1

    .line 2183
    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshUI state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2186
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eq v2, v8, :cond_6

    .line 2187
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v3, :cond_4

    .line 2188
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2197
    :cond_4
    :goto_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2199
    .local v1, "flags":I
    packed-switch v2, :pswitch_data_0

    .line 2291
    :goto_3
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_0

    .line 2292
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 2181
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "flags":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    goto :goto_1

    .line 2191
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_4

    .line 2192
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2193
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_2

    .line 2201
    .restart local v1    # "flags":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_7

    .line 2202
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2204
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_8

    .line 2205
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2206
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_8

    .line 2207
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2211
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2213
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_9

    .line 2214
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2217
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 2223
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v3, :cond_a

    .line 2224
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize function is disabled. do not minimize."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2228
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isMinimizeIconVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2229
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize icon is already visible."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2232
    :cond_b
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    .line 2233
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_c

    .line 2234
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2237
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    if-ne v3, v9, :cond_d

    .line 2238
    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingFlag:I

    .line 2241
    :cond_d
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2243
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_e

    .line 2244
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->showMinimizedIconWindow()V

    .line 2246
    :cond_e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2247
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->saveFocusedView()V

    .line 2248
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2249
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2250
    iput-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizing:Z

    goto/16 :goto_3

    .line 2255
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_f

    .line 2256
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2259
    :cond_f
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2260
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2262
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_10

    .line 2263
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2266
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->restoreFocusedView()V

    .line 2268
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2269
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2274
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_11

    .line 2275
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2277
    :cond_11
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2278
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2279
    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_12

    .line 2280
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2283
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2284
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->initFocusedView()V

    .line 2285
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2286
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_3

    .line 2199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestMaximize()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2320
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2321
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2322
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Minimized->Floating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_0
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2325
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2326
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2327
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2334
    :cond_1
    :goto_0
    return-void

    .line 2329
    :cond_2
    invoke-direct {p0, v3, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    .line 2330
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    .line 2331
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method requestState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2122
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2123
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 2124
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2166
    :cond_1
    :goto_0
    return-void

    .line 2128
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2129
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2133
    :pswitch_1
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2134
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2135
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2136
    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2137
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2138
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2142
    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2143
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2144
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2145
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2146
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2147
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2151
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_2

    .line 2152
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2156
    :cond_2
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2157
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 2158
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2159
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2161
    :cond_3
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2162
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 2126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAppRequestOrientation(I)V
    .locals 4
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1717
    .local v0, "prevOrientation":I
    if-eq v0, p1, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1719
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1720
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppRequestOrientation(), prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_0
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 2521
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2522
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2588
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 2589
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2590
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2591
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2593
    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 2628
    if-nez p1, :cond_0

    .line 2629
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2639
    :goto_0
    return-void

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2632
    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    .line 2634
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_2

    .line 2635
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2637
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 2646
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2667
    :goto_0
    return-void

    .line 2650
    :cond_0
    if-nez p1, :cond_1

    .line 2651
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0

    .line 2653
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2654
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinimizeView : request view is already added >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2657
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_4

    .line 2659
    :cond_3
    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2662
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_5

    .line 2663
    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2665
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    goto :goto_0
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1534
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1539
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 1542
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1544
    const/4 v1, 0x0

    .line 1545
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1547
    :cond_4
    const/4 v1, 0x1

    .line 1549
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1550
    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStackBounds, requestBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1552
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1554
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1555
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_7

    .line 1556
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1557
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1558
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_7

    .line 1559
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1563
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_0

    .line 1564
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method setStackBoundsInternel(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1614
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1615
    const/4 v1, 0x0

    .line 1616
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1617
    :cond_0
    const/4 v1, 0x1

    .line 1619
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1620
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1621
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1622
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1623
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_2

    .line 1624
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1625
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1626
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_2

    .line 1627
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mRotation:I

    .line 1631
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_3

    .line 1632
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .line 1635
    .end local v1    # "sizeChanged":Z
    :cond_3
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2512
    const/4 v0, 0x1

    return v0
.end method

.method public setStateChangeListener2(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2517
    const/4 v0, 0x1

    return v0
.end method

.method public setSubWindow(Landroid/view/Window;)V
    .locals 0
    .param p1, "subWindow"    # Landroid/view/Window;

    .prologue
    .line 2461
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setSubWindow(Landroid/view/Window;)V

    .line 2462
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    .line 2463
    return-void
.end method

.method public showGuide(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 2361
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2366
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 2368
    :cond_1
    return-void
.end method

.method showMinimizedIconWindow()V
    .locals 2

    .prologue
    .line 2297
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v0, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2302
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "showMinimizedIconWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_2

    .line 2305
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_2

    .line 2306
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2310
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2311
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;)V

    goto :goto_0

    .line 2312
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_4

    .line 2313
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    goto :goto_0

    .line 2315
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow()V

    goto :goto_0
.end method

.method updateIsFullScreen()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 2432
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2433
    const/4 v0, 0x0

    .line 2434
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2436
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_1

    .line 2437
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFullScreen:Z

    .line 2441
    .end local v0    # "isFullScreen":Z
    :cond_1
    return-void

    .line 2434
    .restart local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateMinMaxSize()V
    .locals 11

    .prologue
    .line 1413
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1414
    .local v2, "displaySize":Landroid/graphics/Point;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1416
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1417
    .local v3, "displayWidth":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 1419
    .local v1, "displayHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v9, v0

    .line 1421
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v3, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenWidth:I

    move-object v9, v0

    .line 1422
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v1, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mScreenHeight:I

    .line 1424
    const/4 v4, 0x0

    .line 1425
    .local v4, "isSelective":Z
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_0

    .line 1426
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1428
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1429
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1430
    const/4 v4, 0x1

    .line 1435
    :cond_0
    int-to-float v10, v3

    if-eqz v4, :cond_1

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_0
    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 1436
    .local v8, "minWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_2

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1437
    .local v7, "minHeight":I
    int-to-float v10, v3

    if-eqz v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_2
    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1438
    .local v6, "maxWidth":I
    int-to-float v10, v1

    if-eqz v4, :cond_4

    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mSelectiveSizeRatio:F

    :goto_3
    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "maxHeight":I
    move-object v9, v0

    .line 1440
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v8, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinWidth:I

    move-object v9, v0

    .line 1441
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v7, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMinHeight:I

    move-object v9, v0

    .line 1442
    check-cast v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iput v6, v9, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I

    .line 1443
    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iput v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I

    .line 1444
    return-void

    .line 1435
    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    .end local v7    # "minHeight":I
    .end local v8    # "minWidth":I
    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    :cond_1
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_0

    .line 1436
    .restart local v8    # "minWidth":I
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMinSizeRatio:F

    goto :goto_1

    .line 1437
    .restart local v7    # "minHeight":I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_2

    .line 1438
    .restart local v6    # "maxWidth":I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/MultiPhoneWindow;->mMaxSizeRatio:F

    goto :goto_3
.end method

.method updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 4
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v3, 0x1

    .line 1705
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissWritingBuddy()V

    .line 1712
    :cond_1
    return-void
.end method

.method validateStackBound(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1819
    if-nez p1, :cond_0

    move v3, v4

    .line 1835
    :goto_0
    return v3

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1824
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1825
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1827
    .local v1, "screenHeight":I
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v3, v5, :cond_2

    :cond_1
    if-le v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_3

    .line 1829
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1831
    :cond_3
    sget-boolean v3, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v5, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateStackBound "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bound=Point("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", screenSize=("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    .line 1835
    goto/16 :goto_0

    .line 1831
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method
