.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field private mAppTopLevelStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field mDimTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field mDisplayScalingDisabled:Z

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field mOldDensity:I

.field mPrevDisplayHeight:I

.field mPrevDisplayWidth:I

.field private mSamsungHomeStack:Lcom/android/server/wm/TaskStack;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 101
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 102
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 103
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    .line 104
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    .line 105
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 106
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 109
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDimTokens:Ljava/util/HashMap;

    .line 141
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mOldDensity:I

    .line 145
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    .line 163
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 164
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mGlobalTasks:Ljava/util/ArrayList;

    .line 180
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 185
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 592
    sub-int v0, p1, p0

    .line 593
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 594
    :cond_0
    return v0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 3

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 520
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 523
    :cond_0
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 297
    .local v0, "isHomeStackId":Z
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 306
    return-void
.end method

.method checkForDeferredActions()V
    .locals 11

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "animating":Z
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 566
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 567
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 568
    const/4 v0, 0x1

    .line 565
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 570
    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    if-eqz v9, :cond_2

    .line 571
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    .line 573
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 574
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_0

    .line 575
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 576
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 577
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "tokenNdx":I
    :goto_2
    if-ltz v6, :cond_4

    .line 578
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 579
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v9, :cond_3

    .line 580
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    .line 577
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 574
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 586
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v9, :cond_6

    .line 587
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 589
    :cond_6
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    .line 548
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stack = null \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target stack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Remove fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 598
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "Display: mDisplayId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 599
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, "subPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "init="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 602
    const-string/jumbo v14, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v14, v15, :cond_1

    .line 606
    :cond_0
    const-string v14, " base="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 608
    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v14, "dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v14, :cond_2

    .line 611
    const-string v14, " noscale"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    :cond_2
    const-string v14, " cur="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 615
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 616
    const-string v14, " app="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 618
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 619
    const-string v14, " rng="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 620
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 621
    const-string v14, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 622
    const-string/jumbo v14, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 623
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "deferred="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Z)V

    .line 624
    const-string v14, " layoutNeeded="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Z)V

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 627
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mStacks["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 628
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 625
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 630
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 631
    const-string v14, "  Application tokens in top down Z order:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const/4 v3, 0x0

    .line 650
    .local v3, "ndx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    :goto_1
    if-ltz v5, :cond_6

    .line 651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 652
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    const-string v14, "  mStackId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 653
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 654
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "taskNdx":I
    :goto_2
    if-ltz v8, :cond_5

    .line 655
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 656
    .local v7, "task":Lcom/android/server/wm/Task;
    const-string v14, "    mTaskId="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v7, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    .line 657
    iget-object v12, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 658
    .local v12, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v12}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .local v11, "tokenNdx":I
    :goto_3
    if-ltz v11, :cond_4

    .line 659
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 660
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string v14, "    Activity #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 661
    const/16 v14, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string v14, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 658
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 654
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 650
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "tokenNdx":I
    .end local v12    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 667
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "taskNdx":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_6
    if-nez v3, :cond_7

    .line 668
    const-string v14, "    None"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 672
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 673
    const-string v14, "  Exiting tokens:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_8

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 676
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    const-string v14, "  Exiting #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 677
    const/16 v14, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 678
    const/16 v14, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(C)V

    .line 679
    const-string v14, "    "

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v14}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 674
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 694
    .end local v2    # "i":I
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 695
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    .line 260
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 279
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 280
    .local v2, "orientation":I
    if-eq v2, v5, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    .line 282
    .local v5, "rotated":Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 283
    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 284
    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 285
    .local v7, "width":I
    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    .line 286
    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 287
    .local v0, "height":I
    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    .line 288
    .local v6, "top":I
    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    return-void

    .line 280
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 282
    .restart local v5    # "rotated":Z
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1

    .line 283
    .restart local v4    # "physWidth":I
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_2
.end method

.method getReverseDisplayInfo()Landroid/view/DisplayInfo;
    .locals 3

    .prologue
    .line 704
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 705
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 706
    .local v1, "temp":I
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 707
    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 708
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 709
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 710
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 712
    iget v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 713
    iget v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 714
    iput v1, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    .line 716
    return-object v0
.end method

.method getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 721
    new-instance v0, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 722
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 725
    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackType:I

    iput v1, v0, Landroid/app/ActivityManager$StackInfo;->stackType:I

    .line 727
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 728
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 729
    return-object v0
.end method

.method getStackInfos()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 737
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 740
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackInfo(Lcom/android/server/wm/TaskStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 742
    :cond_1
    return-object v0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    .local v0, "numStacks":I
    const/4 v1, 0x0

    .local v1, "stackNdx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    return-object v2
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method isAnimating()Z
    .locals 3

    .prologue
    .line 554
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 555
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 556
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const/4 v2, 0x1

    .line 560
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    return v2

    .line 554
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 560
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const/4 v1, 0x1

    .line 538
    :goto_1
    return v1

    .line 533
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 538
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveStack is failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in mStacks  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 527
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method resetVisibleWindow()V
    .locals 2

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 751
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetVisibleWindow()V

    .line 750
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 352
    return-void
.end method

.method setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mCenterBarPoint:Landroid/graphics/Point;

    .line 747
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 8
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x0

    .line 444
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 447
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 448
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 449
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 450
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 451
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 453
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 454
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 447
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 457
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    if-eqz v4, :cond_2

    .line 458
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 460
    :cond_2
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 431
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 432
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 433
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 438
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    return v2

    .line 430
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 438
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 542
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method switchUserStacks(I)V
    .locals 9
    .param p1, "newUserId"    # I

    .prologue
    const/4 v8, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 489
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 490
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 493
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 494
    .local v0, "disabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 495
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 500
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 501
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_0

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user changing, hiding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", attrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", belonging to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 489
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_2
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    goto :goto_1

    .line 507
    .end local v0    # "disabled":Ljava/lang/Boolean;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-ltz v2, :cond_4

    .line 508
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->switchUser()V

    .line 507
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 510
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCurrentUserPolicy(I)V
    .locals 8
    .param p1, "newUserId"    # I

    .prologue
    const/4 v7, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 465
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 466
    .local v0, "disabled":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 467
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 469
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    .line 470
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    if-eq p1, v4, :cond_1

    .line 466
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 474
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 475
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUserPolicy SetSecure win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set disabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    :cond_2
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 479
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 480
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUserPolicy SetSecure win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set disabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 484
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method updateDisplayInfo()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 267
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 267
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method
