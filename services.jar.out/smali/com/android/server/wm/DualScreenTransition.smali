.class public Lcom/android/server/wm/DualScreenTransition;
.super Ljava/lang/Object;
.source "DualScreenTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DualScreenTransition$H;,
        Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    }
.end annotation


# static fields
.field public static final COVER_DISPLAY:I = 0x2

.field public static final DEBUG:Z

.field public static final DEBUG_ANIM:Z

.field public static final DEBUG_TRANSFORMS:Z

.field public static final DEBUG_VERBOSE:Z

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x190

.field private static final DEFAULT_APP_TRANSITION_INTERPOLATOR:I = 0x10c0027

.field static final DEV_FREEZE_TIMEOUT:I

.field static final DEV_FREEZE_TRANSITION:Z

.field public static final DEV_MODE_ENABLED:Z

.field static final DEV_MOVE_WINDOWS_ENABLED:Z

.field static final DEV_TRANSIT_DEBUG:Z

.field public static final DIRECTION_FULL_TO_HALF:I = 0x4

.field public static final DIRECTION_HALF_TO_FULL:I = 0x3

.field public static final DIRECTION_MAIN_TO_SUB:I = 0x1

.field public static final DIRECTION_SUB_TO_MAIN:I = 0x2

.field public static final DIRECTION_UNDEFINED:I = -0x1

.field public static DUALSCREEN_VI_ENABLED:Z = false

.field static final FREEZE_LAYER:I = 0xf4240

.field public static final PREFIX_TAG:Ljava/lang/String; = "[DualScreenTransition] "

.field static final SCREEN_COVER_LAYER:I = 0xf4241

.field static final SCREEN_COVER_SURFACE_NANME:Ljava/lang/String; = "ScreenCoverSurface"

.field public static final SYSTEM_PROPERTY_TRANSIT_DEBUG:Ljava/lang/String; = "dev.ds.transit.debug"

.field public static final SYSTEM_PROPERTY_TRANSIT_DURATION:Ljava/lang/String; = "dev.ds.transit.duration"

.field public static final SYSTEM_PROPERTY_TRANSIT_FREEZE:Ljava/lang/String; = "dev.ds.transit.freeze"

.field public static final SYSTEM_PROPERTY_TRANSIT_INTERPOLATOR:Ljava/lang/String; = "dev.ds.transit.interpolator"

.field public static final SYSTEM_PROPERTY_TRANSIT_MOVE_WINDOWS_ENABLED:Ljava/lang/String; = "dev.ds.transit.movewindows"

.field public static final SYSTEM_PROPERTY_TRANSIT_TIMEOUT:Ljava/lang/String; = "dev.ds.transit.timeout"

.field public static final TAG:Ljava/lang/String; = "DualScreenTransition"

.field public static final TRANSIT_DISPLAY_SCALE:I = 0x190

.field public static final TRANSIT_EXPAND:I = 0xc8

.field public static final TRANSIT_FADEOUT:I = 0x3e8

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_SHRINK:I = 0x12c

.field public static final TRANSIT_TARGET_DISPLAY:I = 0x1

.field static final TRANSIT_TARGET_LAYER:I = 0xf4242

.field static final TRANSIT_TARGET_SURFACE_NANME:Ljava/lang/String; = "TransitTargetSurface"

.field public static final TRANSIT_TASK_MOVE:I = 0x64

.field public static final TRANSIT_TIMEOUT:I = -0x1

.field private static final TRANSIT_TYPE_NONE:I = 0x0

.field private static final TRANSIT_TYPE_TRANSLATE:I = 0x65

.field public static final USE_XML_ANIMATION:Z


# instance fields
.field mAnimRunning:Z

.field mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

.field mAnimStageDisplayCurrentRotation:I

.field mAnimStageDisplayHeight:I

.field mAnimStageDisplayOriginalRotation:I

.field mAnimStageDisplayWidth:I

.field private final mContext:Landroid/content/Context;

.field final mCoverInitialMatrix:Landroid/graphics/Matrix;

.field mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

.field mCoveredDisplayCurrentRotation:I

.field mCoveredDisplayHeight:I

.field mCoveredDisplayOriginalRotation:I

.field mCoveredDisplayWidth:I

.field private final mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDevDuration:I

.field private mDevInterpolator:Landroid/view/animation/Interpolator;

.field mFromDisplay:Lcom/android/server/wm/DisplayContent;

.field final mHandler:Lcom/android/server/wm/DualScreenTransition$H;

.field private mMoreTransit:Z

.field private mMoveDirection:I

.field mMovedDimTargetWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMovedWindowsForCoverScreen:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMovedWindowsForTransitTarget:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mNextTransition:I

.field mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

.field mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

.field mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mScreenCoverAnimation:Landroid/view/animation/Animation;

.field mScreenCoverSurface:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSession:Landroid/view/SurfaceSession;

.field mSkipAnimationTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mStarted:Z

.field final mTmpFloats:[F

.field final mTmpFloats2:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToDisplay:Lcom/android/server/wm/DisplayContent;

.field mTransitAnimation:Landroid/view/animation/Animation;

.field mTransitTargetDisplayCurrentRotation:I

.field mTransitTargetDisplayHeight:I

.field mTransitTargetDisplayOriginalRotation:I

.field mTransitTargetDisplayWidth:I

.field mTransitTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTransitTransformation:Landroid/view/animation/Transformation;

.field private mTransitionType:I

.field private mWaitingScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

.field mWatingScreenDrawn:Z

.field private final mWindowAnimator:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    .line 85
    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenManager;->SAFE_DEBUG:Z

    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    .line 93
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_5

    .line 94
    const-string/jumbo v3, "dev.ds.transit.debug"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "freeze":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    sput-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    .line 105
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_6

    :cond_0
    move v3, v4

    :goto_2
    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_ANIM:Z

    .line 106
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_1

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    .line 107
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_2

    :cond_2
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_VERBOSE:Z

    .line 110
    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DUALSCREEN_VI:Z

    sput-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    .line 242
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_a

    .line 243
    const-string/jumbo v3, "dev.ds.transit.movewindows"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 245
    sput-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    .line 253
    :goto_5
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_c

    .line 254
    const-string/jumbo v3, "dev.ds.transit.freeze"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    sput-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TRANSITION:Z

    .line 264
    :goto_6
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_e

    .line 265
    const-string/jumbo v3, "dev.ds.transit.timeout"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "timeout":Ljava/lang/String;
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dev.ds.transit.timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 268
    const/4 v2, -0x1

    .line 270
    .local v2, "timeoutInt":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 273
    :goto_7
    sput v2, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    .line 280
    .end local v1    # "timeout":Ljava/lang/String;
    .end local v2    # "timeoutInt":I
    :goto_8
    return-void

    .end local v0    # "freeze":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 84
    goto/16 :goto_0

    .line 98
    .restart local v0    # "freeze":Ljava/lang/String;
    :cond_4
    sput-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    goto/16 :goto_1

    .line 101
    .end local v0    # "freeze":Ljava/lang/String;
    :cond_5
    sput-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    goto/16 :goto_1

    .line 105
    .restart local v0    # "freeze":Ljava/lang/String;
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_TRANSIT_DEBUG:Z

    if-nez v3, :cond_0

    move v3, v5

    goto/16 :goto_2

    :cond_7
    move v3, v5

    .line 106
    goto/16 :goto_3

    :cond_8
    move v3, v5

    .line 107
    goto :goto_4

    .line 247
    :cond_9
    sput-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    goto :goto_5

    .line 250
    :cond_a
    sput-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    goto :goto_5

    .line 258
    :cond_b
    sput-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TRANSITION:Z

    goto :goto_6

    .line 261
    :cond_c
    sput-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TRANSITION:Z

    goto :goto_6

    .line 275
    .restart local v1    # "timeout":Ljava/lang/String;
    :cond_d
    sput v7, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    goto :goto_8

    .line 278
    .end local v1    # "timeout":Ljava/lang/String;
    :cond_e
    sput v7, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    goto :goto_8

    .line 271
    .restart local v1    # "timeout":Ljava/lang/String;
    .restart local v2    # "timeoutInt":I
    :catch_0
    move-exception v3

    goto :goto_7
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;I)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "transition"    # I

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    .line 128
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    .line 153
    new-instance v0, Lcom/android/server/wm/DualScreenTransition$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DualScreenTransition$H;-><init>(Lcom/android/server/wm/DualScreenTransition;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    .line 221
    iput-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 223
    iput-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 224
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    .line 225
    iput-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    .line 227
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    .line 228
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    .line 229
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 232
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    .line 238
    iput-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_2

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " windowAnimator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    .line 293
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " animStageDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mContext:Landroid/content/Context;

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    .line 304
    iput-object p2, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    .line 305
    iput-object p3, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    .line 306
    iput-object p4, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    .line 307
    iput p5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    .line 309
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DualScreenTransition;->setTransition(I)V

    .line 311
    if-eq p5, v5, :cond_5

    const/16 v0, 0xc8

    if-eq p5, v0, :cond_5

    const/16 v0, 0x12c

    if-eq p5, v0, :cond_5

    const/16 v0, 0x190

    if-eq p5, v0, :cond_5

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid transition. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_5
    if-ne p5, v5, :cond_6

    .line 319
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    .line 321
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->selectMoveDirection(II)V

    .line 322
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DualScreenTransition;->updateWaitingScreens(I)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mContext:Landroid/content/Context;

    const v1, 0x10c0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 327
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating DualScreenTransition. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 331
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor : transitionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DualScreenTransition;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DualScreenTransition;->directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEV_MODE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor : from d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (anim stage d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    return-object v0
.end method

.method private canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "allWindows"    # Lcom/android/server/wm/WindowList;
    .param p2, "target"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 377
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 378
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 422
    :cond_1
    :goto_0
    return v3

    .line 385
    :cond_2
    const/4 v0, 0x0

    .line 386
    .local v0, "added":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_8

    .line 387
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 388
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v8, :cond_4

    .line 389
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 390
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : skip starting win... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 395
    :cond_4
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-lt v4, v5, :cond_5

    .line 396
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 397
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : skip higher layer than top ... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 402
    :cond_5
    if-nez v0, :cond_7

    .line 403
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v4, v5, :cond_7

    .line 404
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 405
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : add token to mSkipAnimationTokens ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v0, 0x1

    .line 412
    :cond_7
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v7, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v7, :cond_3

    .line 415
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_3

    goto/16 :goto_0

    .line 422
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private checkMoveDirectionType(II)I
    .locals 3
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 354
    if-ne p2, v1, :cond_2

    .line 355
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_5

    .line 356
    :cond_0
    const/4 v0, 0x3

    .line 367
    :cond_1
    :goto_0
    return v0

    .line 358
    :cond_2
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-eq p2, v2, :cond_3

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 359
    :cond_3
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 360
    const/4 v0, 0x4

    goto :goto_0

    .line 361
    :cond_4
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 364
    goto :goto_0

    .line 367
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private clearDualScreenTransitionAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2026
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDualScreenTransitionAnimation()   caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2030
    iput-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    .line 2033
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 2034
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2035
    iput-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 2038
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2042
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2043
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2046
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    .line 2047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    .line 2048
    iput-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2049
    return-void
.end method

.method private clearMovedWindows(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1917
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1918
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1919
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1920
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_2

    .line 1921
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1923
    .local v5, "w":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1924
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1925
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearMovedWindows() set layer order to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1928
    :catch_0
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1930
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearMovedWindows() Surface is already released. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1936
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    .end local v4    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V
    .locals 7
    .param p1, "allWindows"    # Lcom/android/server/wm/WindowList;
    .param p3, "targetLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowList;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "outWindowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    const/4 v6, 0x3

    .line 622
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 623
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 627
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_2

    .line 628
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 629
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : skip adding... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_2
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, p3, :cond_1

    .line 635
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    .line 636
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 637
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() :  mAnimLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBaseLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_3
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_5

    .line 650
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 655
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 657
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... mDimHasWindowsFrontTransitTarget win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... dimLayer.mAnimLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 652
    :cond_5
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_1

    .line 664
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 665
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : skip adding... (no SurfaceControl) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    return-void
.end method

.method private static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 1286
    packed-switch p0, :pswitch_data_0

    .line 1303
    :goto_0
    return-void

    .line 1288
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 1291
    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1292
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1295
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1296
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1299
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1300
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;
    .locals 22
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "screenshotMaxLayer"    # I
    .param p6, "screenshotMinLayer"    # I

    .prologue
    .line 1220
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_1

    .line 1221
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "displayContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1225
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1226
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createSurface() d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_2
    const/4 v2, 0x0

    .line 1234
    .local v2, "createdSurfaceControl":Landroid/view/SurfaceControl;
    const/16 v19, 0x0

    .line 1235
    .local v19, "isSecure":Z
    const/4 v8, 0x4

    .line 1236
    .local v8, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 1238
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v20, :cond_3

    .line 1239
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v16

    .line 1240
    .local v16, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1241
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1242
    .local v21, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_8

    .line 1243
    const/16 v19, 0x1

    .line 1248
    .end local v16    # "N":I
    .end local v18    # "i":I
    .end local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_3
    if-eqz v19, :cond_4

    .line 1249
    or-int/lit16 v8, v8, 0x80

    .line 1251
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_9

    .line 1252
    :cond_5
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    .end local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 1260
    .restart local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    :goto_1
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 1261
    .local v10, "sur":Landroid/view/Surface;
    invoke-virtual {v10, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1262
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17

    .line 1263
    .local v17, "builtInDisplayId":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    .line 1265
    .local v9, "displayToken":Landroid/os/IBinder;
    if-eqz v9, :cond_7

    .line 1266
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createSurface() screenshot! builtInDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p6

    move/from16 v14, p5

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 1272
    :cond_7
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 1274
    return-object v2

    .line 1240
    .end local v9    # "displayToken":Landroid/os/IBinder;
    .end local v10    # "sur":Landroid/view/Surface;
    .end local v17    # "builtInDisplayId":I
    .restart local v16    # "N":I
    .restart local v18    # "i":I
    .restart local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1255
    .end local v16    # "N":I
    .end local v18    # "i":I
    .end local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_9
    new-instance v2, Landroid/view/SurfaceControl;

    .end local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .restart local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_1
.end method

.method private static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 1279
    sub-int v0, p1, p0

    .line 1280
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 1281
    :cond_0
    return v0
.end method

.method public static getFreezeTimeOut()I
    .locals 3

    .prologue
    .line 1481
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    if-lez v0, :cond_1

    .line 1482
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFreezeTimeOut() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    sget v0, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TIMEOUT:I

    .line 1486
    :goto_0
    return v0

    .line 1485
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DualScreenTransition"

    const-string/jumbo v1, "getFreezeTimeOut() 6000"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_2
    const/16 v0, 0x1770

    goto :goto_0
.end method

.method private getHighestAppWindowTokenLayer(Lcom/android/server/wm/AppWindowToken;)I
    .locals 5
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 2320
    const/4 v1, -0x1

    .line 2321
    .local v1, "ret":I
    if-nez p1, :cond_0

    move v2, v1

    .line 2330
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 2325
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2326
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v4, :cond_1

    .line 2327
    iget v1, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1

    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    move v2, v1

    .line 2330
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method private getMinLayer(Ljava/util/HashMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gez v5, :cond_2

    .line 779
    :cond_0
    const/4 v3, -0x1

    .line 796
    :cond_1
    :goto_0
    return v3

    .line 782
    :cond_2
    const v3, 0x7fffffff

    .line 784
    .local v3, "minLayer":I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 785
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 786
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 788
    .local v4, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMinLayer() : checking... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", layer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v5, v3, :cond_3

    .line 791
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_1

    .line 795
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMinLayer() return minLayer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;
    .locals 7
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 803
    if-nez p1, :cond_1

    .line 804
    const/4 v2, 0x0

    .line 824
    :cond_0
    return-object v2

    .line 807
    :cond_1
    const/4 v1, 0x0

    .line 808
    .local v1, "tempMaxLayer":I
    const/4 v2, 0x0

    .line 810
    .local v2, "top":Lcom/android/server/wm/WindowState;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 811
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 812
    sget-boolean v4, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 813
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTopWindow() : skip... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    :cond_3
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v4, :cond_2

    .line 819
    iget v1, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 820
    move-object v2, v3

    goto :goto_0
.end method

.method private getTransitTargetHeightOnAnimStage()I
    .locals 2

    .prologue
    .line 2303
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage(II)I

    move-result v0

    return v0
.end method

.method private getTransitTargetHeightOnAnimStage(II)I
    .locals 1
    .param p1, "transitTargetDisplayWidth"    # I
    .param p2, "transitTargetDisplayHeight"    # I

    .prologue
    .line 2307
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move p1, p2

    .line 2315
    .end local p1    # "transitTargetDisplayWidth":I
    :pswitch_1
    return p1

    .line 2307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransitTargetWidthOnAnimStage()I
    .locals 2

    .prologue
    .line 2286
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage(II)I

    move-result v0

    return v0
.end method

.method private getTransitTargetWidthOnAnimStage(II)I
    .locals 1
    .param p1, "transitTargetDisplayWidth"    # I
    .param p2, "transitTargetDisplayHeight"    # I

    .prologue
    .line 2290
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move p2, p1

    .line 2298
    .end local p2    # "transitTargetDisplayHeight":I
    :pswitch_1
    return p2

    .line 2290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasAnimations()Z
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveWindowsToFront(Ljava/util/HashMap;I)V
    .locals 9
    .param p2, "targetLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 592
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveWindowsToFront() caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 596
    :cond_1
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveWindowsToFront() windowsMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_2
    return-void

    .line 600
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 601
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 602
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 603
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_4

    .line 604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 605
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/2addr v6, p2

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 606
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_5

    .line 610
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 614
    :goto_1
    const v6, 0xf4243

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskStack;->setDimLayer(I)V

    goto :goto_0

    .line 612
    :cond_5
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    goto :goto_1
.end method

.method private removeMovedWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMovedWindow() : removing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mFromDisplayWindowMapFrontTransitTarget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DualScreenTransition;->removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 681
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMovedWindow() : removing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mCoveredDisplayWindowMapFrontTransitTarget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DualScreenTransition;->removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    const/4 v3, 0x0

    .line 690
    .local v3, "removeTarget":Landroid/view/SurfaceControl;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 695
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    const/4 v4, 0x0

    .line 696
    .local v4, "tmpWin":Lcom/android/server/wm/WindowState;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpWin":Lcom/android/server/wm/WindowState;
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 698
    .restart local v4    # "tmpWin":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 699
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMovedWindowLockedInner() : checking... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_3
    if-ne v4, p1, :cond_2

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "removeTarget":Landroid/view/SurfaceControl;
    check-cast v3, Landroid/view/SurfaceControl;

    .restart local v3    # "removeTarget":Landroid/view/SurfaceControl;
    goto :goto_1

    .line 706
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    :cond_4
    if-eqz v3, :cond_0

    .line 707
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 708
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMovedWindowLockedInner() : removed... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_5
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 715
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeTransitTargetWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 758
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 759
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeTransitTargetWindowLocked() : removing... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    const/4 v2, 0x0

    .line 763
    .local v2, "targetInfo":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 764
    .local v1, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_1

    .line 765
    move-object v2, v1

    .line 770
    .end local v1    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 773
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 775
    :cond_3
    return-void
.end method

.method private selectMoveDirection(II)V
    .locals 1
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DualScreenTransition;->checkMoveDirectionType(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    .line 342
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V
    .locals 14
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "layer"    # I
    .param p7, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2187
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_ANIM:Z

    if-eqz v9, :cond_0

    .line 2188
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setTransitTransformInTransaction() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " matrix="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alpha="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " caller="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_0
    if-nez p1, :cond_2

    .line 2283
    :cond_1
    :goto_0
    return-void

    .line 2197
    :cond_2
    iget v9, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v10, 0x190

    if-ne v9, v10, :cond_7

    .line 2198
    if-eqz p7, :cond_7

    .line 2199
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int p6, p6, v9

    .line 2200
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    .line 2201
    const/4 v6, 0x0

    .line 2202
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_b

    .line 2203
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 2207
    :goto_1
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->getDimLayer(Lcom/android/server/wm/WindowState;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/wm/TaskStack;->setDimLayer(I)V

    .line 2210
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_4

    .line 2211
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applied window transformations prior to applying animation matrix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2214
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x2

    aget v3, v9, v10

    .line 2215
    .local v3, "px":F
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x5

    aget v4, v9, v10

    .line 2217
    .local v4, "py":F
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_5

    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  anim matrix position ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_5
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_6

    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  window matrix position ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_6
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    mul-float p3, p3, v9

    .line 2222
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x2

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    add-float/2addr v11, v3

    aput v11, v9, v10

    .line 2223
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x5

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    add-float/2addr v11, v4

    aput v11, v9, v10

    .line 2224
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x0

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2225
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x3

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2226
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x1

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2227
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    const/4 v10, 0x4

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2228
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats2:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2229
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 2233
    .end local v3    # "px":F
    .end local v4    # "py":F
    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2235
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x2

    aget v7, v9, v10

    .line 2236
    .local v7, "x":F
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x5

    aget v8, v9, v10

    .line 2237
    .local v8, "y":F
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_8

    if-eqz p7, :cond_8

    .line 2238
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set alpha to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set position to ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set matrix to  matrix=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_8
    :try_start_0
    invoke-virtual {p1, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 2248
    iget-object v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTmpFloats:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 2251
    const/4 v9, 0x0

    cmpl-float v9, p3, v9

    if-ltz v9, :cond_9

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, p3, v9

    if-gtz v9, :cond_9

    .line 2252
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 2254
    :cond_9
    if-lez p6, :cond_a

    .line 2255
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2258
    :cond_a
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_1

    .line 2260
    if-eqz p7, :cond_c

    .line 2261
    const/4 v9, 0x4

    new-array v5, v9, [F

    const/4 v9, 0x0

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    aput v10, v5, v9

    const/4 v9, 0x1

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    aput v10, v5, v9

    const/4 v9, 0x2

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    aput v10, v5, v9

    const/4 v9, 0x3

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    aput v10, v5, v9

    .line 2270
    .local v5, "srcPnts":[F
    :goto_2
    const/4 v9, 0x4

    new-array v1, v9, [F

    .line 2271
    .local v1, "dstPnts":[F
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 2272
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Original  : ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")-("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transformed: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")-("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2277
    .end local v1    # "dstPnts":[F
    .end local v5    # "srcPnts":[F
    :catch_0
    move-exception v2

    .line 2278
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 2279
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Surface is already released. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2205
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_b
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    goto/16 :goto_1

    .line 2266
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_c
    const/4 v9, 0x4

    :try_start_1
    new-array v5, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v5, v9

    const/4 v9, 0x2

    move/from16 v0, p4

    int-to-float v10, v0

    aput v10, v5, v9

    const/4 v9, 0x3

    move/from16 v0, p5

    int-to-float v10, v0

    aput v10, v5, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "srcPnts":[F
    goto/16 :goto_2
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JF)Z
    .locals 8
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2121
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2122
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation() animationScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 2178
    :goto_0
    return v3

    .line 2128
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-eqz v5, :cond_2

    move v3, v4

    .line 2129
    goto :goto_0

    .line 2132
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    .line 2134
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 2135
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation mTransitionType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMoveDirection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2140
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2143
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage()I

    move-result v2

    .line 2144
    .local v2, "transitTargetWidthOnAnimStage":I
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage()I

    move-result v1

    .line 2145
    .local v1, "transitTargetHeightOnAnimStage":I
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 2146
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTransitTargetDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetWidthOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetHeightOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->loadAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 2156
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 2157
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load animation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_6
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    if-lez v5, :cond_8

    .line 2161
    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    add-int/lit16 v0, v5, 0x3e8

    .line 2162
    .local v0, "maxDuration":I
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2163
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2164
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 2165
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    .end local v0    # "maxDuration":I
    :cond_7
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    move v3, v4

    .line 2178
    goto/16 :goto_0

    .line 2168
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2169
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2170
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 2171
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stepAnimation(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 2083
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_ANIM:Z

    if-eqz v3, :cond_0

    .line 2084
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: mTransitAnimation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    .line 2088
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1

    .line 2089
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    .line 2090
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_1

    .line 2091
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped dual screen transit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    if-nez v3, :cond_3

    .line 2095
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 2096
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DualScreenTransition"

    const-string v4, "Transit animations done, clearing transit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 2098
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 2099
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 2103
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    .line 2105
    .local v2, "more":Z
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2106
    .local v1, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_4

    .line 2107
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final transit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTransitInitialMatrix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_4
    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 2112
    .end local v1    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG_ANIM:Z

    if-eqz v3, :cond_6

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_6
    return v2
.end method

.method public static transitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 2392
    sparse-switch p0, :sswitch_data_0

    .line 2415
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 2394
    :sswitch_0
    const-string v0, "TRANSIT_TIMEOUT"

    goto :goto_0

    .line 2397
    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 2400
    :sswitch_2
    const-string v0, "TRANSIT_TASK_MOVE"

    goto :goto_0

    .line 2403
    :sswitch_3
    const-string v0, "TRANSIT_EXPAND"

    goto :goto_0

    .line 2406
    :sswitch_4
    const-string v0, "TRANSIT_SHRINK"

    goto :goto_0

    .line 2409
    :sswitch_5
    const-string v0, "TRANSIT_FADEOUT"

    goto :goto_0

    .line 2412
    :sswitch_6
    const-string v0, "TRANSIT_DISPLAY_SCALE"

    goto :goto_0

    .line 2392
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_6
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateDisplayInfos()V
    .locals 15

    .prologue
    .line 1140
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1141
    .local v8, "transitTargetDisplay":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    .line 1142
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayCurrentRotation:I

    .line 1144
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1145
    .local v10, "transitTargetDisplayInfo":Landroid/view/DisplayInfo;
    iget v11, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1146
    .local v11, "transitTargetDisplayWidth":I
    iget v9, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1148
    .local v9, "transitTargetDisplayHeight":I
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    .line 1150
    :cond_0
    iput v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    .line 1151
    iput v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    .line 1156
    :goto_0
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1157
    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 1158
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mTransitTargetDisplayWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalTransitTargetDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_1
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v12, :cond_3

    .line 1169
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1170
    .local v4, "coveredDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    .line 1171
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    .line 1173
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 1174
    .local v6, "coveredDisplayInfo":Landroid/view/DisplayInfo;
    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1175
    .local v7, "coveredDisplayWidth":I
    iget v5, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1177
    .local v5, "coveredDisplayHeight":I
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    .line 1179
    :cond_2
    iput v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    .line 1180
    iput v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    .line 1185
    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1186
    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 1187
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalCoveredDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mCoveredDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .end local v4    # "coveredDisplay":Landroid/view/Display;
    .end local v5    # "coveredDisplayHeight":I
    .end local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "coveredDisplayWidth":I
    :cond_3
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1195
    .local v0, "animStageDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayOriginalRotation:I

    .line 1196
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayOriginalRotation:I

    iput v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    .line 1198
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1199
    .local v2, "animStageDisplayInfo":Landroid/view/DisplayInfo;
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1200
    .local v3, "animStageDisplayWidth":I
    iget v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1202
    .local v1, "animStageDisplayHeight":I
    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    iget v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    .line 1204
    :cond_4
    iput v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    .line 1205
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    .line 1210
    :goto_2
    iget-object v12, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1211
    sget-boolean v12, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v12, :cond_5

    .line 1212
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalAnimStageDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/DualScreenTransition;->mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_5
    return-void

    .line 1153
    .end local v0    # "animStageDisplay":Landroid/view/Display;
    .end local v1    # "animStageDisplayHeight":I
    .end local v2    # "animStageDisplayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "animStageDisplayWidth":I
    :cond_6
    iput v11, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    .line 1154
    iput v9, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    goto/16 :goto_0

    .line 1182
    .restart local v4    # "coveredDisplay":Landroid/view/Display;
    .restart local v5    # "coveredDisplayHeight":I
    .restart local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "coveredDisplayWidth":I
    :cond_7
    iput v7, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    .line 1183
    iput v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    goto/16 :goto_1

    .line 1207
    .end local v4    # "coveredDisplay":Landroid/view/Display;
    .end local v5    # "coveredDisplayHeight":I
    .end local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "coveredDisplayWidth":I
    .restart local v0    # "animStageDisplay":Landroid/view/Display;
    .restart local v1    # "animStageDisplayHeight":I
    .restart local v2    # "animStageDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "animStageDisplayWidth":I
    :cond_8
    iput v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    .line 1208
    iput v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    goto :goto_2
.end method


# virtual methods
.method addTransitTargetLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 9
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 721
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 725
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 726
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 727
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTarget() : skip adding... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    .line 732
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 733
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : adding... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() :  mAnimLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBaseLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0xf4242

    iget v4, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 744
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 745
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : skip adding... (no SurfaceControl) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 750
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    return-void
.end method

.method canOverrideTransition(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)Z
    .locals 8
    .param p1, "newTransition"    # I
    .param p2, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1010
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1011
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canOverrideTransition() : currentTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v7}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAnimating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->isAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DualScreenTransition;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1035
    :cond_1
    :goto_0
    return v3

    .line 1022
    :cond_2
    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 1023
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->checkMoveDirectionType(II)I

    move-result v1

    .line 1024
    .local v1, "moveDirectionType":I
    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_3
    move v3, v4

    .line 1026
    goto :goto_0

    .line 1028
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 1029
    .local v2, "prevToDisplayId":I
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 1030
    .local v0, "currentFromDisplayId":I
    const/16 v5, 0x12c

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, v0, :cond_1

    move v3, v4

    .line 1031
    goto :goto_0
.end method

.method public directionToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2432
    packed-switch p1, :pswitch_data_0

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2434
    :pswitch_0
    const-string v0, "DIRECTION_MAIN_TO_SUB"

    goto :goto_0

    .line 2436
    :pswitch_1
    const-string v0, "DIRECTION_SUB_TO_MAIN"

    goto :goto_0

    .line 2432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method dismiss(Landroid/view/SurfaceSession;JF)Z
    .locals 4
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F

    .prologue
    const/4 v0, 0x0

    .line 1454
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DualScreenTransition"

    const-string v2, "Dismiss!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DUALSCREEN_VI_ENABLED:Z

    if-nez v1, :cond_2

    .line 1457
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! does not support DUALSCREEN_VI"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_1
    :goto_0
    return v0

    .line 1461
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1462
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1463
    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! mTransitTargetSurfaceControls.size()=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-nez v1, :cond_4

    .line 1469
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DualScreenTransition;->startAnimation(Landroid/view/SurfaceSession;JF)Z

    .line 1472
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-nez v1, :cond_5

    .line 1473
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! animation is not started"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1477
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    if-eqz v0, :cond_0

    .line 2446
    const-string v0, "  mNextTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2447
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v0}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    if-eqz v0, :cond_1

    .line 2450
    const-string v0, "  mTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2451
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2453
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2459
    :goto_0
    return-void

    .line 2455
    :pswitch_0
    const-string v0, "  mMoveDirection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2456
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DualScreenTransition;->directionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2453
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method freezeForTransitionLocked(Lcom/android/server/wm/AppWindowToken;Z)V
    .locals 38
    .param p1, "transitTargetAtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "inTransaction"    # Z

    .prologue
    .line 829
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 830
    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "freezeForTransition() callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() already has screenshots"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->updateDisplayInfos()V

    .line 840
    if-nez p2, :cond_2

    .line 843
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 848
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_e

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit8 v37, v2, -0x1

    .line 852
    .local v37, "topWindowLayer":I
    const/16 v35, 0x0

    .line 853
    .local v35, "screenshotMinLayer":I
    move/from16 v16, v37

    .line 854
    .local v16, "screenshotMaxLayerForCoveredDisplay":I
    move/from16 v7, v37

    .line 855
    .local v7, "screenshotMaxLayerForFromDisplay":I
    const/16 v34, 0x0

    .line 857
    .local v34, "moveWindowsToFront":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 858
    :cond_3
    if-eqz p1, :cond_4

    .line 859
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v36

    .line 860
    .local v36, "topWindow":Lcom/android/server/wm/WindowState;
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v2, :cond_4

    if-eqz v36, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/DualScreenTransition;->canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 863
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() : moveWindowsToFront|=TRANSIT_TARGET_DISPLAY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, v36

    iget v7, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 865
    or-int/lit8 v34, v34, 0x1

    .line 869
    .end local v36    # "topWindow":Lcom/android/server/wm/WindowState;
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayCurrentRotation:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    if-ne v2, v3, :cond_5

    .line 871
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() : moveWindowsToFront|=COVER_DISPLAY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    or-int/lit8 v34, v34, 0x2

    .line 877
    :cond_5
    const/4 v9, 0x0

    .line 878
    .local v9, "transitTargetCapture":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v4, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v9

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 894
    and-int/lit8 v2, v34, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v7}, Lcom/android/server/wm/DualScreenTransition;->collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v3, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 899
    :cond_6
    const v10, 0xf4242

    .line 900
    .local v10, "transitTargetLayer":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 901
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->getHighestAppWindowTokenLayer(Lcom/android/server/wm/AppWindowToken;)I

    move-result v2

    add-int/lit16 v10, v2, 0x3e8

    .line 903
    :cond_7
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 904
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->show()V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_9

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v13, "ScreenCoverSurface"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v18

    .line 915
    .local v18, "screenCoverSurface":Landroid/view/SurfaceControl;
    and-int/lit8 v2, v34, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/wm/DualScreenTransition;->collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    const v3, 0xf4241

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 920
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 922
    const v2, 0xf4242

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v17, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v19, 0xf4242

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v23

    invoke-direct/range {v17 .. v23}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :goto_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl;->show()V

    .line 935
    .end local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 993
    .end local v7    # "screenshotMaxLayerForFromDisplay":I
    .end local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v10    # "transitTargetLayer":I
    .end local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .end local v34    # "moveWindowsToFront":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/wm/DualScreenTransition;->getFreezeTimeOut()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DualScreenTransition$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    :goto_2
    if-nez p2, :cond_b

    .line 1001
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1006
    :cond_b
    return-void

    .line 927
    .restart local v7    # "screenshotMaxLayerForFromDisplay":I
    .restart local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .restart local v10    # "transitTargetLayer":I
    .restart local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .restart local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    .restart local v34    # "moveWindowsToFront":I
    .restart local v35    # "screenshotMinLayer":I
    .restart local v37    # "topWindowLayer":I
    :cond_c
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 930
    const v2, 0xf4241

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 996
    .end local v7    # "screenshotMaxLayerForFromDisplay":I
    .end local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v10    # "transitTargetLayer":I
    .end local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .end local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    .end local v34    # "moveWindowsToFront":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :catch_0
    move-exception v33

    .line 997
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    const-string v2, "DualScreenTransition"

    const-string v3, "Unable to allocate freeze surface"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1000
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    if-nez p2, :cond_d

    .line 1001
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_d
    throw v2

    .line 936
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_f

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v37

    .line 938
    .restart local v37    # "topWindowLayer":I
    move/from16 v0, v37

    mul-int/lit16 v2, v0, 0x2710

    add-int/lit8 v24, v2, -0x1

    .line 939
    .local v24, "screenshotMaxLayer":I
    const/16 v35, 0x0

    .line 946
    .restart local v35    # "screenshotMinLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    const-string v21, "ScreenCoverSurface"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    move/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v25}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    const v3, 0xf4241

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    goto/16 :goto_1

    .line 955
    .end local v24    # "screenshotMaxLayer":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_10

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v37

    .line 957
    .restart local v37    # "topWindowLayer":I
    move/from16 v0, v37

    mul-int/lit16 v2, v0, 0x2710

    add-int/lit8 v24, v2, -0x1

    .line 958
    .restart local v24    # "screenshotMaxLayer":I
    const/16 v35, 0x0

    .line 965
    .restart local v35    # "screenshotMinLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    const-string v21, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    move/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v25}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v26

    .line 968
    .local v26, "transitTargetSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 969
    const v2, 0xf4242

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 970
    invoke-virtual/range {v26 .. v26}, Landroid/view/SurfaceControl;->show()V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v25, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v27, 0xf4242

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v31

    invoke-direct/range {v25 .. v31}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    goto/16 :goto_1

    .line 976
    .end local v24    # "screenshotMaxLayer":I
    .end local v26    # "transitTargetSurfaceControl":Landroid/view/SurfaceControl;
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_a

    .line 977
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->addTransitTargetLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v32

    .line 980
    .local v32, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v36

    .line 981
    .restart local v36    # "topWindow":Lcom/android/server/wm/WindowState;
    if-eqz v36, :cond_a

    .line 982
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v37, v0

    .line 984
    .restart local v37    # "topWindowLayer":I
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/wm/DualScreenTransition;->collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v3, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->moveWindowsToFront(Ljava/util/HashMap;I)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method getDimLayer(Lcom/android/server/wm/WindowState;)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const v0, 0xf4242

    .line 552
    if-eqz p1, :cond_0

    .line 553
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 555
    :cond_0
    return v0
.end method

.method getFromScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method getToScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method getTransition()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    return v0
.end method

.method getWaitingAppTokenDrawn()Lcom/android/server/wm/AppWindowToken;
    .locals 3

    .prologue
    .line 472
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWaitingAppTokenDrawn() : mWatingAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method getWaitingScreenDrawn()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    sget-boolean v3, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/DualScreen;

    .line 507
    .local v2, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 508
    .local v0, "di":Landroid/view/DisplayInfo;
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWaitingScreenDrawn() : waitingDisplay d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    return-object v3
.end method

.method hasScreenshot()Z
    .locals 5

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 455
    .local v1, "transitTargetSize":I
    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 456
    .local v0, "hasScreenshot":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 457
    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasScreenshot() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitTargetSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    return v0

    .line 455
    .end local v0    # "hasScreenshot":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->hasAnimations()Z

    move-result v0

    return v0
.end method

.method public isAppTransitAnimAllowed(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 560
    const/4 v0, 0x1

    .line 561
    .local v0, "appTransitAnimAllowed":Z
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 562
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAppTransitAnimAllowed() caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    packed-switch v1, :pswitch_data_0

    .line 576
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 577
    const/4 v0, 0x0

    .line 581
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 582
    const-string v2, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAppTransitAnimAllowed() : basic app transition is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_5

    const-string v1, " "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "allowed for d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_2
    return v0

    .line 566
    :pswitch_0
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 567
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 569
    :cond_4
    const/4 v0, 0x0

    .line 571
    goto :goto_0

    .line 582
    :cond_5
    const-string v1, " not "

    goto :goto_1

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method isFullToHalfTransition()Z
    .locals 2

    .prologue
    .line 434
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullViewMoveTransition()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHalfToFullTransition()Z
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kill(Z)V
    .locals 12
    .param p1, "inTransaction"    # Z

    .prologue
    .line 1940
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill!  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v8}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  caller=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_0
    monitor-enter p0

    .line 1942
    if-nez p1, :cond_1

    .line 1945
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1951
    :cond_1
    const/16 v6, 0x64

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1952
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->getMinLayer(Ljava/util/HashMap;)I

    move-result v3

    .line 1953
    .local v3, "minLayer":I
    if-lez v3, :cond_3

    .line 1954
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_2

    .line 1955
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1957
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v4, v6, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    .line 1958
    .local v4, "transitTargetCapture":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_3

    .line 1959
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1962
    .end local v4    # "transitTargetCapture":Landroid/view/SurfaceControl;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->clearMovedWindows(Ljava/util/HashMap;)V

    .line 1963
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->clearMovedWindows(Ljava/util/HashMap;)V

    .line 1968
    .end local v3    # "minLayer":I
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    .local v2, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    const/16 v6, 0xc8

    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v6

    if-nez v6, :cond_6

    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1972
    :cond_6
    iget-object v5, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    .line 1973
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1974
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1975
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1976
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v9, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1981
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1982
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set layer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set alpha to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set position to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set matrix to  matrix=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1997
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1999
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Surface is already released. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2012
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :catchall_0
    move-exception v6

    if-nez p1, :cond_7

    .line 2013
    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2017
    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2018
    iget-object v7, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 2020
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->clearDualScreenTransitionAnimation()V

    throw v6

    .line 2022
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1964
    :cond_8
    const/16 v6, 0x190

    :try_start_5
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1965
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, v6}, Lcom/android/server/wm/DualScreenTransition;->clearMovedWindows(Ljava/util/HashMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1995
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_9
    :try_start_6
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2004
    .end local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_a
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_b

    .line 2008
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->destroy()V

    .line 2009
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2012
    :cond_b
    if-nez p1, :cond_c

    .line 2013
    :try_start_8
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2017
    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2018
    iget-object v6, p0, Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 2020
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->clearDualScreenTransitionAnimation()V

    .line 2022
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2023
    return-void
.end method

.method loadAnimation()Landroid/view/animation/Animation;
    .locals 26

    .prologue
    .line 1492
    const/4 v15, 0x0

    .line 1494
    .local v15, "anim":Landroid/view/animation/Animation;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage()I

    move-result v25

    .line 1495
    .local v25, "transitTargetWidthOnAnimStage":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage()I

    move-result v24

    .line 1497
    .local v24, "transitTargetHeightOnAnimStage":I
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1498
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() transitionToString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v8}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transitTargetWidthOnAnimStage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transitTargetHeightOnAnimStage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_3

    .line 1505
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1

    .line 1506
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_0

    .line 1851
    :cond_1
    :goto_0
    if-nez v15, :cond_2

    .line 1852
    const-string v6, "DualScreenTransition"

    const-string/jumbo v7, "loadAnimation() : animation is not loaded !!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v15, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1855
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    :cond_2
    const-wide/16 v6, 0x0

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1857
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayHeight:I

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1860
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_11

    .line 1861
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_f

    move-object/from16 v21, v15

    .line 1862
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1863
    .local v21, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1864
    .local v14, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1517
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_0
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1518
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    packed-switch v6, :pswitch_data_1

    .line 1537
    :goto_2
    move-object/from16 v15, v21

    .line 1539
    goto :goto_0

    .line 1520
    :pswitch_1
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1522
    .local v23, "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1526
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1528
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1533
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1542
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1

    .line 1552
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1553
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    packed-switch v6, :pswitch_data_2

    .line 1572
    :goto_3
    move-object/from16 v15, v21

    .line 1573
    goto/16 :goto_0

    .line 1555
    :pswitch_5
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1557
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1561
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_6
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1563
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1568
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_7
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1587
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_8
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1588
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    packed-switch v6, :pswitch_data_3

    .line 1607
    :goto_4
    move-object/from16 v15, v21

    .line 1609
    goto/16 :goto_0

    .line 1590
    :pswitch_9
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1592
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1596
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_a
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1598
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1603
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_b
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 1612
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1

    .line 1622
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1623
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    packed-switch v6, :pswitch_data_4

    .line 1642
    :goto_5
    move-object/from16 v15, v21

    goto/16 :goto_0

    .line 1625
    :pswitch_d
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1627
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1631
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_e
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1633
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1638
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_f
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1648
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_8

    .line 1650
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_5

    .line 1732
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1661
    :pswitch_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1662
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v25

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1665
    :cond_4
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    neg-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1669
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1681
    :pswitch_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1682
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1685
    :cond_5
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1689
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1701
    :pswitch_12
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1702
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1703
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    neg-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1706
    :cond_6
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1722
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_13
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1723
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1726
    :cond_7
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1730
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1736
    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_d

    .line 1738
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_6

    .line 1819
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1749
    :pswitch_14
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 1750
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1753
    :cond_9
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1757
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1769
    :pswitch_15
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 1770
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1773
    :cond_a
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1777
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1789
    :pswitch_16
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 1790
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1793
    :cond_b
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1797
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1809
    :pswitch_17
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 1810
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1813
    :cond_c
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1817
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1822
    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_e

    .line 1823
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v15, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1824
    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v7, 0x190

    if-ne v6, v7, :cond_1

    .line 1825
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1826
    .local v3, "startInc":F
    const v4, 0x3f83d70a    # 1.03f

    .line 1827
    .local v4, "endInc":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1828
    .local v22, "startdec":F
    div-float v18, v3, v4

    .line 1829
    .local v18, "endDec":F
    const/16 v17, 0x14d

    .line 1830
    .local v17, "duration":I
    new-instance v20, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .line 1832
    .local v20, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1833
    .local v16, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move v5, v3

    move v6, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1835
    .local v2, "incScaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1836
    move/from16 v0, v17

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1837
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1839
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move/from16 v6, v22

    move/from16 v7, v18

    move/from16 v8, v22

    move/from16 v9, v18

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1841
    .local v5, "decScaleAnim":Landroid/view/animation/ScaleAnimation;
    const/16 v6, 0x1b1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1842
    move/from16 v0, v17

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1843
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1845
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1846
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1848
    move-object/from16 v15, v16

    goto/16 :goto_0

    .line 1867
    .end local v2    # "incScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "startInc":F
    .end local v4    # "endInc":F
    .end local v5    # "decScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v16    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v17    # "duration":I
    .end local v18    # "endDec":F
    .end local v20    # "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    .end local v22    # "startdec":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1880
    :cond_10
    :goto_6
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEV_MODE_ENABLED:Z

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    if-lez v6, :cond_16

    .line 1881
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_13

    move-object/from16 v21, v15

    .line 1882
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1883
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1884
    .restart local v14    # "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    int-to-long v6, v6

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_7

    .line 1870
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_11
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_12

    move-object/from16 v21, v15

    .line 1871
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1872
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1873
    .restart local v14    # "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_8

    .line 1876
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_6

    .line 1887
    :cond_13
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    int-to-long v6, v6

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1889
    :cond_14
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_15

    .line 1890
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animation : duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mDevDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_15
    :goto_9
    return-object v15

    .line 1893
    :cond_16
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_17

    move-object/from16 v21, v15

    .line 1894
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1895
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1896
    .restart local v14    # "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_a

    .line 1899
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_17
    const-wide/16 v6, 0x190

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1901
    :cond_18
    sget-boolean v6, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v6, :cond_15

    .line 1902
    const-string v6, "DualScreenTransition"

    const-string v7, "animation : duration=400"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
    .end packed-switch

    .line 1518
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1553
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1588
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 1623
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1650
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1738
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method overrideTransition(Lcom/android/server/wm/AppWindowToken;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Z)V
    .locals 29
    .param p1, "transitTargetAtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "newTransition"    # I
    .param p3, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "inTransaction"    # Z

    .prologue
    .line 1040
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1041
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "overrideTransition() : currentTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v7}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DualScreenTransition;->canOverrideTransition(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1047
    const-string v5, "DualScreenTransition"

    const-string/jumbo v6, "overrideTransition() : overriding transition is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_1
    :goto_0
    return-void

    .line 1051
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    if-nez p5, :cond_4

    .line 1052
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fromDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " toDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animStageDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1056
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    .line 1057
    .local v22, "prevFromDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v23, v0

    .line 1058
    .local v23, "prevToDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    .line 1059
    .local v21, "prevAnimStageDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    move/from16 v25, v0

    .line 1060
    .local v25, "prevTransition":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setTransition(I)V

    .line 1062
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1063
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1064
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1065
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    .line 1067
    const/16 v5, 0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    .line 1068
    const/16 v5, 0x65

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    .line 1070
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->selectMoveDirection(II)V

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->updateWaitingScreens(I)V

    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DualScreenTransition;->updateDisplayInfos()V

    .line 1079
    const/16 v5, 0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 1080
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v24

    .line 1081
    .local v24, "prevToDisplayId":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v18

    .line 1082
    .local v18, "currentFromDisplayId":I
    const/16 v5, 0x12c

    move/from16 v0, v25

    if-ne v0, v5, :cond_8

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v6, 0x7d0

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v28, v5, -0x1

    .line 1084
    .local v28, "topWindowLayer":I
    const/16 v26, 0x0

    .line 1085
    .local v26, "screenshotMinLayer":I
    move/from16 v10, v28

    .line 1086
    .local v10, "screenshotMaxLayerForFromDisplay":I
    const/16 v20, 0x0

    .line 1090
    .local v20, "moveWindowsToFront":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v5, v5, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 1091
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1094
    if-eqz p1, :cond_6

    .line 1095
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DualScreenTransition;->getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    .line 1096
    .local v27, "topWindow":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/DualScreenTransition;->DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v5, :cond_6

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/android/server/wm/DualScreenTransition;->canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1099
    const-string v5, "DualScreenTransition"

    const-string/jumbo v6, "freezeForTransition() : moveWindowsToFront|=TRANSIT_TARGET_DISPLAY"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1101
    or-int/lit8 v20, v20, 0x1

    .line 1106
    .end local v27    # "topWindow":Lcom/android/server/wm/WindowState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v7, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/DualScreenTransition;->createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v12

    .line 1110
    .local v12, "transitTargetCapture":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1112
    and-int/lit8 v5, v20, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v10}, Lcom/android/server/wm/DualScreenTransition;->collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v6, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 1117
    :cond_7
    const v5, 0xf4242

    invoke-virtual {v12, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1118
    invoke-virtual {v12}, Landroid/view/SurfaceControl;->show()V

    .line 1119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v13, 0xf4242

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetDisplayHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17

    invoke-direct/range {v11 .. v17}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DualScreenTransition;->setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    .end local v10    # "screenshotMaxLayerForFromDisplay":I
    .end local v12    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v18    # "currentFromDisplayId":I
    .end local v20    # "moveWindowsToFront":I
    .end local v24    # "prevToDisplayId":I
    .end local v26    # "screenshotMinLayer":I
    .end local v28    # "topWindowLayer":I
    :cond_8
    :goto_1
    if-nez p6, :cond_1

    .line 1131
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_0

    .line 1126
    :catch_0
    move-exception v19

    .line 1127
    .local v19, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    const-string v5, "DualScreenTransition"

    const-string v6, "Unable to allocate freeze surface"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1130
    .end local v19    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v5

    if-nez p6, :cond_9

    .line 1131
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_9
    throw v5
.end method

.method removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/wm/DualScreenTransition;->removeTransitTargetWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 754
    invoke-direct {p0, p1}, Lcom/android/server/wm/DualScreenTransition;->removeMovedWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 755
    return-void
.end method

.method reportWaitingScreenDrawn(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 3
    .param p1, "drawnScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportWaitingScreenDrawn() mWatingScreenDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitingScreens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    .line 532
    :cond_1
    return-void
.end method

.method setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    .locals 15
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 1307
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1309
    .local v10, "di":Landroid/view/DisplayInfo;
    if-eqz v10, :cond_0

    .line 1310
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotationInTransaction() rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .end local v10    # "di":Landroid/view/DisplayInfo;
    :cond_0
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_a

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 1320
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    .line 1321
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v9

    .line 1322
    .local v9, "delta":I
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1326
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    .line 1426
    .end local v9    # "delta":I
    :cond_2
    :goto_0
    return-void

    .line 1329
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 1330
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    .line 1331
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v9

    .line 1332
    .restart local v9    # "delta":I
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 1335
    .local v12, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1337
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetWidthOnAnimStage(II)I

    move-result v14

    .line 1338
    .local v14, "transitTargetWidthOnAnimStage":I
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DualScreenTransition;->getTransitTargetHeightOnAnimStage(II)I

    move-result v13

    .line 1340
    .local v13, "transitTargetHeightOnAnimStage":I
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    packed-switch v1, :pswitch_data_0

    .line 1379
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1380
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1390
    :cond_5
    :goto_2
    iget-object v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v6, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v7, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v8, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_1

    .line 1342
    :pswitch_0
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 1344
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1345
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1346
    :cond_6
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1347
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1348
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1354
    :pswitch_1
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 1356
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1357
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1358
    :cond_7
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1359
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1360
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1366
    :pswitch_2
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1367
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1368
    :cond_8
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1370
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1371
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    if-nez v1, :cond_5

    .line 1372
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 1381
    :cond_9
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1383
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1384
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    if-nez v1, :cond_5

    .line 1385
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2

    .line 1393
    .end local v9    # "delta":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    .end local v13    # "transitTargetHeightOnAnimStage":I
    .end local v14    # "transitTargetWidthOnAnimStage":I
    :cond_a
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_d

    .line 1395
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 1396
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    .line 1397
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v9

    .line 1398
    .restart local v9    # "delta":I
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_b
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1402
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mCoverInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayHeight:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    .line 1406
    .end local v9    # "delta":I
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 1407
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_0

    .line 1409
    :cond_d
    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_2

    .line 1411
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_f

    .line 1412
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mCoveredDisplayCurrentRotation:I

    .line 1413
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->deltaRotation(II)I

    move-result v9

    .line 1414
    .restart local v9    # "delta":I
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 1417
    .restart local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, Lcom/android/server/wm/DualScreenTransition;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1418
    iget-object v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v6, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v7, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v8, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_3

    .line 1422
    .end local v9    # "delta":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 1423
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_0

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setTransition(I)V
    .locals 3
    .param p1, "transit"    # I

    .prologue
    .line 442
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTransition() : prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-static {v2}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wm/DualScreenTransition;->transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    .line 447
    return-void
.end method

.method shouldFreezeScreen()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    move v0, v1

    .line 536
    .local v0, "shouldFreeze":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 538
    sget-boolean v1, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 539
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFreezeScreen() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mWatingScreenDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingScreenDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWatingAppToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    return v0

    .end local v0    # "shouldFreeze":Z
    :cond_1
    move v0, v2

    .line 535
    goto :goto_0

    .restart local v0    # "shouldFreeze":Z
    :cond_2
    move v1, v2

    .line 536
    goto :goto_1
.end method

.method shouldMoveDimLayer(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stepAnimationLocked(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 1429
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 1430
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepAnimationLocked() now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DualScreenTransition;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1433
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: no animations running"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_1
    const/4 v0, 0x0

    .line 1447
    :goto_0
    return v0

    .line 1437
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    if-nez v0, :cond_6

    .line 1438
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: starting animation, setting start time"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1442
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 1443
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1445
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    .line 1447
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DualScreenTransition;->stepAnimation(J)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2366
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2368
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "DualScreenTransition {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DualScreenTransition;->mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DualScreenTransition;->mAnimRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTransitTargetSurfaceControl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v2, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2378
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mScreenCoverSurfaceControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public transitTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "transitionType"    # I

    .prologue
    .line 2421
    sparse-switch p1, :sswitch_data_0

    .line 2427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2423
    :sswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 2425
    :sswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_TRANSLATE"

    goto :goto_0

    .line 2421
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method updateSurfacesInTransaction()V
    .locals 12

    .prologue
    .line 2052
    iget-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mStarted:Z

    if-nez v0, :cond_1

    .line 2080
    :cond_0
    return-void

    .line 2056
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 2057
    iget-boolean v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoreTransit:Z

    if-nez v0, :cond_7

    .line 2058
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2059
    const-string v0, "DualScreenTransition"

    const-string v1, "Transit animations done, hiding TransitTarget screenshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2062
    .local v10, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfacesInTransaction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_4
    iget-object v0, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2064
    :catch_0
    move-exception v8

    .line 2065
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2068
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfacesInTransaction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 2073
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEV_FREEZE_TRANSITION:Z

    if-nez v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2075
    .restart local v10    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    new-instance v11, Landroid/graphics/Matrix;

    iget-object v0, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    invoke-direct {v11, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2076
    .local v11, "transitFinalMatrix":Landroid/graphics/Matrix;
    iget-object v1, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v2, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    iget v4, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v5, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v6, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v7, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DualScreenTransition;->setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_1
.end method

.method updateWaitingScreens(I)V
    .locals 2
    .param p1, "transition"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    sparse-switch p1, :sswitch_data_0

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :goto_0
    return-void

    .line 483
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :sswitch_1
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DualScreenTransition;->mMoveDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition;->mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DualScreenTransition;->mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method waitAppTokenDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitAppTokenDrawn() : appToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition;->mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 469
    return-void
.end method
