.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CpuCtlRequest;,
        Landroid/os/CustomFrequencyManager$CpuSetRequest;,
        Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;,
        Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;,
        Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;,
        Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;,
        Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;,
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;,
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;
    }
.end annotation


# static fields
.field public static final CPUCTL:I = 0x11

.field public static final CPUSET:I = 0x10

.field public static final CPU_CORE_NUM_MAX_LIMIT:I = 0x5

.field public static final CPU_CORE_NUM_MIN_LIMIT:I = 0x4

.field public static final CPU_DISABLE_CSTATE:I = 0xc

.field public static final CPU_HOTPLUG_DISABLE:I = 0xe

.field public static final CPU_LEGACY_SCHEDULER:I = 0xd

.field private static final DEBUG:Z

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FREQUENCY_BUS_TYPE_BOOST_MAX_LIMIT:I = 0xb

.field public static final FREQUENCY_BUS_TYPE_BOOST_MIN_LIMIT:I = 0xa

.field public static final FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT:I = 0x7

.field public static final FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT:I = 0x6

.field public static final FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final FREQUENCY_MMC_TYPE_BURST_MODE:I = 0x8

.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_GPU_MAX:I = 0x9

.field public static final PCIE_PSM_DISABLE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"

.field private static final lock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mServerAppToken:Landroid/os/IBinder;


# instance fields
.field private infinitCPUBoostServing:Z

.field private infinitCPUCoreServing:Z

.field private infinitGPUServing:Z

.field private infinitLCDFrameReqServing:Z

.field private infinitSysBusReqServing:Z

.field mHandler:Landroid/os/Handler;

.field mHeld:Z

.field mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    .line 88
    const/4 v0, 0x0

    sput-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 875
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 971
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    .line 973
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    .line 975
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    .line 977
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    .line 979
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Landroid/os/ICustomFrequencyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    .line 971
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    .line 973
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    .line 975
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    .line 977
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    .line 979
    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    .line 103
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 104
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Exception;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Landroid/os/CustomFrequencyManager;->createServerAppToken()V

    return-void
.end method

.method static synthetic access$502(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    return p1
.end method

.method static synthetic access$602(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    return p1
.end method

.method static synthetic access$702(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    return p1
.end method

.method static synthetic access$802(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    return p1
.end method

.method private static declared-synchronized createServerAppToken()V
    .locals 2

    .prologue
    .line 301
    const-class v1, Landroid/os/CustomFrequencyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit v1

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 982
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 983
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    return-void
.end method

.method private newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 7
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 891
    const-string v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newFrequencyRequest  - mFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 894
    :cond_0
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 920
    :goto_0
    return-object v0

    .line 895
    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 897
    :cond_2
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 899
    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 900
    :cond_4
    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 901
    :cond_5
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_6
    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 904
    :cond_7
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 905
    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 906
    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    .line 908
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_a
    const/16 v0, 0xd

    if-ne p1, v0, :cond_b

    .line 910
    new-instance v0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_b
    const/16 v0, 0xe

    if-ne p1, v0, :cond_c

    .line 912
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_c
    const/16 v0, 0xf

    if-ne p1, v0, :cond_d

    .line 914
    new-instance v0, Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto/16 :goto_0

    .line 915
    :cond_d
    const/16 v0, 0x10

    if-ne p1, v0, :cond_e

    .line 916
    new-instance v0, Landroid/os/CustomFrequencyManager$CpuSetRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CpuSetRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :cond_e
    const/16 v0, 0x11

    if-ne p1, v0, :cond_f

    .line 918
    new-instance v0, Landroid/os/CustomFrequencyManager$CpuCtlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CpuCtlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 94
    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireGovernorParameter(Landroid/content/Intent;)V
    .locals 1
    .param p1, "param"    # Landroid/content/Intent;

    .prologue
    .line 1220
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->acquireGovernorParameter(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteBatteryStatsDataBase()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1082
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1091
    :goto_0
    return v1

    .line 1087
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->deleteBatteryStatsDatabase()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAbusiveAppList()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1137
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1138
    new-array v1, v2, [Ljava/lang/String;

    .line 1145
    :goto_0
    return-object v1

    .line 1141
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getAbusiveAppList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 1145
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getBatteryDeltaSum(I)I
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 1096
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1105
    :goto_0
    return v1

    .line 1101
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryDeltaSum(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryRemainingUsageTime(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 1053
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1062
    :goto_0
    return v1

    .line 1058
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning RemainingUsageTime : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryStatistics(I)[B
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1076
    :goto_0
    return-object v1

    .line 1072
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryStatistics(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem returning batteryStats : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryTotalCapacity()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1110
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 1118
    :goto_0
    return v1

    .line 1114
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getBatteryTotalCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem getting battery total capacity : e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, "policyIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1156
    :goto_0
    return-object v1

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "numOfItems"    # I

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "result":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1214
    :cond_0
    :goto_0
    return-object v0

    .line 1212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getGameThrottlingLevel()I
    .locals 2

    .prologue
    .line 1181
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1182
    const/4 v0, 0x0

    .line 1190
    :goto_0
    return v0

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .line 1187
    .local v0, "level":I
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getGameThrottlingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 1123
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1132
    :goto_0
    return-wide v2

    .line 1126
    :cond_0
    const-string v1, "CustomFrequencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSavedTimeAfterKilling called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "problem returning saved time : e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 131
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return v1

    .line 136
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 114
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return v1

    .line 119
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 152
    :goto_0
    return-object v1

    .line 149
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUCoreNum()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return-object v1

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 165
    :goto_0
    return-object v1

    .line 162
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedLCDFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 204
    :goto_0
    return-object v1

    .line 201
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedLCDFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-object v1

    .line 175
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public mpdUpdate(I)V
    .locals 4
    .param p1, "mpEnable"    # I

    .prologue
    .line 954
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 963
    :goto_0
    return-void

    .line 958
    :cond_0
    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager mpUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->mpdUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 3
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "timeout"    # J
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 881
    sget-object v2, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 882
    :try_start_0
    sput-object p6, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 883
    invoke-direct/range {p0 .. p5}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v0

    .line 884
    .local v0, "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    const/4 v1, 0x0

    sput-object v1, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    .line 885
    monitor-exit v2

    .line 886
    return-object v0

    .line 885
    .end local v0    # "req":Landroid/os/CustomFrequencyManager$FrequencyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyWmAniationState(JZ)V
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 989
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 997
    :goto_0
    return-void

    .line 993
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ICustomFrequencyManager;->notifyWmAniationState(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onTopAppChanged(Z)V
    .locals 3
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 925
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 937
    :goto_0
    return-void

    .line 929
    :cond_0
    if-eqz p1, :cond_1

    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 932
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 70 --util_l 60"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public releaseGovernorParameter()V
    .locals 1

    .prologue
    .line 1230
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0}, Landroid/os/ICustomFrequencyManager;->releaseGovernorParameter()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestCPUUpdate(II)V
    .locals 4
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 941
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_0
    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager requestCPUUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->requestCPUUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "Packagename"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1024
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1011
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGameFps(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1172
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameFps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGamePowerSaving(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1162
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGamePowerSaving(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGameTurboMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1196
    :try_start_0
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->setGameTurboMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHglPolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1037
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setHglPolicy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
