.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static final EMPTY_APP_PERCENT:I

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_ABNORMAL:I = -0x3

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_CACHED:I = -0x2

.field static final SCHED_GROUP_DEFAULT:I = 0x1

.field static final SCHED_GROUP_FOREGROUND_BOOST:I = 0x5

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_MARGIN_MIN_HIGH:J

.field static final SMART_DHA_MARGIN_MIN_LOW:J

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static final TRIM_CACHE_PERCENT:I

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final USE_TRIM_SETTINGS:Z

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static Y_FHA_Enable:Z

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field private mExtraFreeKBytes:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeHigh32Bit:[I

.field private final mOomMinFreeHigh_FHA:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFreeLow32Bit:[I

.field private final mOomMinFreeLow_FHA:[I

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/16 v4, 0x11

    .line 60
    sput-boolean v2, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 152
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 166
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    .line 177
    const/16 v0, 0x20

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 180
    const-string/jumbo v0, "ro.sys.fw.use_trim_settings"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    .line 182
    const-string/jumbo v0, "ro.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    .line 183
    const-string/jumbo v0, "ro.sys.fw.trim_empty_percent"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    .line 185
    const-string/jumbo v0, "ro.sys.fw.trim_cache_percent"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    .line 187
    const-string/jumbo v0, "ro.sys.fw.trim_enable_memory"

    const-wide/32 v2, 0x40000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    .line 195
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 207
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimEmptyApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 218
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimCachedApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 221
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 224
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 289
    const-string/jumbo v0, "ro.config.y_fha_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->Y_FHA_Enable:Z

    .line 295
    const-string/jumbo v0, "ro.config.sdha_margin_min_low"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    .line 296
    const-string/jumbo v0, "ro.config.sdha_margin_min_high"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    .line 298
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 299
    const-string/jumbo v0, "ro.config.sdha_apps_bg_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 730
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 750
    new-array v0, v4, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 770
    new-array v0, v4, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 790
    new-array v0, v4, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 810
    new-array v0, v4, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    .line 730
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 750
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 770
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 790
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 810
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x6

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 245
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    .line 250
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    .line 256
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 262
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 268
    new-array v1, v2, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow_FHA:[I

    .line 273
    new-array v1, v2, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh_FHA:[I

    .line 280
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 285
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 287
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 292
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 293
    sget-wide v2, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 301
    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    .line 312
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 313
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 315
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 316
    return-void

    .line 239
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 245
    :array_1
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 250
    :array_2
    .array-data 4
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 256
    :array_3
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 262
    :array_4
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x36ee8
        0x4f588
    .end array-data

    .line 268
    :array_5
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 273
    :array_6
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static allowTrim()Z
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 668
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 669
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 670
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 674
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 562
    if-ne p2, p3, :cond_1

    .line 563
    if-nez p1, :cond_0

    .line 566
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 564
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 554
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    .line 557
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 840
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 849
    .local v0, "table":[J
    :goto_0
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_4

    .line 850
    :cond_0
    const-string v1, "ActivityManager"

    const-string v2, "Invalid Process State within computeNextPssTime"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-wide/16 v2, 0x3a98

    add-long/2addr v2, p4

    .line 855
    :goto_1
    return-wide v2

    .line 840
    .end local v0    # "table":[J
    :cond_1
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    .line 855
    .restart local v0    # "table":[J
    :cond_4
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    goto :goto_1
.end method

.method public static computeTrimCachedApps()I
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 215
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static computeTrimEmptyApps()I
    .locals 1

    .prologue
    .line 201
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 204
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 570
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 571
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    .line 572
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 573
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 575
    const-string/jumbo v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 577
    const-string/jumbo v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 579
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 581
    const-string/jumbo v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 583
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 585
    const-string/jumbo v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_7
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    .line 587
    const-string/jumbo v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_8
    if-ltz p0, :cond_9

    .line 589
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_9
    if-lt p0, v5, :cond_a

    .line 591
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_a
    if-lt p0, v4, :cond_b

    .line 593
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_b
    if-lt p0, v3, :cond_c

    .line 595
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 596
    :cond_c
    if-lt p0, v1, :cond_d

    .line 597
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 599
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 605
    packed-switch p0, :pswitch_data_0

    .line 661
    const-string v0, "??"

    .line 664
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 607
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 608
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 610
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 611
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 613
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 614
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 616
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 617
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 619
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "SB"

    .line 620
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 622
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SF"

    .line 623
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 625
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "TS"

    .line 626
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 628
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "IF"

    .line 629
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 631
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "IB"

    .line 632
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 634
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "BU"

    .line 635
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HW"

    .line 638
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 640
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "S "

    .line 641
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 643
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "R "

    .line 644
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 646
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "HO"

    .line 647
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 649
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "LA"

    .line 650
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 652
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CA"

    .line 653
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 655
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "Ca"

    .line 656
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 658
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CE"

    .line 659
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    .line 835
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    .line 950
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 951
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 954
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_0
    return v1

    .line 955
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 956
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 958
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 831
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 942
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 943
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 944
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 945
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 946
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 921
    if-ne p2, v1, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 925
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 926
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 927
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 928
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 929
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 930
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 931
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 932
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 933
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 158
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 160
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 32
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x15e

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x43af0000    # 350.0f

    div-float v23, v27, v28

    .line 337
    .local v23, "scaleMem":F
    const v12, 0x5dc00

    .line 338
    .local v12, "minSize":I
    const v10, 0xfa000

    .line 340
    .local v10, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x600

    cmp-long v27, v28, v30

    if-gez v27, :cond_1

    mul-int v27, p1, p2

    const v28, 0xfa000

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x12c

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x44b54000    # 1450.0f

    div-float v23, v27, v28

    .line 344
    const v12, 0x25800

    .line 345
    const v10, 0x1fa400

    .line 348
    :cond_1
    mul-int v27, p1, p2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    sub-float v27, v27, v28

    sub-int v28, v10, v12

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v22, v27, v28

    .line 355
    .local v22, "scaleDisp":F
    cmpl-float v27, v23, v22

    if-lez v27, :cond_7

    move/from16 v21, v23

    .line 357
    .local v21, "scale":F
    :goto_0
    const/16 v27, 0x0

    cmpg-float v27, v21, v27

    if-gez v27, :cond_8

    const/16 v21, 0x0

    .line 360
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0009

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 362
    .local v14, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0008

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 369
    .local v13, "minfree_abs":I
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v27, :cond_3

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_3

    .line 370
    sget v21, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 372
    :cond_3
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-eqz v27, :cond_4

    .line 373
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    .line 377
    :cond_4
    sget-boolean v27, Lcom/android/server/am/ProcessList;->Y_FHA_Enable:Z

    if-eqz v27, :cond_5

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_5

    .line 378
    sget v21, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 385
    :cond_5
    sget-object v27, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_9

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    if-eqz v27, :cond_9

    const/4 v7, 0x1

    .line 387
    .local v7, "is64bit":Z
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_d

    .line 388
    const/4 v8, 0x0

    .line 389
    .local v8, "low":I
    const/4 v5, 0x0

    .line 391
    .local v5, "high":I
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-eqz v27, :cond_b

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow_FHA:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh_FHA:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    .line 395
    if-eqz v7, :cond_6

    .line 397
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v6, v0, :cond_a

    mul-int/lit8 v27, v5, 0x3

    div-int/lit8 v5, v27, 0x2

    .line 417
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    sub-int v29, v5, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v21

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 387
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v13    # "minfree_abs":I
    .end local v14    # "minfree_adj":I
    .end local v21    # "scale":F
    :cond_7
    move/from16 v21, v22

    .line 355
    goto/16 :goto_0

    .line 358
    .restart local v21    # "scale":F
    :cond_8
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v21, v27

    if-lez v27, :cond_2

    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 385
    .restart local v13    # "minfree_abs":I
    .restart local v14    # "minfree_adj":I
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 398
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v8    # "low":I
    :cond_a
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v6, v0, :cond_6

    mul-int/lit8 v27, v5, 0x7

    div-int/lit8 v5, v27, 0x4

    goto :goto_4

    .line 401
    :cond_b
    if-eqz v7, :cond_c

    .line 405
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 64 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_4

    .line 412
    :cond_c
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 32 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_4

    .line 421
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_d
    const-string/jumbo v27, "ro.config.oomminfree"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 422
    .local v17, "prop_mOomMinFreeHigh":Ljava/lang/String;
    const-string v27, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, "minFreeHighStr":[Ljava/lang/String;
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 425
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_e

    .line 426
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values with cofing values"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v11, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    aput v28, v27, v6

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 433
    :cond_e
    if-ltz v13, :cond_f

    .line 434
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_f

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v13

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v29, v0

    aget v29, v29, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 434
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 440
    :cond_f
    if-eqz v14, :cond_11

    .line 441
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_11

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v28, v27, v6

    int-to-float v0, v14

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v30, v0

    aget v30, v30, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    aput v28, v27, v6

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    if-gez v27, :cond_10

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v6

    .line 441
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 453
    :cond_11
    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 457
    mul-int v27, p1, p2

    mul-int/lit8 v27, v27, 0x4

    mul-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    .line 458
    .local v18, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 459
    .local v20, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 461
    .local v19, "reserve_abs":I
    if-ltz v19, :cond_12

    .line 462
    move/from16 v18, v19

    .line 465
    :cond_12
    if-eqz v20, :cond_13

    .line 466
    add-int v18, v18, v20

    .line 467
    if-gez v18, :cond_13

    .line 468
    const/16 v18, 0x0

    .line 491
    :cond_13
    const-string/jumbo v27, "none"

    sget-object v28, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_14

    .line 492
    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, "mMinFreeProperty":[Ljava/lang/String;
    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "updateOomLevels using LMKArray "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v6, 0x0

    :goto_8
    :try_start_0
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_14

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v9, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    aput v28, v27, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 499
    :catch_0
    move-exception v16

    .line 500
    .local v16, "nfe":Ljava/lang/NumberFormatException;
    const-string v27, "ActivityManager"

    const-string/jumbo v28, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v9    # "mMinFreeProperty":[Ljava/lang/String;
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    :cond_14
    if-eqz p3, :cond_16

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v27, v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 507
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 508
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_15

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 508
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 513
    :cond_15
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 515
    const-string/jumbo v27, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    .line 523
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_16
    sget-wide v28, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    sget-wide v28, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    sget-wide v30, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v21

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 528
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v26, "strMinFreeLow":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v25, "strMinFreeHigh":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v24, "strMinFree":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "nCnt":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_18

    .line 533
    if-lez v15, :cond_17

    .line 534
    const/16 v27, 0x2c

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    const/16 v27, 0x2c

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    const/16 v27, 0x2c

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 544
    :cond_18
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeLow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeHigh: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Scale: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MinFreeKbytesAbsolute: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Final MinFree: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1012
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1017
    if-eqz v2, :cond_2

    .line 1019
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1024
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1020
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 1021
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1014
    :catch_1
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1017
    if-eqz v1, :cond_0

    .line 1019
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1020
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1017
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 1019
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1021
    :cond_1
    :goto_3
    throw v3

    .line 1020
    :catch_3
    move-exception v4

    goto :goto_3

    .line 1017
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1014
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 966
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 967
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    .line 968
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 966
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 991
    :cond_1
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :try_start_2
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 988
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 971
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 985
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 320
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 321
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 322
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 323
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 324
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 325
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 326
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 329
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 872
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 6

    .prologue
    .line 897
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 898
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 900
    :cond_0
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v0

    .line 901
    .local v0, "watermark":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 903
    .end local v0    # "watermark":J
    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v2
.end method

.method getLMKThreshold(I)J
    .locals 2
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 878
    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 864
    :goto_1
    return-wide v2

    .line 859
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 6

    .prologue
    .line 882
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 884
    .local v0, "margin":J
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v2, :cond_0

    .line 885
    long-to-float v2, v0

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 889
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 890
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    add-long/2addr v0, v2

    .line 893
    :cond_1
    return-wide v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .locals 1
    .param p1, "margin"    # J

    .prologue
    .line 907
    iput-wide p1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 908
    return-void
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 998
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 999
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1002
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 1003
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 994
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 995
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1006
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 1007
    return-void
.end method

.method public updateLMKThreshold()V
    .locals 3

    .prologue
    .line 1028
    iget v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1029
    return-void
.end method
