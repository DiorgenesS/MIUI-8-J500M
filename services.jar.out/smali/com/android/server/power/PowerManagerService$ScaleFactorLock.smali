.class Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleFactorLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4899
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4901
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binder:Landroid/os/IBinder;

    .line 4903
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4907
    :goto_0
    return-void

    .line 4904
    :catch_0
    move-exception v0

    .line 4905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 4910
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4911
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "ScaleFactorLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/high16 v2, -0x40800000    # -1.0f

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$4802(Lcom/android/server/power/PowerManagerService;F)F

    .line 4914
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$4902(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .line 4915
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 4917
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 4918
    monitor-exit v1

    .line 4919
    return-void

    .line 4918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
