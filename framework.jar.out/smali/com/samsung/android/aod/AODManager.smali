.class public Lcom/samsung/android/aod/AODManager;
.super Ljava/lang/Object;
.source "AODManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AODManager"


# instance fields
.field mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/aod/IAODManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/aod/IAODManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/aod/IAODManager;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v0, "AODManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/aod/IAODManager;
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v1, :cond_0

    .line 40
    const-string v1, "AODManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    .line 43
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object v1
.end method


# virtual methods
.method public isAODState()Z
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1}, Lcom/samsung/android/aod/IAODManager;->isAODState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAODTspRect(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
