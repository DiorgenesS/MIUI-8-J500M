.class Lcom/android/internal/telephony/cat/SendDTMFParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field dtmfString:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "dtmfString"    # [B

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 340
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    .line 341
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[BZ)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "dtmfString"    # [B
    .param p4, "hasIcon"    # Z

    .prologue
    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendDTMFParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V

    .line 345
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/SendDTMFParams;->setHasIconTag(Z)V

    .line 346
    return-void
.end method
