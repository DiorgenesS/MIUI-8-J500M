.class public Lcom/samsung/android/service/gesture/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;,
        Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    }
.end annotation


# static fields
.field private static final AIR_GESTURE_ACTIVE_STATUS:Ljava/lang/String; = "com.samsung.android.app.gestureservice.GESTURE_ACTIVE_STATUS"

.field public static final AIR_MOTION_AIRBROWSE:Ljava/lang/String; = "air_motion_turn"

.field public static final AIR_MOTION_AIRJUMP:Ljava/lang/String; = "air_motion_scroll"

.field public static final AIR_MOTION_AIRPIN:Ljava/lang/String; = "air_motion_clip"

.field public static final AIR_MOTION_CALL_ACCEPT:Ljava/lang/String; = "air_motion_call_accept"

.field public static final AIR_MOTION_MOVE:Ljava/lang/String; = "air_motion_item_move"

.field public static final CAMERA_PROVIDER:Ljava/lang/String; = "camera_provider"

.field public static final IR_PROVIDER:Ljava/lang/String; = "ir_provider"

.field private static final TAG:Ljava/lang/String; = "GestureManager"

.field public static final TSP_PROVIDER:Ljava/lang/String; = "tsp_provider"


# instance fields
.field private airGesutreActiveStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mGestureActive:Z

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/service/gesture/IGestureService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionListener"    # Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mGestureActive:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    .line 69
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/gesture/GestureManager$1;-><init>(Lcom/samsung/android/service/gesture/GestureManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->airGesutreActiveStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/gesture/GestureManager$2;-><init>(Lcom/samsung/android/service/gesture/GestureManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnection:Landroid/content/ServiceConnection;

    .line 144
    iput-object p2, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    .line 145
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/service/gesture/GestureManager;->bindtoService()V

    .line 148
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/service/gesture/GestureManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/GestureManager;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mGestureActive:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/IGestureService;)Lcom/samsung/android/service/gesture/IGestureService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/GestureManager;
    .param p1, "x1"    # Lcom/samsung/android/service/gesture/IGestureService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/service/gesture/GestureManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/GestureManager;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/service/gesture/GestureManager;)Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/GestureManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/service/gesture/GestureManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/service/gesture/GestureManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindtoService()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.gestureservice"

    const-string v2, "com.samsung.android.app.gestureservice.GestureService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 157
    return-void
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    .line 424
    new-instance v0, Lcom/samsung/android/service/gesture/GestureProviderInfo;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureProviderInfo;-><init>()V

    .line 425
    .local v0, "provider":Lcom/samsung/android/service/gesture/GestureProviderInfo;
    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/gesture/GestureProviderInfo;->setName(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v1, "supported_gesture"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/gesture/GestureProviderInfo;->setSupportedGestures(Ljava/util/List;)V

    .line 427
    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1}, Lcom/samsung/android/service/gesture/IGestureService;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1}, Lcom/samsung/android/service/gesture/IGestureService;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/gesture/IGestureService;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 405
    .local v1, "info":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 412
    .end local v1    # "info":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 408
    .restart local v1    # "info":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/gesture/GestureManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 409
    .end local v1    # "info":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "GestureManager"

    const-string v4, "getProvider: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1}, Lcom/samsung/android/service/gesture/IGestureService;->getProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "GestureManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/service/gesture/GestureListener;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    const-string v0, "air_motion_scroll"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/service/gesture/GestureListener;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "eventType"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method public registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/service/gesture/GestureListener;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "supportLandscape"    # Z

    .prologue
    .line 253
    iget-boolean v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    if-nez v4, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/service/gesture/GestureManager;->bindtoService()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v4, "GestureManager"

    const-string/jumbo v5, "registerListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p1, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "gestureListener":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .line 265
    .local v0, "delegate":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->getListener()Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    move-object v2, v0

    .line 271
    .end local v0    # "delegate":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    :cond_3
    if-nez v2, :cond_4

    .line 272
    new-instance v2, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .end local v2    # "gestureListener":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;-><init>(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/GestureListener;Landroid/os/Handler;)V

    .line 273
    .restart local v2    # "gestureListener":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v4, v2, p2, p3, p4}, Lcom/samsung/android/service/gesture/IGestureService;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "GestureManager"

    const-string v5, "RemoteException in registerListener: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetGestureService(Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/gesture/IGestureService;->resetGestureService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    .line 202
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.app.gestureservice.GESTURE_ACTIVE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/service/gesture/GestureManager;->airGesutreActiveStatusReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mGestureActive:Z

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/gesture/IGestureService;->sendInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindFromService()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mAirGestureActiveStatusFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->airGesutreActiveStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    .line 170
    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/service/gesture/GestureListener;

    .prologue
    .line 292
    const-string v0, "camera_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 293
    const-string v0, "ir_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v0, "tsp_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/service/gesture/GestureListener;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v4, "GestureManager"

    const-string/jumbo v5, "unregisterListener"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v2, 0x0

    .line 313
    .local v2, "gestureListener":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .line 315
    .local v0, "delegate":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->getListener()Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    move-object v2, v0

    .line 321
    .end local v0    # "delegate":Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    :cond_3
    if-eqz v2, :cond_0

    .line 326
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/service/gesture/IGestureService;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "GestureManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
