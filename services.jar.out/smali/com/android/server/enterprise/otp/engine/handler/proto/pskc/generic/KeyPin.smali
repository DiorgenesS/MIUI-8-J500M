.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;
.super Ljava/lang/Object;
.source "KeyPin.java"


# static fields
.field private static mInstance:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;


# instance fields
.field mKeyPin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mInstance:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getKeyPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mKeyPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeyPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "mKeyPin"    # Ljava/lang/String;

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->mKeyPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
