.class Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "CaBootStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-nez p2, :cond_2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
