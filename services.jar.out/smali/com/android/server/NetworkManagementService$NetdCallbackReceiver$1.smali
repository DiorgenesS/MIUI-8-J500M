.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)V

    .line 852
    return-void
.end method
