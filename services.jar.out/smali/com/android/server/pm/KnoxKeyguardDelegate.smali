.class public Lcom/android/server/pm/KnoxKeyguardDelegate;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
    }
.end annotation


# static fields
.field public static final FLAG_B2C_PWC_RESET:I = 0x40

.field public static final FLAG_DISMISS_KNOX_KEYGUARD:I = 0x2

.field protected static final FLAG_FROM_NOTIFICATION:I = 0x2

.field public static final FLAG_HOME_KEY_INPUT:I = 0x8

.field public static final FLAG_KNOX_KEYGUARD_FINISHED:I = 0x80

.field private static final FLAG_MOVE_TO_KNOX:I = 0x1

.field public static final FLAG_PWD_RESET_RESULT:I = 0x4

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SCREEN_OFF:I = 0x20

.field public static final FLAG_SCREEN_ON:I = 0x10

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxKeyguardDelegate"

.field private static final MAX_SECURE_FOLDER_ID:I = 0xa0

.field private static final MIN_SECURE_FOLDER_ID:I = 0x96

.field private static final MSG_HIDE:I = 0x3

.field private static final MSG_HOME_SHOW:I = 0x1

.field private static final MSG_SHOW:I = 0x2

.field public static final SHARED_DEVICE_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "SharedDeviceKeyguardEventFlag"


# instance fields
.field private isHomeShowPending:Z

.field private final mContext:Landroid/content/Context;

.field private mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

.field private mIsHidingProcessing:Z

.field private mIsShowingProcessing:Z

.field private mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisibleKeyguardOwner:I

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 68
    new-instance v0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$1;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    .line 71
    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    .line 130
    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    .line 133
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWm:Landroid/view/WindowManager;

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    .line 136
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->createScrim()V

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->handleHomeShow(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxKeyguardDelegate;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->show(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hide(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    return-object v0
.end method

.method private createScrim()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 391
    new-instance v2, Lcom/android/server/pm/KnoxNativeKeyguardHost;

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/KnoxNativeKeyguardHost;-><init>(Landroid/content/Context;Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    .line 393
    const v4, 0x110900

    .line 398
    .local v4, "flags":I
    or-int/lit16 v4, v4, 0x400

    .line 399
    or-int/lit16 v4, v4, 0x2000

    .line 401
    const/4 v6, -0x1

    .line 402
    .local v6, "stretch":I
    const/16 v7, 0x7d8

    .line 404
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 407
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 408
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 411
    const-string v1, "ContainerKeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setVisibility(I)V

    .line 414
    return-void

    .line 408
    :cond_0
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 456
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private handleHomeShow(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 485
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "KnoxKeyguardDelegate"

    const-string v1, " unfreeze the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    .line 490
    :cond_0
    if-nez p1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->clearFlag()V

    .line 493
    :cond_1
    return-void
.end method

.method private declared-synchronized hide(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 260
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 263
    .local v1, "isSharedDevice":Z
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for emergency state is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isEmergencyCall"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 267
    :cond_0
    if-eqz v1, :cond_1

    .line 268
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared devices real hide for emergency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 p1, 0x0

    .line 270
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 277
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "isSharedDevice":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 281
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v1    # "isSharedDevice":Z
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 284
    :try_start_2
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_3

    .line 285
    const-string v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "no keyguard needs to be dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_3
    iget p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 290
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to dismiss keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with dismiss_all event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_4
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZ)V

    goto/16 :goto_0

    .line 292
    :cond_5
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_4

    .line 293
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to dismiss the wrong keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while current visible keyguard belongs to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private isSecureFolderId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 152
    const/16 v0, 0x96

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendKeyguardCommand(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZI)V

    .line 309
    return-void
.end method

.method private sendKeyguardCommand(IZI)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not running now!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v2, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s state is SUER_LOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v2, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s state is TIMA_COMPROMISED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is BBC Container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    const-string v1, "KnoxKeyguardDelegate"

    const-string v2, "UPSM enabed! cannot start service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_7

    .line 340
    const-string v1, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_5

    .line 342
    const-string/jumbo v1, "isMoveToKnox"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    :cond_5
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_6

    .line 345
    const-string/jumbo v1, "isLaunchedFromNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->showScrim()V

    .line 347
    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 348
    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 355
    :goto_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 350
    :cond_7
    const-string v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 352
    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    goto :goto_1
.end method

.method private sendSharedDeviceKeyguardCommand(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->showScrim()V

    .line 373
    const-string v1, "SharedDeviceKeyguardEventFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 375
    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 384
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 387
    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V

    .line 378
    const-string v1, "SharedDeviceKeyguardEventFlag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 381
    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    goto :goto_0
.end method

.method private declared-synchronized show(II)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 165
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 168
    .local v1, "isSharedDevice":Z
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show() will be ignored. because FocusedUser is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userId to show KnoxKeyguard is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 171
    .local v2, "ident":J
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v2    # "ident":J
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    if-eqz v1, :cond_1

    .line 177
    :try_start_1
    const-string v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shared devices real show for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 p1, 0x0

    .line 179
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "isSharedDevice":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 184
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v1    # "isSharedDevice":Z
    :cond_1
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v5, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 185
    const-string v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsHidingProcessing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    const-string v4, "KnoxKeyguardDelegate"

    const-string v5, "UPSM enabed! ignore show()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-ne p1, v4, :cond_4

    .line 194
    const-string v4, "KnoxKeyguardDelegate"

    const-string v5, " keyguard already visible"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_4
    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_5

    .line 197
    const-string v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " other container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has keyguard shown, dismiss that first"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZ)V

    .line 201
    :cond_5
    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-eq p1, v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    if-eqz v4, :cond_6

    .line 202
    const-string v4, "KnoxKeyguardDelegate"

    const-string/jumbo v5, "isHomeShowPending is true skip to show keyguard!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_6
    const-string v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " real showing keyguard for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with flags "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method declared-synchronized clearFlag()V
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    const-string v0, "KnoxKeyguardDelegate"

    const-string v1, "clear Flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVisibleKeyguardOwner()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    return v0
.end method

.method hideScrim()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$3;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method declared-synchronized notifyShow(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " notify show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " show ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p2, :cond_2

    .line 219
    const-string v2, "KnoxKeyguardDelegate"

    const-string v3, " unfreeze due to keyguard show"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    .local v0, "ident":J
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 224
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 230
    .end local v0    # "ident":J
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 231
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyShow() mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    .line 236
    :cond_0
    if-nez p2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    monitor-exit p0

    return-void

    .line 226
    :cond_2
    const/16 v2, -0x2710

    :try_start_1
    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onHomeShow(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 477
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    return-void
.end method

.method onKeyguardBackPressed(I)V
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 470
    return-void
.end method

.method postHide(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x3

    .line 246
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

.method postShow(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x2

    .line 144
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    .line 145
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method showScrim()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$2;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method showScrimSD()V
    .locals 6

    .prologue
    .line 418
    :try_start_0
    const-string/jumbo v0, "com.sec.enterprise.knox.shareddevice.keyguard"

    .line 419
    .local v0, "SETUP_PACKAGE":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 420
    .local v2, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v4, "knox_bg_b2c_00"

    const-string/jumbo v5, "drawable"

    invoke-virtual {v2, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 421
    .local v3, "resid":I
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v5, Lcom/android/server/pm/KnoxKeyguardDelegate$1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$1;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "SETUP_PACKAGE":Ljava/lang/String;
    .end local v2    # "packageResources":Landroid/content/res/Resources;
    .end local v3    # "resid":I
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
