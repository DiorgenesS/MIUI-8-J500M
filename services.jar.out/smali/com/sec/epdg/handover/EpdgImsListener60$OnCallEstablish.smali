.class Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;
.super Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCallEstablish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;->this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallEstablish: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$900()Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 349
    return-void
.end method
