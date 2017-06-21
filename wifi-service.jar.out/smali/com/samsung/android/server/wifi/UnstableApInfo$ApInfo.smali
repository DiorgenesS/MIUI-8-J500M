.class Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/UnstableApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApInfo"
.end annotation


# static fields
.field private static final MAX_RESET_HISTORY_DURATION:J = 0x2932e00L


# instance fields
.field public counter:I

.field public isMobileHotspot:Z

.field public level:I

.field public startTime:J

.field public time:J

.field public totalDisabledCounter:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 309
    iput v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 310
    iput v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 311
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    .line 312
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 313
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 317
    return-void
.end method


# virtual methods
.method public resetHistory()V
    .locals 6

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 321
    .local v0, "now":J
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 322
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 323
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 325
    :cond_0
    return-void
.end method
