.class Lcom/android/server/input/InputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const-string/jumbo v2, "mlstatus"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 621
    .local v1, "mlstatus":I
    if-ne v1, v5, :cond_1

    .line 622
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V
    invoke-static {v2, v3, v5}, Lcom/android/server/input/InputManagerService;->access$800(JZ)V

    .line 627
    .end local v1    # "mlstatus":I
    :cond_0
    :goto_0
    return-void

    .line 624
    .restart local v1    # "mlstatus":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->access$800(JZ)V

    goto :goto_0
.end method
