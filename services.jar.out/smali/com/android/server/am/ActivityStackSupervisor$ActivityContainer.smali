.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field detachDebugException:Ljava/lang/RuntimeException;

.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 2
    .param p2, "stackId"    # I

    .prologue
    .line 8072
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 8073
    return-void

    .line 8072
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .locals 3
    .param p2, "stackId"    # I
    .param p3, "stackType"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v1, 0x0

    .line 8075
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    .line 8048
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 8050
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 8053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 8061
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 8063
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachDebugException:Ljava/lang/RuntimeException;

    .line 8077
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8078
    :try_start_0
    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 8080
    new-instance v0, Lcom/android/server/am/ActivityStack;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->access$900(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;

    move-result-object v2

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;II)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 8082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivtyContainer{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    .line 8084
    monitor-exit v1

    .line 8085
    return-void

    .line 8084
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 8235
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 8236
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8237
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8240
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8444
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 8446
    monitor-exit v1

    .line 8452
    :goto_0
    return-void

    .line 8448
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8449
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8451
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 8244
    return-object p0
.end method

.method public attachToDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 8111
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 8112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 8113
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    .line 8114
    monitor-exit v2

    .line 8118
    :goto_0
    return-void

    .line 8116
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 8117
    monitor-exit v2

    goto :goto_0

    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .locals 1
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 8089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;)V

    .line 8090
    return-void
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 8093
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 8094
    return-void
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isSelectiveState"    # Z

    .prologue
    .line 8100
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 8101
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 8102
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 8104
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    .line 8105
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackType:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackZone:I

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->attachStack(IIIILandroid/graphics/Rect;Z)V

    .line 8107
    return-void
.end method

.method protected detachLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8175
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 8182
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 8183
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 8184
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 8185
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 8186
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 8187
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 8188
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachDebugException:Ljava/lang/RuntimeException;

    .line 8191
    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/Point;

    .prologue
    .line 8261
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 8263
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V

    .line 8267
    :goto_0
    monitor-exit v1

    .line 8268
    return-void

    .line 8265
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 8267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayId()I
    .locals 2

    .prologue
    .line 8122
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 8124
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    monitor-exit v1

    .line 8127
    :goto_0
    return v0

    .line 8126
    :cond_0
    monitor-exit v1

    .line 8127
    const/4 v0, -0x1

    goto :goto_0

    .line 8126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    .prologue
    .line 8253
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method public getStackId()I
    .locals 2

    .prologue
    .line 8132
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8133
    :try_start_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    monitor-exit v1

    return v0

    .line 8134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v2, 0x0

    .line 8139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8141
    .local v0, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8142
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_0

    .line 8143
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v2

    .line 8147
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 8147
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8150
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8352
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 8353
    return-void
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "homeIdx"    # I

    .prologue
    .line 8364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V

    .line 8365
    return-void
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "homeIdx"    # I
    .param p3, "showForAllUsers"    # Z

    .prologue
    .line 8368
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 8369
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_5

    .line 8370
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8373
    .local v3, "taskNdx":I
    const/4 v1, 0x0

    .line 8374
    .local v1, "isProfiled":Z
    if-eqz p3, :cond_6

    .line 8375
    const/4 v1, 0x1

    .line 8379
    :goto_0
    if-nez v1, :cond_2

    .line 8381
    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 8382
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8386
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 8391
    :cond_2
    if-lez v3, :cond_4

    .line 8392
    move v0, v3

    .line 8393
    .local v0, "idx":I
    :goto_1
    if-lez v0, :cond_3

    .line 8394
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_7

    if-gt v0, p2, :cond_7

    .line 8433
    :cond_3
    if-ltz v0, :cond_4

    .line 8434
    move v3, v0

    .line 8438
    .end local v0    # "idx":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8440
    .end local v1    # "isProfiled":Z
    .end local v3    # "taskNdx":I
    :cond_5
    monitor-exit v5

    .line 8441
    return-void

    .line 8377
    .restart local v1    # "isProfiled":Z
    .restart local v3    # "taskNdx":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v1

    goto :goto_0

    .line 8397
    .restart local v0    # "idx":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 8410
    .local v2, "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v4

    if-ne v1, v4, :cond_3

    .line 8423
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 8426
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v6, :cond_3

    .line 8393
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 8440
    .end local v0    # "idx":I
    .end local v1    # "isProfiled":Z
    .end local v2    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskNdx":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method isAttachedLocked()Z
    .locals 1

    .prologue
    .line 8257
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    .prologue
    .line 8286
    const/4 v0, 0x1

    return v0
.end method

.method public moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "top"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;Z)V

    .line 8465
    return-void
.end method

.method public moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;Z)V
    .locals 3
    .param p1, "top"    # Lcom/android/server/am/TaskRecord;
    .param p2, "showForAllUsers"    # Z

    .prologue
    .line 8468
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 8469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 8470
    monitor-exit v2

    .line 8483
    :goto_0
    return-void

    .line 8472
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v1, :cond_1

    .line 8473
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8474
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8475
    .local v0, "homeIdx":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8476
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 8482
    .end local v0    # "homeIdx":I
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8478
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8479
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 8487
    return-void
.end method

.method public moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceToBottom"    # Z

    .prologue
    .line 8490
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 8491
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    .line 8492
    const/4 v3, 0x0

    .line 8493
    .local v3, "idx":I
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    .line 8494
    const/4 v1, 0x0

    .line 8495
    .local v1, "bottom":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 8496
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 8497
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 8498
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 8502
    .restart local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    :cond_0
    if-eqz v1, :cond_1

    .line 8503
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 8506
    .end local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    .line 8507
    monitor-exit v5

    .line 8508
    return-void

    .line 8496
    .restart local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8507
    .end local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "bottom":Lcom/android/server/am/TaskRecord;
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method onTaskListEmptyLocked()V
    .locals 3

    .prologue
    .line 8305
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_2

    .line 8314
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachDebugException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 8315
    const-string v0, "ActivityManager"

    const-string v1, "ActivityContainer Display detach called before task empty."

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachDebugException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8323
    :cond_1
    :goto_0
    return-void

    .line 8320
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 8321
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 8322
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 8156
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 8157
    :try_start_0
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    if-ne v2, v4, :cond_0

    .line 8158
    monitor-exit v3

    .line 8170
    :goto_0
    return-void

    .line 8160
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 8162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 8164
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 8165
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8167
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8169
    monitor-exit v3

    goto :goto_0

    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 8167
    .restart local v0    # "origId":J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public remove(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8455
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8456
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8457
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 8459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 8460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDrawn()V
    .locals 0

    .prologue
    .line 8282
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8249
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityContainer.attachToSurface"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8250
    return-void
.end method

.method setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 8272
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 8273
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 8274
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    if-eqz v0, :cond_0

    .line 8275
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x6c

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8279
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 8275
    goto :goto_0
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ActivityContainer.startActivity"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v6}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "ActivityContainer"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 8201
    .local v20, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 8202
    .local v8, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 8203
    .local v23, "data":Landroid/net/Uri;
    if-nez v8, :cond_0

    if-eqz v23, :cond_0

    const-string/jumbo v3, "content"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 8206
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 8208
    const/high16 v3, 0x18010000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v21, p0

    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v3

    return v3
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 14
    .param p1, "intentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 8216
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "ActivityContainer.startActivityIntentSender"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8218
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v1, :cond_0

    .line 8219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad PendingIntent object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8222
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "ActivityContainer"

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "userId":I
    move-object v0, p1

    .line 8226
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 8227
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-direct {p0, v13, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 8230
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x18010000

    const/high16 v10, 0x18010000

    const/4 v11, 0x0

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v1

    return v1
.end method

.method public switchUserLocked()V
    .locals 6

    .prologue
    .line 8332
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 8333
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v3, :cond_1

    .line 8334
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8335
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8336
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 8337
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8339
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8340
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8341
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8348
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    monitor-exit v4

    .line 8349
    return-void

    .line 8348
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_0

    const-string v0, "N"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "F"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "A"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
