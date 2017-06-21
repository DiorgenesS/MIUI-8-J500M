.class public Lcom/android/internal/widget/RemoteLockInfo;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RemoteLockInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/RemoteLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowFailCount:I

.field public clientName:Ljava/lang/CharSequence;

.field public enableEmergencyCall:Z

.field public lockState:Z

.field public lockTimeOut:J

.field public lockType:I

.field public message:Ljava/lang/CharSequence;

.field public phoneNumber:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$1;

    invoke-direct {v0}, Lcom/android/internal/widget/RemoteLockInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "number"    # Ljava/lang/CharSequence;
    .param p5, "callbutton"    # Z
    .param p6, "name"    # Ljava/lang/CharSequence;
    .param p7, "count"    # I
    .param p8, "time"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 36
    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 37
    iput-object p3, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 38
    iput-object p4, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 39
    iput-boolean p5, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 40
    iput-object p6, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 41
    iput p7, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 42
    iput-wide p8, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 43
    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJLcom/android/internal/widget/RemoteLockInfo$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # Ljava/lang/CharSequence;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/CharSequence;
    .param p7, "x6"    # I
    .param p8, "x7"    # J
    .param p10, "x8"    # Lcom/android/internal/widget/RemoteLockInfo$1;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockType:I
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$000(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 47
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockState:Z
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$100(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 48
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$200(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 49
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mPhoneNumber:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$300(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 50
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mEnableEmergencyCall:Z
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$400(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 51
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mClientName:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$500(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 52
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mAllowFailCount:I
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$600(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 53
    # getter for: Lcom/android/internal/widget/RemoteLockInfo$Builder;->mLockTimeOut:J
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$700(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    new-array v1, v4, [Z

    .line 137
    .local v1, "typeBooleanArray":[Z
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    aput-boolean v2, v1, v3

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 141
    new-array v0, v4, [Z

    .line 142
    .local v0, "EMCBooleanArray":[Z
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    aput-boolean v2, v0, v3

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 145
    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-wide v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    return-void
.end method
