.class public Lcom/android/internal/telephony/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# instance fields
.field mAckPdu:Ljava/lang/String;

.field mErrorClass:I

.field mErrorCode:I

.field mMessageRef:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "errorClass"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    .line 47
    iput-object p2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 49
    iput p4, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorClass:I

    .line 50
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ mMessageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAckPdu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
