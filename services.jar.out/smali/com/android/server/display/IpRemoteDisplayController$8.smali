.class Lcom/android/server/display/IpRemoteDisplayController$8;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->val$deviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 498
    const/4 v3, 0x0

    .line 499
    .local v3, "mUri":Landroid/net/Uri;
    const/16 v2, 0x1c44

    .line 500
    .local v2, "mCtrlPort":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->val$addr:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "SourceAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 503
    const-string v5, "IpRemoteDisplayController"

    const-string v6, "Failed to launch WfdPlayer, addr is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "SourceAddress":Ljava/lang/String;
    :goto_0
    return-void

    .line 507
    .restart local v0    # "SourceAddress":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v4, "tempIntent":Landroid/content/Intent;
    const-string v5, "com.sec.allsharecastplayer"

    const-string v6, "com.sec.allsharecastplayer.WfdPlayer"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/high16 v5, 0x30800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wfd://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 514
    const-string v5, "IpRemoteDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 516
    const-string/jumbo v5, "launchMode"

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->val$deviceType:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v0    # "SourceAddress":Ljava/lang/String;
    .end local v4    # "tempIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IpRemoteDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to launch WfdPlayer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
