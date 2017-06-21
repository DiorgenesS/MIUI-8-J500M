.class Lcom/android/server/aod/AODManagerService$AODConnection$1;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AOD ServiceConnected!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    .line 287
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAlwaysOnDisplayService as binder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/android/server/aod/AODManagerService$1;->$SwitchMap$com$android$server$aod$AODManagerService$AODConnectionCause:[I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->getType(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
