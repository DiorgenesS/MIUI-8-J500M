.class public Landroid/sec/enterprise/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field public static final NOT_SET_LONG:J

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "DateTimePolicy"

    sput-object v0, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDateTimeChangeEnabled()Z
    .locals 4

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 50
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDateTimeChangeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isDateTimeChangeEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
