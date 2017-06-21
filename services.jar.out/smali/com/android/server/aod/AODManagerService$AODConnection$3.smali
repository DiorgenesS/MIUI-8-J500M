.class Lcom/android/server/aod/AODManagerService$AODConnection$3;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$3;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$3;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iput-object v2, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    .line 323
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$3;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    invoke-static {v0, v2}, Lcom/android/server/aod/AODManagerService;->access$502(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnection;)Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 324
    return-void
.end method
