.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 4683
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4685
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4686
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MountService"

    const-string/jumbo v2, "mPolicyReceiver :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    iget-object v1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    const-string/jumbo v3, "storage_itpolicy"

    # invokes: Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v2

    # invokes: Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;Z)V

    .line 4688
    return-void
.end method
