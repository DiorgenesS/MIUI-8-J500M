.class Lcom/movial/ipphone/IPPhone$2;
.super Ljava/lang/Object;
.source "IPPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 292
    const-string v1, "IPPhone"

    const-string v2, "IIPService ServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-static {p2}, Lcom/movial/ipphone/IIPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;

    move-result-object v2

    # setter for: Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhone;->access$802(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;

    .line 294
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$900(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    const-wide/16 v2, 0x0

    # getter for: Lcom/movial/ipphone/IPPhone;->mTime:J
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1000()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$800(Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IIPService;

    move-result-object v1

    # getter for: Lcom/movial/ipphone/IPPhone;->mTime:J
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1000()J

    move-result-wide v2

    # getter for: Lcom/movial/ipphone/IPPhone;->mLac:I
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1100()I

    move-result v4

    # getter for: Lcom/movial/ipphone/IPPhone;->mCid:I
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1200()I

    move-result v5

    # getter for: Lcom/movial/ipphone/IPPhone;->mNetworkType:I
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1300()I

    move-result v6

    # getter for: Lcom/movial/ipphone/IPPhone;->mNetworkOperator:Ljava/lang/String;
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1400()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lcom/movial/ipphone/IIPService;->setCellLocation(JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->registerHandler()V

    .line 306
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$1500(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_1
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCellLocation FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v1, 0x0

    # setter for: Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v0, v1}, Lcom/movial/ipphone/IPPhone;->access$802(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;

    .line 314
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/movial/ipphone/IPPhone;->access$900(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    return-void
.end method
