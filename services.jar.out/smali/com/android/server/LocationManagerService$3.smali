.class Lcom/android/server/LocationManagerService$3;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
