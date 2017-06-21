.class public Lcom/android/internal/widget/RemoteLockInfo$Builder;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFailCount:I

.field private mClientName:Ljava/lang/CharSequence;

.field private mEnableEmergencyCall:Z

.field private mLockState:Z

.field private mLockTimeOut:J

.field private mLockType:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhoneNumber:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 60
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 62
    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 63
    iput v1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 67
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    .line 68
    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V

    return-object v0
.end method

.method public setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I

    .line 93
    return-object p0
.end method

.method public setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;

    .line 88
    return-object p0
.end method

.method public setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z

    .line 83
    return-object p0
.end method

.method public setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J

    .line 98
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 73
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;
    .locals 0
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 78
    return-object p0
.end method
