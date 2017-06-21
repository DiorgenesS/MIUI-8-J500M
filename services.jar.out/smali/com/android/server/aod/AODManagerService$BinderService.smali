.class final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "x1"    # Lcom/android/server/aod/AODManagerService$1;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public isAODState()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 226
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 228
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIII)V
    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$200(Lcom/android/server/aod/AODManagerService;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
