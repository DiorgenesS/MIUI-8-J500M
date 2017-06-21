.class public Lcom/android/server/pm/KnoxTimeoutHandler;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;,
        Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;,
        Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_LOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxTimeoutHandler"

.field private static final MSG_ACTIVE_USER_CHANGE:I = 0x1

.field private static final MSG_CANCEL_LOCK_TIMEOUT:I = 0x3

.field private static final MSG_HIDE_KEYGUARD_IF_NEEDED:I = 0x5

.field private static final MSG_HOME_SHOW:I = 0x4

.field private static final MSG_NOTIFY_ACTIVITY_DRAWN:I = 0x6

.field private static final MSG_RESET_LOCK_TIMEOUT:I = 0x2

.field private static final PERSONA_ID:Ljava/lang/String; = "personaId"


# instance fields
.field private isKnox:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mCurrentPersonaId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 62
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    .line 64
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 66
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    .line 393
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$1;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 169
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTapInputEventListener()V

    .line 170
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTimeoutReceiver()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerSystemPersonaObserver()V

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/pm/KnoxTimeoutHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->cancelLockTimer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleHomeShow(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->hideKeyguardIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/KnoxTimeoutHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    return v0
.end method

.method private declared-synchronized activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 7
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    const-string v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityDrawn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 318
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v4, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 326
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 328
    .local v1, "isSharedDevice":Z
    const-string v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SD activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isEmergencyCall"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 331
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_4

    .line 332
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    const-string v3, "KnoxTimeoutHandler"

    const-string v4, "Hide"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :cond_4
    iget v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 341
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    const-string v3, "KnoxTimeoutHandler"

    const-string v4, "Fullscreen and mCurrent is not KNOX user. Hence hide keyguard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    :cond_5
    const-string v3, "KnoxTimeoutHandler"

    const-string v4, "Fullscreen but mCurrent is KNOX user."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized cancelLockTimer(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cancel lock timer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 525
    .local v2, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "personaId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const/high16 v5, 0x48000000    # 131072.0f

    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 530
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 522
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 80
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private declared-synchronized handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 10
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    const/4 v9, 0x1

    .line 228
    monitor-enter p0

    :try_start_0
    iget v4, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 229
    .local v4, "userId":I
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleActiveUserChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 232
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    if-nez v5, :cond_0

    .line 233
    iput v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 235
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 236
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " active change for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    const-string v5, "KnoxTimeoutHandler"

    const-string v6, " reset timeout from active user change"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    .line 243
    .local v3, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_3

    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v5, :cond_3

    .line 244
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is removed, no locking needed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    .end local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 248
    .restart local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v4    # "userId":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 249
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isUserHasTrust "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    goto :goto_0

    .line 254
    :cond_4
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " container is locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v5, :cond_5

    .line 256
    const-string v5, "KnoxTimeoutHandler"

    const-string v6, "Do not show knox security screen cause it has FLAG_SHOW_WHEN_LOCKED but hide if needed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 259
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 260
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(II)V

    goto/16 :goto_0

    .line 262
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 268
    .end local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 270
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 272
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 274
    .local v1, "isSharedDevice":Z
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared devices show user state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "isEmergencyCall"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 277
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_8

    if-ne v2, v9, :cond_8

    .line 278
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared devices flag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 283
    :cond_8
    if-nez v1, :cond_1

    .line 287
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 288
    iput v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 289
    const-string v5, "KnoxTimeoutHandler"

    const-string/jumbo v6, "handleActiveUserChange"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    iget-object v7, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v7, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget-object v7, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v7, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-nez v5, :cond_9

    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v5, :cond_9

    .line 293
    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 294
    :cond_9
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v5, :cond_1

    goto/16 :goto_0

    .line 298
    :cond_a
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    if-eqz v5, :cond_b

    .line 299
    iput v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    goto/16 :goto_0

    .line 302
    :cond_b
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target Activity is not fullscreen. We will not show this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private handleHomeShow(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 211
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleHomeShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p1, :cond_1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    if-eq v1, p1, :cond_0

    .line 215
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " launch home intent for calibration because home is shown for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private hideKeyguardIfNeeded()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguardIfNeeded()V

    .line 353
    return-void
.end method

.method private registerSystemPersonaObserver()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$2;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 483
    return-void
.end method

.method private registerTapInputEventListener()V
    .locals 3

    .prologue
    .line 441
    const-string v0, "KnoxTimeoutHandler"

    const-string v1, " register tap input event listener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 443
    return-void
.end method

.method private registerTimeoutReceiver()V
    .locals 3

    .prologue
    .line 449
    const-string v1, "KnoxTimeoutHandler"

    const-string v2, " register time out receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    return-void
.end method

.method private declared-synchronized resetLockTimer(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " reset lock timer for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 493
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Wake lock acquired for this user. Ignore reset timeout for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 498
    .local v6, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "personaId"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const/high16 v9, 0x48000000    # 131072.0f

    invoke-static {v8, p1, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 503
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v8, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 505
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v4

    .line 507
    .local v4, "timeout":J
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " timeout value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 511
    .local v2, "now":J
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    add-long v10, v2, v4

    invoke-virtual {v8, v9, v10, v11, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 514
    .end local v2    # "now":J
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "timeout":J
    .end local v6    # "token":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method declared-synchronized getForegroundUser()I
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyActivityDrawn(IZZI)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z
    .param p4, "mws"    # I

    .prologue
    .line 185
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZI)V

    .line 186
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyActivityDrawn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method onHomeShow(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 195
    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post home show event for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void
.end method

.method postActiveUserChange(IZZZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z
    .param p4, "isMutiwindowRecord"    # Z

    .prologue
    .line 179
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V

    .line 180
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postActiveUserChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    return-void
.end method

.method postTimeoutCancel(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method

.method postTimeoutReset(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method

.method setWakeLockAcquired(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isAcquired"    # Z

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 558
    return-void
.end method
