.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_CURRENT_TIME:B = 0x5t

.field public static final CMD_NULL:B = -0x1t

.field public static final CMD_OVERFLOW:B = 0x6t

.field public static final CMD_RESET:B = 0x7t

.field public static final CMD_SHUTDOWN:B = 0x8t

.field public static final CMD_START:B = 0x4t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final EVENT_ACTIVE:I = 0xa

.field public static final EVENT_ALARM:I = 0xd

.field public static final EVENT_ALARM_FINISH:I = 0x400d

.field public static final EVENT_ALARM_START:I = 0x800d

.field public static final EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final EVENT_COUNT:I = 0x13

.field public static final EVENT_FLAG_FINISH:I = 0x4000

.field public static final EVENT_FLAG_START:I = 0x8000

.field public static final EVENT_FOREGROUND:I = 0x2

.field public static final EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final EVENT_FOREGROUND_START:I = 0x8002

.field public static final EVENT_JOB:I = 0x6

.field public static final EVENT_JOB_FINISH:I = 0x4006

.field public static final EVENT_JOB_START:I = 0x8006

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final EVENT_PROC:I = 0x1

.field public static final EVENT_PROC_FINISH:I = 0x4001

.field public static final EVENT_PROC_START:I = 0x8001

.field public static final EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final EVENT_SYNC:I = 0x4

.field public static final EVENT_SYNC_FINISH:I = 0x4004

.field public static final EVENT_SYNC_START:I = 0x8004

.field public static final EVENT_TEMP_WHITELIST:I = 0x11

.field public static final EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final EVENT_TOP:I = 0x3

.field public static final EVENT_TOP_FINISH:I = 0x4003

.field public static final EVENT_TOP_START:I = 0x8003

.field public static final EVENT_TYPE_MASK:I = -0xc001

.field public static final EVENT_USER_FOREGROUND:I = 0x8

.field public static final EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final EVENT_USER_RUNNING:I = 0x7

.field public static final EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final EVENT_USER_RUNNING_START:I = 0x8007

.field public static final EVENT_WAKE_LOCK:I = 0x5

.field public static final EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final MOST_INTERESTING_STATES:I = 0x180000

.field public static final MOST_INTERESTING_STATES2:I = -0x68800000

.field public static final SETTLE_TO_ZERO_STATES:I = -0x190000

.field public static final SETTLE_TO_ZERO_STATES2:I = 0x687f0000

.field public static final STATE2_BLUETOOTH_ON_FLAG:I = 0x800000

.field public static final STATE2_CAMERA_FLAG:I = 0x400000

.field public static final STATE2_CHARGING_FLAG:I = 0x2000000

.field public static final STATE2_DEVICE_IDLE_FLAG:I = 0x4000000

.field public static final STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final STATE2_PHONE_IN_CALL_FLAG:I = 0x1000000

.field public static final STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x6

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public ap_temp:B

.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:S

.field public batteryVoltage:C

.field public cmd:B

.field public current:S

.field public currentTime:J

.field public eventCode:I

.field public eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public numReadInts:I

.field public pst_temp:B

.field public states:I

.field public states2:I

.field public stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public time:J

.field public wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public wakelockTag:Landroid/os/BatteryStats$HistoryTag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1261
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1262
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1263
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1266
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1261
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1262
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1263
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1269
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1270
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 1271
    invoke-virtual {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 1272
    return-void
.end method

.method private setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v2, 0x0

    .line 1397
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1398
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1399
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1400
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1401
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1403
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1404
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1405
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1407
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1408
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1409
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1410
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1412
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1416
    :goto_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1418
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1422
    :goto_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1423
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2

    .line 1424
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1425
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1429
    :goto_2
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1430
    return-void

    .line 1414
    :cond_0
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_0

    .line 1420
    :cond_1
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_1

    .line 1427
    :cond_2
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1364
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1365
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1366
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1367
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1368
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1369
    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1371
    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1372
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1373
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1375
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1376
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1377
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1378
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1379
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1380
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1381
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1382
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public isDeltaData()Z
    .locals 1

    .prologue
    .line 1083
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const v5, 0xffff

    .line 1316
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1317
    .local v3, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1318
    .local v0, "bat":I
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1319
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1320
    shr-int/lit8 v4, v0, 0x10

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1321
    shr-int/lit8 v4, v0, 0x14

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1322
    shr-int/lit8 v4, v0, 0x18

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    .local v1, "bat2":I
    and-int v4, v1, v5

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1325
    shr-int/lit8 v4, v1, 0x10

    and-int/2addr v4, v5

    int-to-char v4, v4

    iput-char v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1328
    .local v2, "bat3":I
    and-int v4, v2, v5

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1329
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1330
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1334
    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 1335
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1336
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1340
    :goto_0
    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 1341
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1342
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1346
    :goto_1
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1348
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1349
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1354
    :goto_2
    iget-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 1355
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1359
    :goto_3
    iget v4, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 1360
    return-void

    .line 1338
    :cond_1
    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_0

    .line 1344
    :cond_2
    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_1

    .line 1351
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1352
    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_2

    .line 1357
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_3
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v1, v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return v0

    .line 1453
    :cond_1
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v1, v2, :cond_2

    .line 1454
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    :cond_2
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v1, v2, :cond_3

    .line 1462
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    :cond_3
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v1, v2, :cond_4

    .line 1470
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_0

    .line 1473
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 4
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1433
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1391
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1392
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1393
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1394
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1385
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1386
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1387
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1388
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v6, 0xffff

    const/4 v2, 0x0

    .line 1279
    iget-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1280
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xf0000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v3, v3, 0x14

    const/high16 v4, 0xf00000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, 0xf000000

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_6

    const/high16 v1, 0x10000000

    :goto_0
    or-int/2addr v3, v1

    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_7

    const/high16 v1, 0x20000000

    :goto_1
    or-int/2addr v1, v3

    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    :cond_0
    or-int v0, v1, v2

    .line 1288
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    and-int/2addr v1, v6

    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 1291
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    and-int/2addr v1, v6

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 1296
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1303
    :cond_1
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_2

    .line 1304
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1306
    :cond_2
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_3

    .line 1307
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1310
    :cond_3
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 1311
    :cond_4
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1313
    :cond_5
    return-void

    .end local v0    # "bat":I
    :cond_6
    move v1, v2

    .line 1280
    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method
