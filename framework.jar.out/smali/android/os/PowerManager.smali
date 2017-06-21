.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final ACTION_SCREEN_BRIGHTNESS_BOOST_CHANGED:Ljava/lang/String; = "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

.field public static final ALPM_2NIT:I = 0x1

.field public static final ALPM_HLPM_OFF:I = 0x0

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final BUTTON_KEY_LIGHT:Ljava/lang/String; = "button_key_light"

.field public static final BUTTON_KEY_LIGHT_ALWAYS_ON:I = -0x1

.field public static final BUTTON_KEY_LIGHT_OFF:I = 0x0

.field public static final BUTTON_KEY_LIGHT_ON_1500:I = 0x5dc

.field public static final BUTTON_KEY_LIGHT_ON_3000:I = 0xbb8

.field public static final BUTTON_KEY_LIGHT_ON_6000:I = 0x1770

.field public static final BUTTON_KEY_LIGHT_ON_AT_NIGHT:I = -0x3

.field public static final BUTTON_KEY_LIGHT_ON_IF_DARK:I = -0x2

.field public static final DISPLAY_ID_ALL:I = 0x2

.field public static final DISPLAY_ID_COUNT:I = 0x3

.field public static final DISPLAY_ID_MAIN:I = 0x0

.field public static final DISPLAY_ID_SUB:I = 0x1

.field public static final DISPLAY_NONE:I = -0x1

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final DRAW_WAKE_LOCK:I = 0x80

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x7

.field public static final GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final MOODLIGHT_MODE_ASSISTIVE_ALERT_BATTERY:I = 0x4

.field public static final MOODLIGHT_MODE_ASSISTIVE_ALERT_DATA:I = 0x6

.field public static final MOODLIGHT_MODE_ASSISTIVE_ALERT_STORAGE:I = 0x5

.field public static final MOODLIGHT_MODE_CALL:I = 0x2

.field public static final MOODLIGHT_MODE_CAMERA:I = 0x0

.field public static final MOODLIGHT_MODE_CHARGING:I = 0x1

.field public static final MOODLIGHT_MODE_NOTIFICATION:I = 0x3

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMARTGLOW_MODE_ASSISTIVE_ALERT_BATTERY:I = 0x4

.field public static final SMARTGLOW_MODE_ASSISTIVE_ALERT_DATA:I = 0x6

.field public static final SMARTGLOW_MODE_ASSISTIVE_ALERT_STORAGE:I = 0x5

.field public static final SMARTGLOW_MODE_CALL:I = 0x2

.field public static final SMARTGLOW_MODE_CAMERA:I = 0x0

.field public static final SMARTGLOW_MODE_CHARGING:I = 0x1

.field public static final SMARTGLOW_MODE_DEMO:I = 0x7

.field public static final SMARTGLOW_MODE_NOTIFICATION:I = 0x3

.field public static final SUBSCREEN_OFF_REASON_API:I = 0x0

.field public static final SUBSCREEN_OFF_REASON_SENSOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_BUTTON_TOUCH:I = 0x3

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAIT_FOR_DISTANT_PROXIMITY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final WAKE_UP_REASON_APPLICATION_WINDOW_MANAGER_TURN_ON_FLAG:I = 0x11

.field public static final WAKE_UP_REASON_CAMERA_LENS_COVER:I = 0x3

.field public static final WAKE_UP_REASON_COVER_OPEN:I = 0x6

.field public static final WAKE_UP_REASON_DOCK:I = 0x9

.field public static final WAKE_UP_REASON_DREAM:I = 0x8

.field public static final WAKE_UP_REASON_EAR_JACK:I = 0xc

.field public static final WAKE_UP_REASON_GESTURE:I = 0x7

.field public static final WAKE_UP_REASON_HDMI:I = 0xa

.field public static final WAKE_UP_REASON_KEY:I = 0x1

.field public static final WAKE_UP_REASON_LID_SWITCH:I = 0x5

.field public static final WAKE_UP_REASON_MOTION:I = 0x2

.field public static final WAKE_UP_REASON_POWER:I = 0xb

.field public static final WAKE_UP_REASON_PROXIMITY:I = 0x10

.field public static final WAKE_UP_REASON_SANDMAN:I = 0xf

.field public static final WAKE_UP_REASON_SENSOR_CA:I = 0xd

.field public static final WAKE_UP_REASON_SPEN:I = 0x4

.field public static final WAKE_UP_REASON_UNKNOWN:I = 0x0

.field public static final WAKE_UP_REASON_WAKE_LOCK:I = 0xe


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mPatternPhoneNumber:Ljava/util/regex/Pattern;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroid/os/PowerManager;->mPattern:Ljava/util/regex/Pattern;

    .line 113
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroid/os/PowerManager;->mPatternPhoneNumber:Ljava/util/regex/Pattern;

    .line 550
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 551
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 552
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 553
    return-void
.end method

.method static synthetic access$000(Landroid/os/PowerManager;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Landroid/os/PowerManager;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/os/PowerManager;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/PowerManager;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Landroid/os/PowerManager;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/os/PowerManager;->mPatternPhoneNumber:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static useTwilightAdjustmentFeature()Z
    .locals 3

    .prologue
    .line 595
    const-string/jumbo v1, "persist.power.usetwilightadj"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 598
    .local v0, "useTwilightAdj":Z
    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 662
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :sswitch_0
    if-nez p1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    return-void

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public boostScreenBrightness(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentBrightness(Z)F
    .locals 2
    .param p1, "ratio"    # Z

    .prologue
    .line 1340
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->getCurrentBrightness(Z)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1342
    :goto_0
    return v1

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getDefaultScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMultipleScreenState()I
    .locals 2

    .prologue
    .line 1957
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getMultipleScreenState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1959
    :goto_0
    return v1

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public goToSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 766
    return-void
.end method

.method public goToSleep(JII)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAlpmMode()Z
    .locals 2

    .prologue
    .line 1931
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isAlpmMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1933
    :goto_0
    return v1

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceIdleMode()Z
    .locals 2

    .prologue
    .line 1076
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1078
    :goto_0
    return v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isForceUnblankDisplay()Z
    .locals 2

    .prologue
    .line 1844
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isForceUnblankDisplay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1846
    :goto_0
    return v1

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1088
    monitor-enter p0

    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v1, :cond_0

    .line 1090
    const-string v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1093
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1100
    :goto_0
    return v1

    .line 1093
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1096
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerManager"

    const-string v2, "exception in isIgnoringBatteryOptimizations. return false"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInteractive()Z
    .locals 2

    .prologue
    .line 1007
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1009
    :goto_0
    return v1

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerSaveMode()Z
    .locals 2

    .prologue
    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isPowerSaveMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1041
    :goto_0
    return v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 2

    .prologue
    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenBrightnessBoosted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 894
    :goto_0
    return v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 945
    :goto_0
    return v1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nap(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 657
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1024
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlpmMode(IIILandroid/os/IBinder;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "startLine"    # I
    .param p3, "endLine"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1918
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->setAlpmMode(IIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :goto_0
    return-void

    .line 1919
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlpmMode(ZIILandroid/os/IBinder;)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "startLine"    # I
    .param p3, "endLine"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1897
    if-eqz p1, :cond_0

    .line 1898
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/os/IPowerManager;->setAlpmMode(IIILandroid/os/IBinder;)V

    .line 1904
    :goto_0
    return-void

    .line 1900
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/os/IPowerManager;->setAlpmMode(IIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1902
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoBrightnessForEbookOnly(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1231
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAutoBrightnessForEbookOnly(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoBrightnessLimit(II)V
    .locals 1
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .prologue
    .line 1249
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setButtonBrightnessLimit(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1148
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setButtonBrightnessLimit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCameraMode(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2050
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setCameraMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    :goto_0
    return-void

    .line 2051
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setClearViewBrightnessMode(ZILandroid/os/IBinder;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "delayAfterRelease"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1276
    const/16 v0, 0x3e8

    if-le p2, v0, :cond_0

    .line 1277
    const/16 p2, 0x3e8

    .line 1279
    :cond_0
    if-gez p2, :cond_1

    .line 1280
    const/4 p2, 0x0

    .line 1282
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setClearViewBrightnessMode(ZILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setColorWeaknessMode(ZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1306
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setColorWeaknessMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCoverType(I)V
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 1392
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setCoverType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDozeOverrideFromAod(IIILandroid/os/IBinder;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1167
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->setDozeOverrideFromAod(IIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setForceUnblankDisplay(Z)V
    .locals 1
    .param p1, "unblank"    # Z

    .prologue
    .line 1831
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setForceUnblankDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    :goto_0
    return-void

    .line 1832
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHallstateForMultipleScreen(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1941
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setHallstateForMultipleScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    :goto_0
    return-void

    .line 1942
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1131
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setKeyboardVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLCDFlashMode(ZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "eanble"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1428
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_0
    return-void

    .line 1429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMarkerBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 929
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMasterBrightnessLimit(II)V
    .locals 1
    .param p1, "reserved"    # I
    .param p2, "upperLimit"    # I

    .prologue
    .line 1323
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setMasterBrightnessLimit(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMoodLightOff(II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "mode"    # I

    .prologue
    .line 2013
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->setSmartGlowOff(II)V

    .line 2014
    return-void
.end method

.method public setMoodLightState(I[I[I[II)V
    .locals 0
    .param p1, "ledno"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # [I
    .param p4, "offMs"    # [I
    .param p5, "mode"    # I

    .prologue
    .line 2039
    invoke-virtual/range {p0 .. p5}, Landroid/os/PowerManager;->setSmartGlowState(I[I[I[II)V

    .line 2040
    return-void
.end method

.method public setMultipleScreenStateOverride(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1987
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setMultipleScreenStateOverride(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    :goto_0
    return-void

    .line 1988
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1058
    :goto_0
    return v1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    .locals 1
    .param p1, "scaleFactor"    # F
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1357
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    :goto_0
    return-void

    .line 1358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSmartGlowOff(II)V
    .locals 15
    .param p1, "ledno"    # I
    .param p2, "mode"    # I

    .prologue
    .line 2001
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v1, p1

    move/from16 v14, p2

    invoke-interface/range {v0 .. v14}, Landroid/os/IPowerManager;->setSmartGlowState(IIIIIIIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    :goto_0
    return-void

    .line 2002
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSmartGlowState(I[I[I[II)V
    .locals 16
    .param p1, "ledno"    # I
    .param p2, "color"    # [I
    .param p3, "onMs"    # [I
    .param p4, "offMs"    # [I
    .param p5, "mode"    # I

    .prologue
    .line 2024
    move-object/from16 v0, p2

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v2, 0x1

    aget v4, p2, v2

    const/4 v2, 0x2

    aget v5, p2, v2

    const/4 v2, 0x3

    aget v6, p2, v2

    const/4 v2, 0x0

    aget v7, p3, v2

    const/4 v2, 0x1

    aget v8, p3, v2

    const/4 v2, 0x2

    aget v9, p3, v2

    const/4 v2, 0x3

    aget v10, p3, v2

    const/4 v2, 0x0

    aget v11, p4, v2

    const/4 v2, 0x1

    aget v12, p4, v2

    const/4 v2, 0x2

    aget v13, p4, v2

    const/4 v2, 0x3

    aget v14, p4, v2

    move/from16 v2, p1

    move/from16 v15, p5

    invoke-interface/range {v1 .. v15}, Landroid/os/IPowerManager;->setSmartGlowState(IIIIIIIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2028
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSubScreenState(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1973
    return-void
.end method

.method public shutdown(ZZ)V
    .locals 1
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    .line 1114
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchForceLcdBacklightOffState()V
    .locals 1

    .prologue
    .line 1410
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->switchForceLcdBacklightOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateCoverState(Z)V
    .locals 1
    .param p1, "closed"    # Z

    .prologue
    .line 1375
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->updateCoverState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JII)V
    .locals 1
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 708
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 710
    return-void

    :cond_0
    move v0, v1

    .line 708
    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const-string/jumbo v1, "wakeUp"

    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wakeUp(JI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 1569
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->wakeUpWithReason(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_0
    return-void

    .line 1570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wakeUp(JLjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 827
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    goto :goto_0
.end method
