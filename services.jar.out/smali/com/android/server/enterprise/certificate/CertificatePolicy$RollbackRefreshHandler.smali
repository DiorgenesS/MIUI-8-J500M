.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
.super Landroid/os/Handler;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 933
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 934
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 938
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 961
    :goto_0
    return-void

    .line 942
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->execute(II)V

    goto :goto_0

    .line 950
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->initPendingActionList()V

    goto :goto_0

    .line 958
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->removeUserIdFromPendingList(I)Z

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
