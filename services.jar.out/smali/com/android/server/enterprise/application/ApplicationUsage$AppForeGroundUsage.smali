.class Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppForeGroundUsage"
.end annotation


# instance fields
.field appLastLaunchTime:J

.field appLastPausetime:J

.field appLaunchCount:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 137
    iput-wide v2, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 138
    iput-wide v2, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationUsage$1;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>()V

    return-void
.end method
