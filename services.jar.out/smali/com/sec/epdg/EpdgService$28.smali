.class Lcom/sec/epdg/EpdgService$28;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 5482
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$28;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5485
    const-string v0, "[EPDGService]"

    const-string v1, "LTE NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5486
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsLteAvailable(Z)V

    .line 5487
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5493
    :cond_0
    :goto_0
    return-void

    .line 5490
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$28;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5491
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$28;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$11500(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0
.end method
