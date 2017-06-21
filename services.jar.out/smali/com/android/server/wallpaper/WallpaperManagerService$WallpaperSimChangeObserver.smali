.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperSimChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 2453
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 2456
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string/jumbo v6, "ril.ICC_TYPE"

    .line 2460
    .local v6, "SP_KEY_SIM_STATE_SIM":Ljava/lang/String;
    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2461
    .local v10, "simStateString":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2462
    .local v9, "simState":[Ljava/lang/String;
    const-string v7, "0"

    .line 2464
    .local v7, "SP_VALUE_SIM_STATE_ABSENT":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v9, :cond_1

    array-length v0, v9

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2465
    :cond_0
    const-string v0, "WallpaperManagerService"

    const-string v1, "This model not support Multi SIM"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :goto_0
    return-void

    .line 2469
    :cond_1
    const-string v0, "0"

    aget-object v1, v9, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "0"

    aget-object v1, v9, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2471
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "simState is ABSENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2475
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperForMultiSimSkip()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2476
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "multiSIM_skip ACTION_DEFAULT_CS_SIM_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2480
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2481
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 2482
    .local v8, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 2484
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_5

    .line 2485
    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->SimStatusVerify()I
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$702(Lcom/android/server/wallpaper/WallpaperManagerService;I)I

    .line 2487
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPrevSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2489
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mPrevSimId:I
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$902(Lcom/android/server/wallpaper/WallpaperManagerService;I)I

    .line 2490
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrSimId:I
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 2491
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2492
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2493
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2496
    :cond_5
    monitor-exit v11

    goto/16 :goto_0

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
